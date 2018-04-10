#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <def.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/timer_registers.h>
#include <asm_instructions.h>
#include <interrupt/exception_def.h>
#include <io/Output.h>
#include <io/IntegerFormatter.h>
#include <schedule/PidManager.h>
#include <schedule/ProcessManager.h>
#include <interrupt/InterruptManager.h>
#include <interrupt/GenericTimer.h>
#include <interrupt/GICDefinitions.h>
#include <interrupt/svc_call.h>
#include <interrupt/InterruptHandler.h>

__asm__ __volatile__(//".align  11 \n\t" // for ARM, this is lower order zero bits, but seems not working. we must get depend on the final linker script
		".text \n\t"
		".align 11 \n\t"
		".global ExceptionVectorEL1 \n\t"
		"ExceptionVectorEL1:  \n\t" // this only applies to EL1
		// 每个中断项至多允许32条指令,因为每个中断处理的空间是0x80个字节，也就是128字节，每条指令4字节，因此共有32条指令


		// **Current Exception level with SP_EL0.
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_SYNC,EXCEPTION_ORIGIN_CUR_SP_EL0)
		". = ExceptionVectorEL1 + 0x080 \n\t"
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_IRQ,EXCEPTION_ORIGIN_CUR_SP_EL0)
		". = ExceptionVectorEL1 + 0x100 \n\t"
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_FIQ,EXCEPTION_ORIGIN_CUR_SP_EL0)
		". = ExceptionVectorEL1 + 0x180 \n\t"
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_SERROR,EXCEPTION_ORIGIN_CUR_SP_EL0)

		// **Current Exception level with SP_ELx, x>0
		". = ExceptionVectorEL1 + 0x200 \n\t" //for EL1-->EL1,syn=0x200
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_SYNC,EXCEPTION_ORIGIN_CUR_SP_ELx)  // just call for it
		". = ExceptionVectorEL1 + 0x280 \n\t" // IRQ or vIRQ
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_IRQ,EXCEPTION_ORIGIN_CUR_SP_ELx)
		". = ExceptionVectorEL1 + 0x300 \n\t" // FIQ or vFIQ
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_FIQ,EXCEPTION_ORIGIN_CUR_SP_ELx)
 		". = ExceptionVectorEL1 + 0x380 \n\t" // SError or vSError
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_SERROR,EXCEPTION_ORIGIN_CUR_SP_ELx)

		// ** aarch64下，从低异常级而来的异常
		". = ExceptionVectorEL1 + 0x400 \n\t"
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_SYNC,EXCEPTION_ORIGIN_FROM_LOWER_A64)
		". = ExceptionVectorEL1 + 0x480 \n\t"
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_IRQ,EXCEPTION_ORIGIN_FROM_LOWER_A64)
		". = ExceptionVectorEL1 + 0x500 \n\t"
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_FIQ,EXCEPTION_ORIGIN_FROM_LOWER_A64)
		". = ExceptionVectorEL1 + 0x580 \n\t"
		SAVE_CONTEXT_AND_CALL_ASM_INSTR(exceptionCHandler,EXCEPTION_TYPE_SERROR,EXCEPTION_ORIGIN_FROM_LOWER_A64)


		// ** aarch32下, 从低异常级而来的异常,暂不设置

		// 异常表的结束位置
		". = ExceptionVectorEL1 + 0x780 + 0x80\n\t"
		);

//savedRegisters[31], from X0-X30
extern "C"
void exceptionCHandler(uint64_t  * savedRegs,ExceptionType type,ExceptionOrigin origin)
{
	// 暂不允许其他中断的发生，处理异常的过程中不允许发生其他非同步异常
	// 但是同步异常是不可避免的

	// 此处以及之前的区域保证绝对不会产生同步异常
	intHandler.handleInlined(savedRegs,type,origin);

	// 重新允许所有的中断

	// 主要是平衡堆栈的问题，先将栈指针还原
	__asm__ __volatile__(
		"mov sp,%0 \n\t"
		RESTORE_CONTEXT_AND_ERET_ASM_INSTR()
		::"r"(savedRegs)
	);
}

