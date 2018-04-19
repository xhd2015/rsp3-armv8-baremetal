/*
 * SDDriver.cpp
 *
 *  Created on: Mar 21, 2018
 *      Author: 13774
 */
#include <generic/cpu.h>
#include <generic_util.h>
#include <io/IntegerFormatter.h>
#include <io/Output.h>
#include <driver/sd/SDDriver.h>

bool SDDriver::init()
{
	_transferMode = bitOnes<0,1,4>();
	_capabilities=reg64<R::reg_capabilities>();
	_baseClockFreq = getBits(_capabilities, 8, 15)*1000000u;
	_cardInserted = bitsAnySet<16>(reg32<R::reg_presentstate>());
	if(!_cardInserted)
	{
		return false;
	}
	_hostControlVersion = getBits(reg16<R::reg_hostcontrollerver>(), 0, 7);
	if(_hostControlVersion == HC_VER_3)
	{
		reg8<R::reg_powercontrol>()=0x10u;
	}else{
		reg8<R::reg_powercontrol>()=0x0u;
	}
	const size_t delayTimes=1000*1000;
	delayCPU(delayTimes);


	// software reset for all
	reg8<R::reg_softwarereset>()=0x1u;
	while(bitsAnySet<0>(reg8<R::reg_softwarereset>()))
		;

	// 选择电压以及启用总线电源
	if(_hostControlVersion != HC_VER_3)
	{
		// D03-D01:0b111, 3v3
		// D00: 1=Power On
		reg8<R::reg_powercontrol>()= (0xEu | 0x1u);
	}else{
		kout <<FATAL << "designed for version 2 \n";
		return false;
	}
	//设置时钟400 KHz
	if(!clockFreq(400000u))
	{
		return false;
	}

	// 选择DMA的模式，设置LED，Speed
	reg8<R::reg_hostcontrol1>()= 0x00000018u;

	// 允许所有的中断状态
	reg16<R::reg_normalintrstsena>()=0x0000FFFFu & (~0x00000100u);
	reg16<R::reg_errorintrstsena>() = 0x0000F3FFu;

	// 禁用所有中断信号
	reg16<R::reg_normalintrsigena>() = 0x0;
	reg16<R::reg_errorintrsigena>() = 0x0;

	// 设置block的大小
	_blockSize = 512u;
	reg16<R::reg_blocksize>() = _blockSize;

	// 初始化slave，使其从idle状态进入standby状态
	if(_hostControlVersion!=HC_VER_3)
	{
		// 在发送第一条命令之前，等待足够长的时间
		delayCPU(delayTimes);

		// 发送 CMD0，使其从任意状态进入IDLE状态
		if(!transferCommand(CMD0, 0, 0))return false;
		// 发送CMD8,确认能够提供的电压
		// 0x1AA -- 2v7-3v6, AA is check pattern
		// 如果response=0x1AA,则SD卡版本是v2,否则是v1
		if(!transferCommand(CMD8, 0x1AAu, 0))return false;
		auto resp=reg32<R::reg_response0>();
		_cardVersion = (resp==0x1AA)?(SD_VER_2):(SD_VER_1);

		resp=0u;
		// 卡持续保持忙状态，持续发送ACMD41
		// while(card_power_up_is_busy) ,bit[31]=0==busy,1==complete
		while(bitsNonSet<31>(resp))
		{
			if(!transferCommand(CMD55, 0u, 0u))return false;
			if(!transferCommand(ACMD41, 0x40000000u | 0x00300000u | (0x1FFu<<15u), 0))return false;
			resp = reg32<R::reg_response0>();
		}

		// CMD2,读取card id
		if(!transferCommand(CMD2, 0, 0))return false;
		_cardID[0] = reg64<R::reg_response0>();
		_cardID[1] = reg64<R::reg_response0 + 4>();
		_cardID[2] = reg64<R::reg_response0 + 4*2>();
		_cardID[3] = reg64<R::reg_response0 + 4*3>();

		// 要求slave响应一个relativeCardAddr
		do{
			// CMD3 用于获取relativeCardAddr
			if(!transferCommand(CMD3, 0, 0))return false;
			_relativeCardAddr=reg32<R::reg_response0>() & 0xFFFF0000u;
		}while(_relativeCardAddr==0);


		// CMD9 获取 CardSpecData
		if(!transferCommand(SDDriver::CMD9, _relativeCardAddr, 0))return false;
		_cardSpecData.S0._data[0]=reg32<R::reg_response0>();
		_cardSpecData.S0._data[1]=reg32<R::reg_response0 + 4>();
		_cardSpecData.S0._data[2]=reg32<R::reg_response0 + 4*2>();
		_cardSpecData.S0._data[3]=reg32<R::reg_response0 + 4*3>();

		if(_cardSpecData.V1.csdVersion==0)
		{
			size_t mult= 1<<(_cardSpecData.V1.cSizeMult + 2);
			size_t blocknr=(_cardSpecData.V1.deviceSize+1) * mult;
			size_t blocklen=1<<(_cardSpecData.V1.readBlLen);
			_secCount = blocklen * blocknr / 512;
		}else{
			kout << FATAL << "not handle csdVersion!=0\n";
			return false;
		}

		// 发送CMD7选择卡，然后进入transfer_state状态
		if(!transferCommand(CMD7, _relativeCardAddr, 0))return false;

	}else{
		kout << FATAL << "init for HC_VER_3 currently not supported\n";
		return false;
	}

	return true;
}
void SDDriver::resetController()
{
	auto & resetreg=reg<uint8_t,reg_softwarereset>();
	resetreg &= 0b1;
	while(resetreg); // until 0
}


SDDriver::CommandStatus     SDDriver::clockFreq(uint32_t newFreq)
{
	// 禁用clock
	auto clk=reg16<R::reg_clockcontrol>();
	clk &= ~(0x4u | 0x1u);
	reg16<R::reg_clockcontrol>()=clk;

	uint16_t divCnt;
	uint16_t divisor=0u;
	if(_hostControlVersion!=HC_VER_3)
	{
		// 计算除数
		divCnt=0x1u;
		while(divCnt <= 256u)
		{
			if(_baseClockFreq/divCnt <= newFreq)
			{
				divisor = divCnt/2u;
				break;
			}
			divCnt = divCnt << 1u;
		}
		if(divCnt > 256u)
			return false;//failed
	}

	// 设置时钟divisor
	if(_hostControlVersion!=HC_VER_3)
	{
		clk = reg16<R::reg_clockcontrol>();
		clk &= (~0xff00u);
		divisor = (divisor << 8u);
		divisor &= 0xff00u;

		clk |= (divisor | 0x1u);
		reg16<R::reg_clockcontrol>()=clk;
	}

	// 等待直到内部时钟稳定
	while( (reg16<R::reg_clockcontrol>() & 0x2u) == 0)
		;

	// 启用时钟
	clk = reg16<R::reg_clockcontrol>();
	reg16<R::reg_clockcontrol>() = clk | 0x4u;

	return true;
}

uint32_t SDDriver::frameCommand(uint32_t cmd)const
{
	uint32_t retVal = cmd;
	switch(cmd) {
			case CMD0:
				retVal |= RESP_NONE;
			break;
			case CMD1:
				retVal |= RESP_R3;
			break;
			case CMD2:
				retVal |= RESP_R2;
			break;
			case CMD3:
				retVal |= RESP_R6;
			break;
			case CMD4:
				retVal |= RESP_NONE;
				break;
			case CMD5:
				retVal |= RESP_R1B;
			break;
			case CMD6:
				if (_cardType == XSDPS_CARD_SD) {
					retVal |= RESP_R1 | static_cast<uint32_t>(XSDPS_DAT_PRESENT_SEL_MASK);
				} else {
					retVal |= RESP_R1B;
				}
				break;
			case ACMD6:
				retVal |= RESP_R1;
			break;
			case CMD7:
				retVal |= RESP_R1;
			break;
			case CMD8:
				if (_cardType == XSDPS_CARD_SD) {
					retVal |= RESP_R1;
				} else {
					retVal |= RESP_R1 | static_cast<uint32_t>(XSDPS_DAT_PRESENT_SEL_MASK);
				}
				break;
			case CMD9:
				retVal |= RESP_R2;
			break;
			case CMD11:
			case CMD10:
			case CMD12:
			case CMD13:
			case ACMD13:
			case CMD16:
				retVal |= RESP_R1;
			break;
			case CMD17:
			case CMD18:
			case CMD19:
			case CMD21:
				retVal |= RESP_R1 | static_cast<uint32_t>(XSDPS_DAT_PRESENT_SEL_MASK);
			break;
			case CMD23:
			case ACMD23:
			case CMD24:
			case CMD25:
				retVal |= RESP_R1 | static_cast<uint32_t>(XSDPS_DAT_PRESENT_SEL_MASK);
			break;
			case ACMD41:
				retVal |= RESP_R3;
			break;
			case ACMD42:
				retVal |= RESP_R1;
			break;
			case ACMD51:
				retVal |= RESP_R1 | static_cast<uint32_t>(XSDPS_DAT_PRESENT_SEL_MASK);
			break;
			case CMD52:
			case CMD55:
				retVal |= RESP_R1;
			break;
			case CMD58:
			break;
			default :
				retVal |= cmd;
			break;
			}

			return retVal;
}

SDDriver::CommandStatus     SDDriver::transferCommand(uint32_t cmd,uint32_t arg,uint32_t blckCnt)
{
	auto & presentReg = reg<uint32_t,reg_presentstate>();
	CommandStatus status;
	if( (presentReg & 0x1)!=0U) // !=0
		return status=false;

	reg<uint32_t,reg_blockcount>()=static_cast<uint16_t>(blckCnt);
	reg<uint8_t,reg_timeoutcontrol>()=0xEU;
	reg<uint32_t,reg_argument1lo>()=arg;
	reg<uint16_t,reg_normalintrsts>()=0x0000FFFFu;
	reg<uint16_t,reg_errorintrsts>()=0x0000F3FFu;

	auto framedCmd = frameCommand(cmd) & 0x3FFFu;

	if( (cmd != CMD21) && (cmd!=CMD19)){
		auto tempPstate=presentReg;
		if(((tempPstate & 0x2u)!= 0U) &&
				((framedCmd & 0x20u)!=0U))
			return false;
	}

	reg<uint32_t,reg_transfermode>() = (framedCmd << 16)|_transferMode;



	/* Polling for response for now */
	auto& statusReg = reg<uint16_t,reg_normalintrsts>();
	uint16_t  tempStatus=0;
	do{
		tempStatus=statusReg;
		if((cmd==CMD21) || (cmd==CMD19))
		{
			if((statusReg & 0x20) != 0U)
			{
				statusReg = 0x20;
			}
			break;
		}
		if((tempStatus & 0x20u)!=0U) // has data ready
		{
			status = statusReg;
			if((static_cast<int32_t>(status) & ~0x1u)==0) // has other status
			{
				status = 0x2u; // temp status2,error
			}
			/* Write to clear error bits */
			statusReg = 0x0000F3FFu;
			return status=true; // TODO: we now thing this is right
		}

	}while( (tempStatus & 0x1u) ==0U);

	reg<uint16_t,reg_normalintrsts>()=0x1u;

	return status=true;
}

size_t   SDDriver::readSingleBlockNoDMA(size_t startSec,void * buffer)
{
	clearIntErrStatus();
	auto oriMode=_transferMode;
	_transferMode = bitOnes<4>();
	// read single block
	if(!transferCommand(CMD17, startSec, 1))
	{
		_transferMode=oriMode;
		return 0;
	}
//	SDCardStatus{reg32<R::reg_response0>()}.dump();


	// 将Buffer Read Ready清除掉
	reg16<R::reg_normalintrsts>() = bitOnes<5>();

	// 读取一个扇区的数据直到完成
	size_t readBytesPer = 4;
	auto typedBuffer = reinterpret_cast<uint32_t*>(buffer);
	size_t nitems=_blockSize/readBytesPer;
	for(size_t i=0;i<nitems;++i)
	{
		typedBuffer[i] = reg32<R::reg_dataport>();
	}

	// UPDATE: 发送CMD12是没有必要的，会引起内部状态的错误。
	// 如果没有设置AUTO CMD12，则手动发送
	// 发送STOP
//	if(!transferCommand(CMD12, 0, 0))return 0;



	// 等待传输完成
	while(bitsNonSet<1>(reg16<R::reg_normalintrsts>()))
		;
	// 清除该位
	reg16<R::reg_normalintrsts>()=bitOnes<1>();

	return 1;
}

/**
 * 实现与图表稍微有区别，主要是初次读时，Buffer Read Ready状态可能没有设置
 * @param startSec
 * @param blocks
 * @param buffer
 * @return
 */
size_t    SDDriver::readBlocksNoDMA(size_t startSec,size_t blocks,void * buffer)
{
	clearIntErrStatus();
	auto oriMode=_transferMode;
	_transferMode = bitOnes<1,4,5>();
	if(!transferCommand(CMD18, startSec, blocks))
	{
		_transferMode=oriMode;
		return 0;
	}
	// 读取一个扇区的数据直到完成
	size_t readBytesPer = 4;
	auto typedBuffer = reinterpret_cast<uint32_t*>(buffer);
	size_t nitems= _blockSize/readBytesPer;
	auto p=typedBuffer;
	for(size_t blk=0;blk!=blocks;++blk)
	{

		// 读和写稍微有点区别，初次读可能没有设置Buffer Read Ready状态
		if(blk>0)
		{
			// 等待ready
			while(bitsNonSet<5>(reg16<R::reg_normalintrsts>()))
				;
		}
		reg16<R::reg_normalintrsts>() = bitOnes<5>();
		for(size_t i=0;i<nitems;++i,++p)
		{
			*p = reg32<R::reg_dataport>();
//			kout << "blk = " << blk << ", i = " << i << ", intstatus="<<Hex(reg16<R::reg_normalintrsts>() ) << "\n";

		}
	}
	// 等待传输完成
//	uint16_t dbg;
	while(bitsNonSet<1>(reg16<R::reg_normalintrsts>()))
		;
	// 清除该位
	reg16<R::reg_normalintrsts>()=bitOnes<1>();

	return blocks;
}

size_t    SDDriver::writeSingleBlockNoDMA(size_t startSec,const void *buffer)
{
	clearIntErrStatus();
	auto oriMode=_transferMode;
	_transferMode = 0;

	// write single block
	if(!transferCommand(CMD24, startSec, 1))
	{
		_transferMode = oriMode;
		return 0;
	}
//	SDCardStatus{reg32<R::reg_response0>()}.dump();

	// 等待直到数据可写入
	while(bitsNonSet<4>(reg16<R::reg_normalintrsts>()))
		;
	// 清除
	reg16<R::reg_normalintrsts>() = bitOnes<4>();

	// 写入一个扇区的数据直到完成
	size_t writeBytesPer = 4;
	auto typedBuffer = reinterpret_cast<const uint32_t*>(buffer);
	size_t nitems=_blockSize/writeBytesPer;
	for(size_t i=0;i<nitems;++i)
	{
		 reg32<R::reg_dataport>() = typedBuffer[i];
	}

	// 等待传输完成
	while(bitsNonSet<1>(reg16<R::reg_normalintrsts>()))
		;
	// 清除该位
	reg16<R::reg_normalintrsts>()=bitOnes<1>();

	return 1;
}

/**
 * 参考 misc\external\mmc\xilinx_sd_read_write\NonDMA_Data_Transaction_3.png
 * 注意，在QEMU下，当写入多个扇区时，必须保证物理文件具有blocks个扇区，否则可能产生TimeOutError
 * @param startSec
 * @param blocks
 * @param buffer
 * @return
 */
size_t    SDDriver::writeBlocksNoDMA(size_t startSec,size_t blocks,const void *buffer)
{
	clearIntErrStatus();
	auto oriMode=_transferMode;
	_transferMode = bitOnes<1,2,5>();

	// 写入多个块
	if(!transferCommand(CMD25, startSec, blocks))
	{
		_transferMode = oriMode;
		return 0;
	}
//	SDCardStatus{reg32<R::reg_response0>()}.dump();

	size_t writeBytesPer = 4;
	auto typedBuffer = reinterpret_cast<const uint32_t*>(buffer);
	size_t nitems=_blockSize/writeBytesPer;
	auto p = typedBuffer;
	for(size_t blk=0;blk<blocks;++blk)
	{
		// 等待直到数据可写入
		while(bitsNonSet<4>(reg16<R::reg_normalintrsts>()))
			;
		// 清除
		reg16<R::reg_normalintrsts>() = bitOnes<4>();

		for(size_t i=0;i<nitems;++i,++p)
		{
			reg32<R::reg_dataport>() = *p;
//			kout << "blk = " << blk << ", i = " << i << ", intstatus="<<Hex(reg16<R::reg_normalintrsts>() ) << "\n";
		}
	}

	// 等待本次传输完成
	while(bitsNonSet<1>(reg16<R::reg_normalintrsts>()))
			;
	reg16<R::reg_normalintrsts>()=bitOnes<1>();

	// not necesarry
//	if(!transferCommand(CMD12, 0, 0)){_transferMode=oriMode;return 0;}

	return blocks;
}

SDCardStatus  SDDriver::cardStatus()
{
	if(!transferCommand(CMD13, _relativeCardAddr, 0))return 0;
	return reg32<R::reg_response0>();
}


