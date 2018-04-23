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
	setBit(reg16(CLOCK_CTRL),0,1); // stop clock supply
	setBits(reg8(TIMEOUT_CTRL),0,3,0b1110);//max timeout
	delayMS(10);

	_capabilities = reg64(CAPABILITIES);
	_hcver = static_cast<HCVersion>(reg16(HOST_CTRL_VER) & 0xff);
	kout << "version=" << (_hcver+1) << "\n";
	kout << "cap = " << Hex(_capabilities) << "\n";

	// 允许所有的中断状态，同时清除状态位
	reg16(ERR_INT_EN)=0xFFFF;
	reg16(NORM_INT_EN)=0xFFFF;
	// FIXME 这里不允许产生中断
	setBit(reg16(NORM_INT_EN),8,0);//card interrupt
	clearNormErrInt();
//#define _DELAY delayMS(1000);
#define _DELAY
	setSDClockFreq(400000);
	status=sendCommand(Command::IDLE,0);
	_DELAY
	if(status!=0)
		return status;
	uint32_t pattern = 0x1AA; // lower bits=echo pattern, upper 4bits for VHS
	kout << "pattern = " << Hex(pattern) << "\n";
//	while(true) // FIXME 恢复原来的CMD8
	status=sendCommand(Command::SEND_IF_COND,pattern,1000);
	_DELAY
	if(status!=0)
		return initLegacyCard();
	if(response()!=pattern)
	{
		kout << FATAL << "SD Card is unusable because of wrong echo\n";
		return 1;
	}
	status = powerUpSDCard();
	_DELAY
	if(status!=0)
		return status;
	if(_ocr._sdsc_or_sdhc_sdxc==1) // SDXC needs siwtch 1.8v?
	{
		// 暂时不进行switch操作 ,因为总是failed
//		status=signalVoltageSwitch();
//		if(status!=0)
//			return status;
	}

	status=sendCommand(Command::ALL_SEND_CID, 0);
	_DELAY
	if(status!=0)
	{
		kout << FATAL << "SD card respond CID failed\n";
		return status;
	}
	_cid = SDCardIdentification::make(response());
	_cid.dump();

	auto rca=getAnyRCA();
	if(rca==0)
	{
		kout << FATAL << "SD Card does not send valid RCA\n";
		return 1;
	}
	status=setRCA(rca);
	if(status!=0)
		return status;

	setSDClockFreq(25000000);// set to max
	return 0;
}

int SDDriverV3::reset()
{
	kout << INFO << "SD reset \n";
	reg32(HOST_CTRL1)=0;
	softwareResetAll();
	return 0;
}
int SDDriverV3::powerUpSDCard()
{
	// 根据技术手册的说明，设置VoltageWindow=0可以获取OCR响应， 只有首次响应OK后才能
	//  发送后续的初始化命令
	kout << INFO << "SD power up sdcard using SEND_OP_COND(ACMD41)\n";
	int status = sendAppCommand(Command::APP_SEND_OP_COND,0);
	if(status!=0)
	{
		kout << FATAL << "SD get OCR failed\n";
		return 1;
	}
	uint32_t opcond=SDDefinitions::makeACMD41Arg(0xFF8000, true, true, true);
	kout << INFO << "SD OP cond = " << Hex(opcond) <<"\n";

	uint32_t msWait=1000;//等待至多1s
	uint32_t delayInterv=50;//每两次检测之间的间隔至多是50ms
	while(true)
	{
		status=sendAppCommand(Command::APP_SEND_OP_COND, opcond);
		if(status!=0)
		{
			kout << FATAL << "SD Send OP Cond failed\n";
			return 1;
		}
		_ocr=SDCardOperationCond::make(response());
		if(msWait <delayInterv || _ocr._powerUpDone)
			break;
		delayMS(delayInterv);
		msWait-=delayInterv;
	}
	if(!_ocr._powerUpDone)
	{
		kout << FATAL << "SD keeps busy,power on timeout/failed\n";
		return 1;
	}
	kout << INFO << "SD Type = " << (_ocr._sdsc_or_sdhc_sdxc?"SDHC/SDXC":"SDSC") << "\n";
	return 0;
}
// 目前不支持legacy card，太老了
int SDDriverV3::initLegacyCard()
{
	kout << INFO << "SD init legacy card\n";
	return 1;
}

int SDDriverV3::signalVoltageSwitch()
{
	kout << INFO << "SD signal voltage switch to 1.8v\n";
	if(!_ocr._switch1v8Accepted)
		return 0;
	auto status=sendCommand(Command::VOLTAGE_SWITCH_1V8, 0);
	do{
		if(status!=0)
			break;
		stopSDClock(true);
		if(getBits(reg32(PRESENT_STATE),20,23)!=0b0000)
			break;
		setBit(reg16(HOST_CTRL2),3,1);
		delayMS(5);//等待5ms
		if(bitsNonSet<3>(reg16(HOST_CTRL2)))
			break;
		stopSDClock(false);
		delayMS(1);//等待1ms
		if(getBits(reg32(PRESENT_STATE),20,23)!=0b1111)
			break;
		return 0;
	}while(false);//为了使用break语句
	// 停止供电,应当尝试重新初始化，且不要支持1.8v
	kout << FATAL <<"switch to 1.8v failed,try init agian\n";
	setBit(reg8(POWER_CTRL),0,0);
	return 1;
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
			<< "response type:" << responseTypeString(rtp) << ","
			<< "arg1 = " << Hex(arg)
			<< "\n";
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
	// _FIXME 这里可不可以没有延迟？ NOTE 不能没有延迟，延迟1000us，如果有性能上的要求，根据各个命令进行单独的delay
	// NOTE 这里延迟太重要了，我可以说，因为没有写这条延迟语句，我调试了10+小时
	//      实际硬件还是太难受了
	delayUS(1000);
//	delayMS(1000);

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
	// 在command complete的情况下，可以忽略command timeout
	reg16(ERR_INT_STATUS)=bitOnes<0>();
	if(commandNeedsTransferComplete(cmd, rtp))
	{
		while(waitMS>=10 && !lastTransferCompleted()) { waitMS-=10;delayMS(10);dumpStatus();}
		if(!lastTransferCompleted())
		{
			kout << FATAL << "SD Transfer complete failed/DAT timedout\n";
			return 1;
		}
		completeLastTransfer();
		// transfer complete优先级比data timeout优先级高
		reg16(ERR_INT_STATUS)=bitOnes<4>();
	}
	if(reg16(ERR_INT_STATUS))//any bit set,error response
	{
		kout << WARNING << "SD commmand has error\n";
		kout << "ERROR state is " << Hex(reg16(ERR_INT_STATUS)) << "\n";
		return 1;
	}
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
	// 这些命令只有在读写完成后才需要TransferComplete
//	if(cmd==Command::READ_MULTIPLE_BLOCK|| //write,read
//			cmd==Command::READ_SINGLE_BLOCK ||
//			cmd==Command::WRITE_MULTIPLE_BLOCK ||
//			cmd==Command::WRITE_SINGLE_BLOCK
//			)
//		return true;
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
const char*  SDDriverV3::responseTypeString(SDDriverV3::RespType r)const
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
size_t  SDDriverV3::transferBlocks(uint32_t blockAddr,size_t num,void *readBuf,const void *writeBuf)
{
	kout << INFO << "SD "<< (readBuf?"ReadBlocks":"WriteBlocks")<< ", blockAddr=" << Hex(blockAddr) << ",num="<<num << "\n";
	if(num==0)return 0;
	assert(_blockSize==512);

	// FIXME _blockSize应当是512
	reg16(BLOCK_SIZE)=_blockSize;
	reg16(BLOCK_COUNT)=num;
	int status=0;
	if(_ocr._sdsc_or_sdhc_sdxc==0)//sdsc,需要SET_BLOCKLEN, 地址需要调整
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
	if(status!=0)
	{
		kout << FATAL << "SD Transfer Block failed sending command\n";
		return 0;
	}
	if(readBuf)//read
	{
		uint32_t * readPtr=reinterpret_cast<uint32_t*>(readBuf);
		for(size_t n=0;n!=num;++n)
		{
//			kout << INFO << "SD reading block:" << n << "...";
//			if(n>0) // qemu 模拟器上似乎需要这个判断，否则失败
			while(!bufferReadReady());
			clearReadReady();
			for(size_t i=0;i!= _blockSize/sizeof(*readPtr);++i)
				*readPtr++=reg32(BUFF_DATA_PORT);
//			kout << "finished\n";
		}
	}else{
		const uint32_t *writePtr=reinterpret_cast<const uint32_t*>(writeBuf);
		for(size_t n=0;n!=num;++n)
		{
			kout << INFO << "SD writing block:" << n << "...";
			while(!bufferWriteReady());
			clearWriteReady();
			for(size_t i=0;i!= _blockSize/sizeof(*writePtr);++i)
				reg32(BUFF_DATA_PORT)=*writePtr++;
			kout << "finished\n";
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
	if(status!=0)
	{
		kout << FATAL << "SD setting RCA failed\n";
		return status;
	}
	_rca=rca;
	return 0;
}
void    SDDriverV3::setSDClockFreq(size_t freq)
{

	kout << INFO << "SD setting clock freq to " << freq << "\n";
	while(busy());
	stopSDClock(true);
	delayUS(10);
	if(baseSDCardFreq()==0)
	{
		uint32_t d=clockDivisorForEMMC(freq);
		kout << INFO << "SD calculate divisor using EMMC method, divisor="
					<< Hex(d)<<"\n";
		reg16(CLOCK_CTRL) = (reg16(CLOCK_CTRL)&0x003f) | d;
		delayUS(10);
	}else{
		setBits(reg16(CLOCK_CTRL),8,15, clockDivisor(freq));
		delayUS(10);
	}
	stopSDClock(false);
	delayUS(10);
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
