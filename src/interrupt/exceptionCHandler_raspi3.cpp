/*
 * exceptionCHandler_raspi3.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */
#include <interrupt/exception_def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <driver/uart/BCM2835MiniUART.h>
#include <driver/uart/PL011.h>
#include <generic/cpu.h>
#include <interrupt/BCM2835InterruptController.h>
#include <interrupt/BCM2836LocalIntController.h>
#include <io/Output.h>
#include <io/Output.h>
#include <runtime_def.h>
#include <generic_util.h>

void exceptionCHandler(uint64_t  * savedRegs,ExceptionType type,ExceptionOrigin origin)
{
	IntID id=0;
	if(type==ExceptionType::IRQ)
		id=localIntc.locateInterrupt(cpuID(), 0);
	else if(type==ExceptionType::FIQ)
		id=localIntc.locateInterrupt(cpuID(), 1);
	intHandler.handle(savedRegs, type, origin, id);
	__asm__ __volatile__(
		"mov sp,%0 \n\t"
		RESTORE_CONTEXT_AND_ERET()
		::"r"(savedRegs)
	);
}



