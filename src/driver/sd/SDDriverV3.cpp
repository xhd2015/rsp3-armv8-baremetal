/*
 * SDDriverV3.cpp
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */



#include <driver/sd/SDDriverV3.h>
#include <io/Output.h>
#include <io/IntegerFormatter.h>
#include <generic/cpu.h>
#include <generic/error.h>

int SDDriverV3::init()
{
	kout << INFO << "SDDriver init\n";
	// 重置
	int status=reset();
	if(status!=0)
		return status;
	setBit(reg16(CLOCK_CTRL),0,1);
	setBits(reg8(TIMEOUT_CTRL),0,3,0b1110);//max timeout
	delayMS(10);

	_capabilities = reg64(CAPABILITIES);
	_hcver = static_cast<HCVersion>(reg16(HOST_CTRL_VER) & 0xff);

	// 允许所有的中断状态，同时清除状态位
	reg16(ERR_INT_EN)=0xFFFF;
	reg16(NORM_INT_EN)=0xFFFF;
	clearNormErrInt();

	kout << "version=" << (_hcver+1) << "\n";
	kout << "cap = " << Hex(_capabilities) << "\n";
	return 0;
}

int SDDriverV3::reset()
{
	kout << INFO << "SD reset \n";
	reg32(HOST_CTRL1)=0;
	softwareResetAll();
	return 0;
}
/**
 * Implementation Note:
 * The Host Driver can issue CMD0, CMD12, CMD13 (for memory) and CMD52 (for SDIO)
 *  when the DAT lines are busy during data transfer. These commands can be issued
 *  when Command  Inhibit  (CMD) is set to zero.
 *  Other commands shall be issued when Command Inhibit (DAT) is set to zero.
 *  Possible  changes  to  the  Physical  Layer  Specification  may  add  other
 *  commands  to  this  list  in  the  future.
 * @param cmd
 * @param arg
 * @param waitMS
 * @return
 */
int SDDriverV3::sendCommand(Command cmd,uint32_t arg,uint32_t waitMS)
{
	auto rtp=static_cast<RespType>(getBits(cmd,16,20));
	kout << INFO
			<< "SD sending command : " << getBits(cmd,24,29) << ","
			<< "response tpye:" << responseTypeString(rtp) << ","
			<< "arg1 = " << Hex(arg)
			<< "\n";
//	if(cmd==Command::SELECT_DESELECT_CARD)
//	{
//		if(cmdBusy()) { kout << FATAL << "busy\n";return 1;}
//		auto temp=reg32(NORM_INT_STATUS);
//		reg32(NORM_INT_STATUS)=temp;
//		reg32(ARG1)=arg;
//		reg32(CMD_TRANS)=cmd;
//		while(!lastCommandCompleted());
//		auto r=reg32(RESP);
//		(void)r;
//		return 0;
//	}
	if(cmdBusy())
	{
		kout << INFO << "SD CMD line busy,wait on...\n";
		while(waitMS>=10 && cmdBusy()){ waitMS-=10;delayMS(10);}
		if(cmdBusy())
		{
			kout << FATAL << "SD CMD busy timeout\n";
			return 1;
		}
	}
	// TODO 增加abort command的支持
	if(commandUsesDAT(cmd) && dataBusy())
	{
		kout << INFO << "SD DAT line busy,wait on...\n";
		while(waitMS>=10 && dataBusy()){waitMS-=10;delayMS(10);}
		if(dataBusy())
		{
			kout << FATAL <<"SD DAT line busy timeout\n";
			return 1;
		}
	}
	clearNormErrInt();// FIXME 测试清除顺序对 NormInt高位有无影响

	reg32(ARG1)=arg;
	reg32(CMD_TRANS)=cmd;
	extern void wait_msec(unsigned int n);
	// FIXME 这里可不可以没有延迟？
	// NOTE 这里延迟太重要了，我可以说，因为没有写这条延迟语句，我调试了10+小时
	//      实际硬件还是太难受了
	wait_msec(1000);

	// complete sequence
	while(!lastCommandCompleted())
	{
		kout << INFO << "SD Waiting command complete, left ms=" << waitMS << "\n";
		dumpStatus();
		delayMS(10);
		if(waitMS<10)
			break;
		waitMS-=10;
	}
	if(!lastCommandCompleted())
	{
		kout << FATAL << "SD command timeout\n";
		return 1;
	}
	completeLastCommand();
	// 清除commandcomplete
//	completeLastCommand();
	// 在command complete的情况下，可以忽略command timeout
	// FIXME 这里不应当清除某位，因为可能引起其他位的变化
//	setBit(reg16(ERR_INT_STATUS),0,1);
//	if(commandNeedsTransferComplete(cmd, rtp))
//	{
//		while(waitMS>=10 && !lastTransferCompleted()) { waitMS-=10;delayMS(10);dumpStatus();}
//		if(!lastTransferCompleted())
//		{
//			kout << FATAL << "SD Transfer complete failed/DAT timedout\n";
//			return 1;
//		}
//		completeLastTransfer();
		// transfer complete优先级比data timeout优先级高
//		if(lastTransferCompleted())
//			setBit(reg16(ERR_INT_STATUS),4,1);
//	}
	// 不要对原寄存器直接操作
//	uint16_t err=reg16(ERR_INT_STATUS);
//	setBit(err,0,0);// 清除
//	if(lastTransferCompleted())
//		setBit(err,4,0);
//	if(err)//any bit set,error response
//	{
//		kout << WARNING << "SD commmand has error\n";
//		kout << "ERROR state is " << Hex(err) << "\n";
//		return 1;
//	}
	return 0;
}

int SDDriverV3::sendAppCommand(Command cmd,uint32_t arg,uint32_t waitMS)
{
	auto status=sendCommand(SDDefinitions::APP, _rca,waitMS);
	if(status!=0)
	{
		kout << FATAL << "SD failed to send APP prefix command(CMD55)\n";
		return status;
	}
	return sendCommand(cmd,arg,waitMS);
}
bool SDDriverV3::commandUsesDAT(Command cmd)
{
	return (cmd!=Command::CMD0 && cmd!=Command::CMD12 &&
			cmd!=Command::CMD13 && cmd!=Command::CMD52);
}

bool SDDriverV3::commandNeedsTransferComplete(Command cmd,RespType type)
{
	if(type==RespType::R1b||type==RespType::R5b)//busy command needs
		return true;
	if(cmd==Command::READ_MULTIPLE_BLOCK|| //write,read
			cmd==Command::READ_SINGLE_BLOCK ||
			cmd==Command::WRITE_MULTIPLE_BLOCK ||
			cmd==Command::WRITE_SINGLE_BLOCK
			)
		return true;
	return false;
}

void SDDriverV3::softwareResetAll()
{
	setBit(reg8(SOFTWARE_RESET),0,1);
	while(bitsAnySet<0>(reg8(SOFTWARE_RESET)));
}
void SDDriverV3::softwareResetCMD()
{
	setBit(reg8(SOFTWARE_RESET),1,1);
	while(bitsAnySet<1>(reg8(SOFTWARE_RESET)));
}
void SDDriverV3::softwareResetDAT()
{
	setBit(reg8(SOFTWARE_RESET),2,1);
	while(bitsAnySet<2>(reg8(SOFTWARE_RESET)));
}
const char*  SDDriverV3::responseTypeString(RespType r)const
{
	switch(r)
	{
	case RespType::R_NONE:
		return "NONE";
		break;
	case RespType::R2:
		return "R2";
		break;
	case RespType::R3:
		return "R3 or R4";
		break;
	case RespType::R1:
		return "R1,R5,R6 or R7";
		break;
	case RespType::R1b:
		return "R1b or R5b";
		break;
	default:
		return "Unknown";
	}
}

// 技术手册3.0 page111
int  SDDriverV3::transferBlocks(uint32_t blockAddr,size_t num,void *readBuf,const void *writeBuf)
{
	kout << INFO << "SD "<< (readBuf?"ReadBlocks":"WriteBlocks")<< ", blockAddr=" << Hex(blockAddr) << ",num="<<num << "\n";
	if(num==0)return 0;
	assert(_blockSize==512);

	// FIXME _blockSize应当是512
	reg16(BLOCK_SIZE)=_blockSize;
	reg16(BLOCK_COUNT)=num;
	int status=0;
	if(_sdsc_or_sdxc==0)//sdsc,需要SET_BLOCKLEN, 地址需要调整
	{
		uint64_t temp=static_cast<uint64_t>(blockAddr) * _blockSize;
		if(temp > UINT32_MAX) // 是否溢出
		{
			kout << FATAL << "SD SDSC mode,block addr to byte addr overflows\n";
			return 0;
		}
		blockAddr=static_cast<uint32_t>(temp);
		status=sendCommand(Command::SET_BLOCKLEN, _blockSize);// sdsc中影响所有的读写
		if(status!=0)
			return 0;
	}
	if(num==1)//single
	{
		if(readBuf)
			status=sendCommand(Command::READ_SINGLE_BLOCK, blockAddr);
		else
			status=sendCommand(Command::WRITE_SINGLE_BLOCK,  blockAddr);
	}else{
		status=sendCommand(Command::SET_BLOCK_COUNT,num);
		if(status!=0)
			return 0;
		if(readBuf)
			status=sendCommand(Command::READ_MULTIPLE_BLOCK, blockAddr);
		else
			status=sendCommand(Command::WRITE_MULTIPLE_BLOCK, blockAddr);
	}
	// complete last command
	// 不检测传输错误
	// FIXME 注意，如果这里不注释掉，第一个bufferReadReady就会一直等待。
	// 而技术手册上写明需要clear Command Complete, 也就是说，在发送完成后，Command Complete Int应当保留
//	completeLastCommand();
//	completeLastTransfer();
	// BUGFIX  下面两行调试展示了原因：当写入完成位后，readReady位也被清除。（此时就可以开始写了）
//	dumpStatus();
//	completeLastCommand();
//	clearErrInt();
//	dumpStatus();
	if(readBuf)//read
	{
		uint32_t * readPtr=reinterpret_cast<uint32_t*>(readBuf);
		for(size_t n=0;n!=num;++n)
		{
			kout << INFO << "SD reading block:" << n << "\n";
//			if(n>0) // qemu 模拟器上似乎需要这个判断，否则失败
			while(!bufferReadReady());
			clearReadReady();
			for(size_t i=0;i!= _blockSize/sizeof(*readPtr);++i)
				*readPtr++=reg32(BUFF_DATA_PORT);
		}
	}else{
		const uint32_t *writePtr=reinterpret_cast<const uint32_t*>(writeBuf);
		for(size_t n=0;n!=num;++n)
		{
			kout << INFO << "SD writing block:" << n << "\n";
			while(!bufferWriteReady());
			clearWriteReady();
			for(size_t i=0;i!= _blockSize/sizeof(*writePtr);++i)
				reg32(BUFF_DATA_PORT)=*writePtr++;
		}
	}

	while(!lastTransferCompleted());
	completeLastTransfer();
	return num;
}
uint32_t SDDriverV3::getAnyRCA()
{
	int status=0;
	while(true)
	{
		status=sendCommand(Command::SEND_RELATIVE_ADDR,0);
		if(status!=0)
			return 0;
		auto rca=response();
		if(rca!=0)
			return rca&0xFFFF0000;
	}
	return 0;
}

int     SDDriverV3::setRCA(uint32_t rca)
{
	kout << INFO << "SD set RCA " << Hex(rca) << "\n";
	int status=0;
	status=sendCommand(Command::SELECT_DESELECT_CARD, rca);
//	while(t-- && (status=sendCommand(Command::SELECT_DESELECT_CARD, rca&0xFFFF0000,100))!=0)
//	{
////		softwareResetDAT();
//	}
	if(status!=0)
		return status;
	uint32_t ms=1000;
	while(ms-- && !lastTransferCompleted()) delayMS(1);//等待完成
	if(!lastTransferCompleted()) // 超时，重试
		return 1;
	completeLastTransfer();
	_rca=rca;
	return 0;
}
// 如果需要检测卡，即中断的产生，则启用insert和removal中断
//	/**
//	 * 启用检测卡的中断
//	 * 清除中断状态
//	 * 检测present state
//	 * @return
//	 */
//bool    SDDriverV3::cardInserted()const
//{
//	setBit(reg16(NORM_INT_EN),6,1);
//	setBit(reg16(NORM_INT_STATUS),6,1);//清除
//	return getBit(reg32(PRESENT_STATE),16);
//}
// FIXME 为什么 wait_sec可以，delayMS不可以？
void wait_msec(unsigned int n);
void    SDDriverV3::setSDClockFreq(size_t freq)
{

	kout << INFO << "SD setting clock freq to " << freq << "\n";
	while(busy());
	stopSDClock(true);
	wait_msec(10);
//	delayMS(10);
	if(baseSDCardFreq()==0)
	{
		uint32_t d=clockDivisorForEMMC(freq);
		kout << INFO << "SD calculate divisor using EMMC method, divisor="
					<< Hex(d)<<"\n";
		reg16(CLOCK_CTRL) = (reg16(CLOCK_CTRL)&0x003f) | d;
		wait_msec(10);
	}else{
		setBits(reg16(CLOCK_CTRL),8,15, clockDivisor(freq));
		wait_msec(10);
	}
	stopSDClock(false);
	wait_msec(10);
	while(bitsNonSet<1>(reg16(CLOCK_CTRL)));//wait stable
}

uint8_t SDDriverV3::clockDivisor(size_t targetFreq)const
{
	auto base=baseSDCardFreq();
	if(base==0)
	{
		return 0;
	}
	uint8_t divisor=1;
	while(divisor<=0x80)//最大值
	{
		base /= (divisor<<1);
		if(base <= targetFreq)
			return divisor;
		divisor <<= 1;
	}
	// still cannot get
	kout << FATAL << "failed to calculate sd clock,returns 0\n";
	return 0;
}
// FIXME 找到该方法的来源（在capabilities=0的情况下），应当查阅EMMC4.4的文档，但是没有找到
uint32_t SDDriverV3::clockDivisorForEMMC(uint32_t freq)const
{
	uint32_t d,c=41666666/freq,x,s=32,h=0;
    x=c-1; if(!x) s=0; else {
        if(!(x & 0xffff0000u)) { x <<= 16; s -= 16; }
        if(!(x & 0xff000000u)) { x <<= 8;  s -= 8; }
        if(!(x & 0xf0000000u)) { x <<= 4;  s -= 4; }
        if(!(x & 0xc0000000u)) { x <<= 2;  s -= 2; }
        if(!(x & 0x80000000u)) { x <<= 1;  s -= 1; }
        if(s>0) s--;
        if(s>7) s=7;
    }
    if(_hcver>V_2)
    	d=c;
    else
    	d=(1<<s);
    if(d<=2)
    {
    	d=2;
    	s=0;
    }
    if(_hcver>V_2)
    	h=(d&0x300)>>2;
    d=(((d&0x0ff)<<8)|h);
    return d;
}

void    SDDriverV3::stopSDClock(bool stop)
{
	if(stop)
		while(busy());
	setBit(reg16(CLOCK_CTRL),2,!stop);
	delayMS(10);
}

SDDriverV3::VoltageSel SDDriverV3::maxSupportVoltage()const
{
	if(bitsAnySet<24>(_capabilities))
		return _3V3;
	else if(bitsAnySet<25>(_capabilities))
		return _3V0;
	else
		return _1V8;
}
void       SDDriverV3::setVoltage()
{
	auto max=maxSupportVoltage();
	(void)max;
}
void    SDDriverV3::dumpStatus()const
{
	kout << INFO << "SD dumpStatus\n";
	kout << "NORM_INT_STATUS = " << Hex(reg16(NORM_INT_STATUS)) << "\n";
	kout << "ERR_INT_STATUS = " << Hex(reg16(ERR_INT_STATUS)) << "\n";
	kout << "PRESENT_STATE = " << Hex(reg32(PRESENT_STATE)) << "\n";
}
