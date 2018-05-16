/*
 * exceptionCHandler_qemu_virt.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */

#include <interrupt/exception_def.h>
#include <runtime_def.h>

//savedRegisters[31], from X0-X30
void exceptionCHandler(uint64_t  * savedRegs,ExceptionType type,ExceptionOrigin origin)
{
	// 暂不允许其他中断的发生，处理异常的过程中不允许发生其他非同步异常
	// 但是同步异常是不可避免的

	// 此处以及之前的区域保证绝对不会产生同步异常
	intHandler.handle(savedRegs,type,origin,0);

	// 重新允许所有的中断

	// 主要是平衡堆栈的问题，先将栈指针还原
	__asm__ __volatile__(
		"mov sp,%0 \n\t"
		RESTORE_CONTEXT_AND_ERET()
		::"r"(savedRegs)
	);
}

