/*
 * cpuDelayMS_raspi3.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */
#include <generic/cpu.h>
//#include <interrupt/BCM2836LocalIntController.h>
#include <interrupt/GenericTimer.h>
void delayMS(size_t msec)
{
	ktimer.delayMS(msec);// 结果与delayCPU(1000*1000*msec)差不多
//	localIntc.delayMS(msec);// 使用localIntc实现的方式不准确
}


