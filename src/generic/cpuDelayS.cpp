/*
 * cpuDelayS.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */
#include <generic/cpu.h>

void delayS(size_t sec)
{
	delayMS(sec*1000);
}



