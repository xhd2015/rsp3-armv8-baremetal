/*
 * cpuDelayS.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */
#include <generic/cpu.h>

void delayMS(size_t msec)
{
	delayUS(msec*1000);
}

void delayS(size_t sec)
{
	delayMS(sec*1000);
}


