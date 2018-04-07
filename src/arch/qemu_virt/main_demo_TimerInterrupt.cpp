
#include <def.h>
#include <io/IntegerFormatter.h>
#include <interrupt/InterruptManager.h>
#include <interrupt/GenericTimer.h>
#include <interrupt/InterruptHandler.h>
#include <io/Output.h>
#include <new>


// 本文件测试和展示了InterruptManager以及GenericTimer的使用
// InterruptManager旨在替代main_aarch64_instructions.cpp中的对中断系统进行初始化的hard coeded代码
// GenericTimer旨在提供一个简洁的通用计时器的接口

#define GIC_DIST_BASE 0x08000000
#define GIC_REDIST_BASE 0x080A0000
#define GIC_REDIST_RD_BASE  (GIC_REDIST_BASE)
#define GIC_REDIST_SGI_BASE (GIC_REDIST_RD_BASE + 1024*64)
extern char ExceptionVectorEL1[];

int main()
{
	// determinte current EL
	auto curEl = RegCurrentEL::read();
	if(curEl.EL != 1)
	{
		kout << FATAL << "This program is designed to run at EL1\n";
		return 1;
	}
    new (&intHandler) InterruptHandler();
	new (&intm) InterruptManager(
			reinterpret_cast<char*>(GIC_DIST_BASE),
			reinterpret_cast<char*>(GIC_REDIST_BASE));
	new (&ktimer) GenericTimer();
	int status=intm.init(
			ExceptionVectorEL1,
			true,
			EOIMode::ack_priority_drop_and_deactivation,
			0xFE,
			0xF0);
	if(status!=0)
		return status;

	// enable irq
	intm.cpuIntEnable<InterruptManager::IRQ>(true);

	ktimer.timerPeriod(1000);//1000ms
	ktimer.nextPeriod();
	ktimer.enableTimerWork(true);
	ktimer.enableTimerInt(true);

	kout << "End main\n";
	return 0;
}


