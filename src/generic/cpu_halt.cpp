/*
 * cpu_halt.cpp
 *
 *  Created on: Mar 21, 2018
 *      Author: 13774
 */


#include <generic/cpu.h>
#include <asm_instructions.h>



void haltCPU()
{
	asm_wfi_loop();
}
