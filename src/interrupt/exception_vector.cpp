#include <interrupt/exception_def.h>

__asm__ __volatile__(//".align  11 \n\t" // for ARM, this is lower order zero bits, but seems not working. we must get depend on the final linker script
		".text \n\t"
		".align 11 \n\t"
		".global ExceptionVectorEL1 \n\t"
		"ExceptionVectorEL1:  \n\t" // this only applies to EL1
		// 每个中断项至多允许32条指令,因为每个中断处理的空间是0x80个字节，也就是128字节，每条指令4字节，因此共有32条指令


		// **Current Exception level with SP_EL0.(most preferred)
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_SYNC,EXCEPTION_ORIGIN_CUR_SP_EL0)
		". = ExceptionVectorEL1 + 0x080 \n\t"
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_IRQ,EXCEPTION_ORIGIN_CUR_SP_EL0)
		". = ExceptionVectorEL1 + 0x100 \n\t"
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_FIQ,EXCEPTION_ORIGIN_CUR_SP_EL0)
		". = ExceptionVectorEL1 + 0x180 \n\t"
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_SERROR,EXCEPTION_ORIGIN_CUR_SP_EL0)

		// **Current Exception level with SP_ELx, x>0
		". = ExceptionVectorEL1 + 0x200 \n\t" //for EL1-->EL1,syn=0x200
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_SYNC,EXCEPTION_ORIGIN_CUR_SP_ELx)  // just call for it
		". = ExceptionVectorEL1 + 0x280 \n\t" // IRQ or vIRQ
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_IRQ,EXCEPTION_ORIGIN_CUR_SP_ELx)
		". = ExceptionVectorEL1 + 0x300 \n\t" // FIQ or vFIQ
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_FIQ,EXCEPTION_ORIGIN_CUR_SP_ELx)
 		". = ExceptionVectorEL1 + 0x380 \n\t" // SError or vSError
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_SERROR,EXCEPTION_ORIGIN_CUR_SP_ELx)

		// ** aarch64下，从低异常级而来的异常
		". = ExceptionVectorEL1 + 0x400 \n\t"
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_SYNC,EXCEPTION_ORIGIN_FROM_LOWER_A64)
		". = ExceptionVectorEL1 + 0x480 \n\t"
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_IRQ,EXCEPTION_ORIGIN_FROM_LOWER_A64)
		". = ExceptionVectorEL1 + 0x500 \n\t"
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_FIQ,EXCEPTION_ORIGIN_FROM_LOWER_A64)
		". = ExceptionVectorEL1 + 0x580 \n\t"
		SAVE_CONTEXT_AND_CALL_HANDLER(exceptionCHandler,EXCEPTION_TYPE_SERROR,EXCEPTION_ORIGIN_FROM_LOWER_A64)


		// ** aarch32下, 从低异常级而来的异常,暂不设置

		// 异常表的结束位置
		". = ExceptionVectorEL1 + 0x780 + 0x80\n\t"
		);
