#include <interrupt/BCM2836LocalIntController.h>
#include <interrupt/GICDefinitions.h>
#include <generic/error.h>

BCM2836LocalIntController::IntSource    BCM2836LocalIntController::locateInterrupt(size_t cpuId, int irq_or_fiq)
{
	uint32_t word=reg32(corex_irq_source + (!!irq_or_fiq)*0x10 + cpuId*4);
	return static_cast<IntSource>(findFirstSet(word));
}
uint64_t BCM2836LocalIntController::coreTimerCount() const {
	uint64_t res=reg32(core_timer_count_ls);
	res = (res<<32)|reg32(core_timer_count_ms);
	return res;
}

void BCM2836LocalIntController::coreTimerFreq(size_t freq)
{
	size_t divider=cpuFreq()*(coreTimerIncrement()+1)/(coreTimerSource()+1)/freq;
	assert(divider<= (1u<<31));
	reg32(core_timer_prescaler)=(1u<<31)/divider;
}
size_t BCM2836LocalIntController::coreTimerFreq()const
{
	uint32_t divider=(1u<<31)/reg32(core_timer_prescaler);
	return cpuFreq()*(coreTimerIncrement()+1)/(coreTimerSource()+1)/divider;
}

void BCM2836LocalIntController::delayMS(size_t msec)const
{
	size_t neededCount = coreTimerFreq() / 1000 * msec;
	size_t initVal=coreTimerCount();
	while(coreTimerCount() - initVal <neededCount);
}

