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


void GenericTimer::delayMS(uint32_t ms)const
{
	uint64_t neededCount = timeToCountMS(ms);
	uint64_t initCount = counterValue();
	while(counterValue() - initCount < neededCount) // wait
		;
}
