/*
 * cpuDelayMS_raspi3.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */
#include <generic/cpu.h>
//#include <interrupt/BCM2836LocalIntController.h>
#include <interrupt/GenericTimer.h>
#include <arch/common_aarch64/registers/timer_registers.h>
void delayUS(size_t usec)
{
	uint64_t neededCount = static_cast<uint64_t>(RegCNTFRQ_EL0::read().ClockFrq)/1000*usec/1000;
	uint64_t initCount = RegCNTPCT_EL0::read().PhysicalCount;
	while(RegCNTPCT_EL0::read().PhysicalCount - initCount < neededCount) // wait
		;
//	ktimer.delayUS(usec);// 结果与delayCPU(1000*1000*msec)差不多
//	localIntc.delayMS(msec);// 使用localIntc实现的方式不准确
}


