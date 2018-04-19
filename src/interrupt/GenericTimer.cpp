/*
 * GenericTimer.cpp
 *
 *  Created on: Apr 5, 2018
 *      Author: 13774
 */

#include <interrupt/GenericTimer.h>

void GenericTimer::enableTimerWork(bool enable)
{
	auto ctl = RegCNTP_CTL_EL0::read();
	ctl.ENABLE=enable;
	ctl.write();
}
void GenericTimer::enableTimerInt(bool enable)
{
	auto ctl = RegCNTP_CTL_EL0::read();
	ctl.IMASK= (!enable);
	ctl.write();
}

void GenericTimer::timerValueMS(uint32_t ms)
{
  timerValue(timeToCountMS(ms));
}



void GenericTimer::delayUS(uint32_t us)const
{
	uint64_t neededCount = timeToCountUS(us);
	uint64_t initCount = counterValue();
	while(counterValue() - initCount < neededCount) // wait
		;
}
