/*
 * exceptionCHandler_raspi3.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */
#include <interrupt/exception_def.h>
#include <io/Output.h>
#include <io/uart/PL011.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <generic/cpu.h>
#include <io/uart/BCM2835MiniUART.h>
#include <interrupt/BCM2835InterruptController.h>
#include <interrupt/BCM2836LocalIntController.h>
#include <runtime_def.h>
void exceptionCHandler(uint64_t  * savedRegs,ExceptionType type,ExceptionOrigin origin)
{
	kout << "===-----=======---==\n";
	kout << "interrupt\n";
	kout << "cpuID = " << cpuID() << "\n";
	if(type==ExceptionType::SYNC)
	{
		kout << "SYNC\n";
		auto esr=RegESR_EL1::read();
		esr.dump();
		if(esr.EC == ExceptionClass::UNDEF_INST)
			kout << "Undefined instruction \n";
	}
	else if(type==ExceptionType::IRQ)
	{
		kout << "IRQ\n";
		IntID irqId = INT_ID_IS_INVALID;
		kout << "irq source = "<< Hex(localIntc.reg32(BCM2836LocalIntController::corex_irq_source)) << "\n";
		auto src=localIntc.locateInterrupt(cpuID(), 0);
		assert(!isMax(src)); // must be valid
		kout << "source = " << src << "\n";
		switch(src)
		{
		case BCM2836LocalIntController::SRC_GPU:
		{
			kout << "intc.pending(0) = " << Hex(intc.pendingWord(0)) << "\n";
			kout << "intc.pending(1) = " << Hex(intc.pendingWord(1)) << "\n";
			kout << "intc.pending(2) = " << Hex(intc.pendingWord(2)) << "\n";
			irqId = intc.locateInterrupt();
//			assert(!isMax(irqId));
			kout << "irq id = " << irqId << "\n";
			if(irqId == BCM2835InterruptController::SRC_UART_INT)
			{
				while(pl011.readReady())
					kout << static_cast<char>(pl011.rawRead()) << "\n";
			}else if(irqId >= BCM2835InterruptController::SRC_SYS_TIMER_FIRST && irqId<=BCM2835InterruptController::SRC_SYS_TIMER_LAST)
			{
				auto n=irqId - BCM2835InterruptController::SRC_SYS_TIMER_FIRST;
				sysTimer.clearIntStatus(n);
				sysTimer.addCompareValueMS(n, sysTimerTick);
			}
			// 经过测试可知，在正确地读取完输入后，中断会自己清除掉。
//			kout << "after processed\n";
//			kout << "intc.pending(0) = " << Hex(intc.pendingWord(0)) << "\n";
//			kout << "intc.pending(1) = " << Hex(intc.pendingWord(1)) << "\n";
//			kout << "intc.pending(2) = " << Hex(intc.pendingWord(2)) << "\n";
//			intc.deactivateInterrupt(irqId);
//			kout << "after deactivate\n";
//			kout << "intc.pending(0) = " << Hex(intc.pendingWord(0)) << "\n";
//			kout << "intc.pending(1) = " << Hex(intc.pendingWord(1)) << "\n";
//			kout << "intc.pending(2) = " << Hex(intc.pendingWord(2)) << "\n";
			break;
		}
		case BCM2836LocalIntController::SRC_LOCAL_TIMER:
		{
			localIntc.localTimerClearIntFlag();
			break;
		}
		default:
		{
			kout << "unhandled IRQ src :" << src << "\n";
			asm_wfe_loop();
		}
		}
	}else{
		kout << "ExceptionType = " << type << "\n";
	}
	// 先wait一段时间，否则中断可能太快
	delayCPU(1000, 1000);
	__asm__ __volatile__(
		"mov sp,%0 \n\t"
		RESTORE_CONTEXT_AND_ERET_ASM_INSTR()
		::"r"(savedRegs)
	);
}



