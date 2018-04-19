#include <new>
#include <generic/cpu.h>
#include <runtime_def.h>
#include <interrupt/exception_def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <interrupt/BCM2835InterruptController.h>
#include <interrupt/GenericTimer.h>
#include <io/IntegerFormatter.h>
#include <debug/MemoryDebugger.h>
#include <driver/gpio/GPIO.h>
#include <driver/sd/SDDriver.h>
#include <driver/sd/SDDriverV3.h>
#include <driver/sd/SDCardOperationCond.h>
#include <driver/sd/SDCardIdentification.h>
#include <cstring>

#define INT_AUX 29
#define INT_UART0 57
#define INTC_BASE        0x3F00B000
#define TIMER_BASE       0x3F00B000
#define LOCAL_INTC_BASE  0x40000000
#define TIMER_LS         0x4000001C
#define TIMER_MS         0x40000020
#define SD_BASE          0x3F300000
extern char ramStart[];
extern char ramEnd[];
// SD卡的操作序列必须包括： 设置时钟，初始化（非常复杂）， 确定卡的类型（SDSC或者 SDXC，卡的类型影响读写的地址含义，
//    前者是字节地址，后者是block地址)  选择RCA
//  设置RCA：必须是正确的RCA，否则可能超时
//  读写操作： 单块：必须设置BlockSize， 必须设置RCA（否则可能超时）。
// 作为编程人员，必须明白硬件在什么时候会出现什么状态。
void test();
int main()
{
	new (&intc) BCM2835InterruptController(INTC_BASE);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE);
	new (&sysTimer) BCM2835SystemTimer(SYS_TIMER_BASE);// 定时必须启用
	new (&ktimer) GenericTimer();
	new (&mman) MemoryManager(ramStart,ramEnd-ramStart,true);
	new (&kin) Input();

	kout << "Waiting for connection....\n";
	while(!pl011.readReady());
	pl011.rawRead(); // 将输入的字符清除

//	while(true)
//	{
//		kout << "test timer delay \n";
//		delayMS(1000);
//	}

	// 选择GPIO
	kout << INFO << "selecting GPIO 48~53 to SDIO\n";
	gpio.selectAltFunction(48, GPIO::ALT_3);
	gpio.selectAltFunction(49, GPIO::ALT_3);
	gpio.selectAltFunction(50, GPIO::ALT_3);
	gpio.selectAltFunction(51, GPIO::ALT_3);
	gpio.selectAltFunction(52, GPIO::ALT_3);
	gpio.selectAltFunction(53, GPIO::ALT_3);

//	test();
//	while(true);

	SDDriverV3  sd(SD_BASE);
	sd.init();
	sd.setSDClockFreq(400000);
	using Command=SDDriverV3::Command;
	int status=sd.sendCommand(Command::IDLE, 0); 
	assert(status==0);//CMD0必须成功
	uint16_t pattern=0x1AA;
	kout << INFO << "pattern " << Hex(pattern) << "\n";
	// FIXME 按照初始化流程发送VHS与否
//	status=sd.sendCommand(Command::SEND_IF_COND,
//			(SDDriverV3::VHS::RANGE_2v7_3v6<<16)|pattern);
	status=sd.sendCommand(Command::SEND_IF_COND,pattern);
	if(status!=0)
	{
		kout << FATAL << "SD is legacy, not supporting CMD8\n";
		return 1;
	}else{
		auto resp7=sd.response();
		auto rVHS = resp7>>16;
		auto rpattern = resp7 & 0xffff;
		kout << INFO << "resp VHS = " << Hex(rVHS) << "\n";
		kout << INFO << "resp pattern = " << Hex(rpattern) << "\n";
		if(rpattern!=pattern)
		{
			kout << FATAL << "SD card unuseable because of wrong echo\n";
			return 1;
		}

		// FIXME 按照初始化流程，这里是否需要首先发送这个0 OP？
		// buggy，
//		status=sd.sendAppCommand(Command::APP_SEND_OP_COND, 0);
//		if(status!=0)
//		{
//			kout << FATAL << "SD Send OP COND failed\n";
//			return 1;
//		}
		auto ocr=SDCardOperationCond::make(0);
//		ocr.dump();

		// FIXME opcond应当从前一个获取还是使用hardcoded值？
//		uint32_t opcond=SDDefinitions::makeSendOpCondArg(ocr.ref(),true,true);
		uint32_t opcond=0x51ff8000u;
		uint32_t msWait=1000;//等待至多1s
		uint32_t delayInterv=50;//每两次检测之间的间隔至多是50ms
		while(true)
		{
			status=sd.sendAppCommand(Command::APP_SEND_OP_COND, opcond);
			if(status!=0)
			{
				kout << FATAL << "SD Send OP Cond failed\n";
				return 1;
			}
			ocr=SDCardOperationCond::make(sd.response());
			if(msWait <delayInterv || ocr._powerUpDone)
				break;
			msWait-=delayInterv;
		}
		ocr.dump();
		if(!ocr._powerUpDone)
		{
			kout << FATAL << "SD keeps busy,power on failed\n";
			return 1;
		}
		sd.typeSelect(ocr._sdsc_or_sdhc_sdxc);
		kout << INFO << "SD Type = " << (ocr._sdsc_or_sdhc_sdxc?"SDHC/SDXC":"SDSC") << "\n";

		status=sd.sendCommand(Command::ALL_SEND_CID, 0);
		assert(status==0);
		auto cid=SDCardIdentification::make(sd.response());
		cid.dump();

		auto rca=sd.getAnyRCA();
		// FIXME 不同的卡最高速率不一样，有的是50MHz，实现一个setSDClockMax()
		sd.setSDClockFreq(25000000);// 设置最高工作频率
		sd.setRCA(rca);
//		while(true)
//		{
//
//			status=sd.sendCommand(Command::SELECT_DESELECT_CARD, rca); // failed
//			if(status!=0 || !sd.lastTransferCompleted())
//			{
//			  kout << WARNING << "last transfering not complete,reset\n";
//			  status=sd.sendCommand(Command::SELECT_DESELECT_CARD,0);
//			  sd.softwareResetDAT();
//			}else
//				break;
//		}
		const size_t n=4;
		size_t bootSector=8192;
		char buf[512*n];
		*reinterpret_cast<uint32_t*>(buf)=0xABCD;//set by user
		if(sd.transferBlocks(bootSector,n, buf) != n) // 读取第一个扇区
		{
			kout << FATAL << "read block failed\n";
			return 1;
		}
		kout << "===========read data is\n";
		for(size_t i=0;i!=n*512;++i)
			kout << Hex(static_cast<uint8_t>(buf[i])) <<" " ;
		kout << "\n===================\n";
	}


	assert(exceptionLevel == ExceptionLevel::EL1);
	intc.disableAllInterrupts();

	// 进入调试状态
	MemoryDebugger mm;
	mm.mainloop("Debugger:");

	while(true);
	return 0;
}
