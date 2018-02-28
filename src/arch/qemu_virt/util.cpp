/*
 * util.cpp
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#include <def.h>
#include <generic_util.h> //实现delayCPU
#include <arch/qemu-virt/util.h>


void delayCPU(size_t i)
{
	while(i--)
		__asm__ __volatile__("nop \n\t");
}

void delayCPU(size_t i,size_t j)
{
	while(i--)
		delayCPU(j);
}

void haltCPU()
{
	while(true)
		CPUWaitForEvent();
}
