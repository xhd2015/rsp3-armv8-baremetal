#include <io/Output.h>
#include <new>
#include <generic/cpu.h>
#include <io/IntegerFormatter.h>
#include <interrupt/exception_def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <interrupt/GICDefinitions.h>
#include <interrupt/BCM2835InterruptController.h>
#include <interrupt/GenericTimer.h>


#define INT_AUX 29
#define INT_UART0 57
#define INTC_BASE        0x3F00B000
#define TIMER_BASE       0x3F00B000
#define LOCAL_INTC_BASE  0x40000000
#define TIMER_LS         0x4000001C
#define TIMER_MS         0x40000020
int main()
{
	new (&intc) BCM2835InterruptController(INTC_BASE);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE);
	new (&ktimer) GenericTimer();

//	localIntc.localTimerCountDownValue(0xfffff);
//	localIntc.localTimerIntEnable(true);
//	localIntc.localTimerClearIntFlag();
//	localIntc.localTimerIntRoute(cpuID(), 0);
//	localIntc.localTimerWorkEnable(true);
//	localIntc.coreTimerFreq(cpuFreq()/2);
//	localIntc.coreTimerSource(0);
//	intc.pending(0) = 8000
//	intc.pending(1) = 0
//	intc.pending(2) = 140


//	ktimer.enableTimerWork(false);
//	ktimer.timerPeriod(1000);
//	ktimer.enableTimerWork(true);
//	ktimer.enableTimerInt(true);
//	intc.pending = 8000
//	irq source = 100
//	IntID = 8




	kout << "Waiting for connection....\n";
	while(!pl011.readReady());
	pl011.rawRead(); // 将输入的字符清除
//	while(!miniUART.readReady());// 直到输入一个字符才开始。

	assert(exceptionLevel == ExceptionLevel::EL1);
//	kout << "Current EL = " << RegCurrentEL::read().EL << "\n";
	kout <<"GIC supported?" <<  RegID_AA64PFR0_EL1::read().GIC << "\n";

//	intc.reg32(BCM2835InterruptController::ENABLE_IRQ_1) = bitOnes<INT_AUX>();
//	intc.enableWord(0)=0xFFFFFFFF;
//	intc.enableWord(1)=0xFFFFFFFF;
//	intc.enableWord(2)=0xFF;
//	intc.enableWord(0) = INT_AUX;
	intc.disableWord(0)=0xFFFFFFFF;
	intc.disableWord(1) = 0xFFFFFFFF;
	intc.disableWord(2) = 0xFF;
	intc.enableWord(1) = bitOnes<INT_UART0 - 32>();
	kout << "intc.enableWord(0) = " << Hex(intc.enableWord(0)) << "\n";
	kout << "intc.enableWord(1) = " << Hex(intc.enableWord(1)) << "\n";
	kout << "intc.enableWord(2) = " << Hex(intc.enableWord(2)) << "\n";
	while(pl011.rawRead()!='c');
	// 初始配置如下：
//	intc.enableWord(0) = 200
//	intc.enableWord(1) = 0
//	intc.enableWord(2) = 0


//	kout << "FIQ_CONTROL = " << Hex(intc.reg32(BCM2835InterruptController::FIQ_CONTROL)) << "\n";

	// 测试了读取Timer的值，经验证，该值不断增加，所以基地址是正确的
	// 读取时不能使用64位读，而是先读低32位，再读高32位。
//	volatile uint32_t * timerValue = reinterpret_cast<volatile uint32_t*>(TIMER_LS);
//	while(true) // read timer values
//	{
//		uint64_t timeValue = timerValue[0];//先读取LS
//		timeValue = (timeValue << 32)|timerValue[1];// 在读取MS
//		kout << "TimerValue = " << timeValue << "\n";
//		delayCPU(1000*1000);
//	}
//	miniUART.clearReceiveFIFO();
//	miniUART.enableReceiveInterrupt(true);
//	miniUART.enableSendInterrupt(true);// 似乎只有同时启用两个中断才会产生IRQ,但实际上不是这样的。
	pl011.enableReceiveInterrupt(true);
	auto daif=RegDAIF::read();
	daif.I=0;
	(void)daif;
	daif.write();
	while(true);
////	size_t times=5;
//	while(true)
//	{
//		kout << "==============\n";
//		kout << "intc.pending(0) = " << Hex(intc.pendingWord(0)) << "\n";
//		kout << "intc.pending(1) = " << Hex(intc.pendingWord(1)) << "\n";
//		kout << "intc.pending(2) = " << Hex(intc.pendingWord(2)) << "\n";
//		kout << "pl011.int = " << Hex(pl011.reg32(PL011::UARTRIS)) << "\n";
//		if(pl011.receiveInterrupted())
//			while(pl011.readReady())kout << static_cast<char>(pl011.rawRead()) << "\n";
//		delayCPU(1000,1000); // 经过测定，这样的发送速率刚好符合人的测试需要。
////		delayMS(1000);
////		ktimer.delayMS(1000);
//	}
	return 0;
}
