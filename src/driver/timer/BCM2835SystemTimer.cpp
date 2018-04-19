/*
 * BCM2835SystemTimer.cpp
 *
 *  Created on: Apr 16, 2018
 *      Author: 13774
 */
#include <driver/timer/BCM2835SystemTimer.h>


uint64_t BCM2835SystemTimer::counterValue()const
{
	uint64_t lo=reg32(CLO);
	uint64_t hi=reg32(CHI);
	return (hi<<32)|lo;
}

void BCM2835SystemTimer::delayMS(uint32_t ms)const
{
	uint64_t neededCount = timeToCountMS(ms);
	uint64_t initCount = counterValue();
	while(counterValue() - initCount < neededCount) // wait
		;
}



