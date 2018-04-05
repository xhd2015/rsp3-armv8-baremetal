
#include <def.h>
#include <io/IntegerFormatter.h>
#include <interrupt/InterruptManager.h>
#include <io/Output.h>
#include <new>

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

	new (&intm) InterruptManager(
			reinterpret_cast<char*>(GIC_DIST_BASE),
			reinterpret_cast<char*>(GIC_REDIST_BASE));
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

	// generate sgi3 to current CPU,IRQ
	intm.sgiSelf<1>(3);

	kout << "End main\n";
	return 0;
}


