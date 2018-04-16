/*
 * cpuFreq_raspi3.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */

#include <generic/cpu.h>
#include <arch/common_aarch64/registers/timer_registers.h>
size_t  cpuFreq()
{
//	return 1200000000;//1.2GHz 树莓派3
	return RegCNTFRQ_EL0::read().ClockFrq;
}


