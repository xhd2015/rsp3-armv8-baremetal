#include <interrupt/BCM2836LocalIntController.h>
#include <interrupt/GICDefinitions.h>
#include <generic/error.h>
#include <runtime_def.h>


void BCM2836LocalIntController::rebase(size_t diff)
{
	MemBasedRegReader::rebase(diff);
	_intc2835=pointerInc(_intc2835, diff);
}
BCM2836LocalIntController::IntSource
	BCM2836LocalIntController::locateInterruptSource(size_t cpuId, int irq_or_fiq)const
{
	uint32_t word=reg32(corex_irq_source + (!!irq_or_fiq)*0x10 + cpuId*4);
	return static_cast<IntSource>(findFirstSet(word));
}
IntID
	BCM2836LocalIntController::locateInterrupt(size_t cpuID,int irq_or_fiq)const
{
	auto first=static_cast<uint32_t>(
			locateInterruptSource(cpuID, irq_or_fiq));
//	kout << "first = " << first << "\n";
	if(first==0xFFu)
		return INT_ID_IS_INVALID;
	auto src=  first + INTC_INT_NUM;//offset
	if(src  == SRC_GPU)
		return _intc2835->locateInterrupt();
	else
		return src;
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
IntID  BCM2836LocalIntController::standardIntID(StandardInterruptType type)const
{
	return _intc2835->standardIntID(type); // make  happy?
}
void   BCM2836LocalIntController::endInterrupt(ExceptionType type,IntID id)
{
	assert(type == ExceptionType::IRQ);//no fiq
	_intc2835->endInterrupt(type, id);
}
void   BCM2836LocalIntController::enableInterrupt(IntID id,bool enable)
{
	assert(id < INTC_INT_NUM);
	_intc2835->enableInterrupt(id, enable);
}
void BCM2836LocalIntController::disableAllInterrupts()
{
	_intc2835->disableAllInterrupts();
}

