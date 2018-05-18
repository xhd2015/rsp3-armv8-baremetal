/*
 * exception_def2.h
 *
 *  Created on: Apr 6, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_EXCEPTION_DEF_H_
#define INCLUDE_INTERRUPT_EXCEPTION_DEF_H_

/**
 * 包含异常处理所需的各种定义
 */

#include <def.h>
#include <asm_instructions.h>
enum  ExceptionClass{
	UNDEF_INST=0b000000,           //!< UNDEF_INST
	INSTR_ABORT_LOWER_EL = 0b100000,// may be MMU faults
	INSTR_ABORT_SAME_EL = 0b100001,//!< INSTR_ABORT_SAME_EL
	PC_ALIGNMENT_FAULT = 0b100010, //!< PC_ALIGNMENT_FAULT
	DATA_ABORT_LOWER_EL = 0b100100,//!< DATA_ABORT_LOWER_EL
	DATA_ABORT_SAME_EL = 0b100101, //!< DATA_ABORT_SAME_EL
	SP_ALIGNMENT_FAULT = 0b100110, //!< SP_ALIGNMENT_FAULT
	SERROR_INTERRUPT = 0b101111,   //!< SERROR_INTERRUPT
	SVC_AA64=0b010101,             //!< SVC_AA64
	HVC_AA64 = 0b010110,           //!< HVC_AA64
	SMC_AA64 = 0b010111,           //!< SMC_AA64
};

// 提供宏定义以便调用
#define EXCEPTION_TYPE_SYNC 0
#define EXCEPTION_TYPE_IRQ 1
#define EXCEPTION_TYPE_FIQ 2
#define EXCEPTION_TYPE_SERROR 3
#define EXCEPTION_TYPE_DEBUG 4

#define EXCEPTION_ORIGIN_CUR_SP_EL0 0
#define EXCEPTION_ORIGIN_CUR_SP_ELx 1
#define EXCEPTION_ORIGIN_FROM_LOWER_A64 2
#define EXCEPTION_ORIGIN_FROM_LOWER_A32 3

// 用于异常的辨别
enum ExceptionType:uint64_t{
	SYNC=EXCEPTION_TYPE_SYNC,
	IRQ=EXCEPTION_TYPE_IRQ,
	FIQ=EXCEPTION_TYPE_FIQ,
	SError=EXCEPTION_TYPE_SERROR,
	DEBUG=EXCEPTION_TYPE_DEBUG
};
enum ExceptionOrigin:uint64_t{
	CUR_SP_EL0=EXCEPTION_ORIGIN_CUR_SP_EL0,
	CUR_SP_ELx=EXCEPTION_ORIGIN_CUR_SP_ELx,
	FROM_LOWER_A64=EXCEPTION_ORIGIN_FROM_LOWER_A64,
	FROM_LOWER_A32=EXCEPTION_ORIGIN_FROM_LOWER_A32,
};
enum class ExceptionLevel {EL0 = 0,EL1 = 1,EL2 = 2,EL3 = 3};

enum class StandardInterruptType { PROCESS_TIMER,INPUT };

// 我们期望使用的异常处理函数
//savedRegisters[31], from X0-X30
extern "C"
void exceptionCHandler(uint64_t  * savedRegs,ExceptionType type,ExceptionOrigin origin);
extern char ExceptionVectorEL1[]; // 向量表的地址

#define SAVE_REGS_ASM_INSTR() \
		"stp x29,x30,[sp,#-16]! \n\t" \
		"stp x27,x28,[sp,#-16]! \n\t" \
		"stp x25,x26,[sp,#-16]! \n\t" \
		"stp x23,x24,[sp,#-16]! \n\t" \
		"stp x21,x22,[sp,#-16]! \n\t" \
		"stp x19,x20,[sp,#-16]! \n\t" \
		"stp x17,x18,[sp,#-16]! \n\t" \
		"stp x15,x16,[sp,#-16]! \n\t" \
		"stp x13,x14,[sp,#-16]! \n\t" \
		"stp x11,x12,[sp,#-16]! \n\t" \
		"stp x9,x10,[sp,#-16]! \n\t" \
		"stp x7,x8,[sp,#-16]! \n\t" \
		"stp x5,x6,[sp,#-16]! \n\t" \
		"stp x3,x4,[sp,#-16]! \n\t" \
		"stp x1,x2,[sp,#-16]! \n\t" \
		"str x0,[sp,#-8]! \n\t"

// X30可以作为基址寄存器来加载，这样解决sp无法设置的问题
#define RESTORE_REGS_ASM_INSTR_X0_X28(base) \
		"ldr x0,[" __stringify(base) "],#8 \n\t" \
		"ldp x1,x2,[" __stringify(base) "],#16 \n\t" \
		"ldp x3,x4,[" __stringify(base) "],#16 \n\t" \
		"ldp x5,x6,[" __stringify(base) "],#16 \n\t" \
		"ldp x7,x8,[" __stringify(base) "],#16 \n\t" \
		"ldp x9,x10,[" __stringify(base) "],#16 \n\t" \
		"ldp x11,x12,[" __stringify(base) "],#16 \n\t" \
		"ldp x13,x14,[" __stringify(base) "],#16 \n\t" \
		"ldp x15,x16,[" __stringify(base) "],#16 \n\t" \
		"ldp x17,x18,[" __stringify(base) "],#16 \n\t" \
		"ldp x19,x20,[" __stringify(base) "],#16 \n\t" \
		"ldp x21,x22,[" __stringify(base) "],#16 \n\t" \
		"ldp x23,x24,[" __stringify(base) "],#16 \n\t" \
		"ldp x25,x26,[" __stringify(base) "],#16 \n\t" \
		"ldp x27,x28,[" __stringify(base) "],#16 \n\t"

// 最后改变sp的值
#define RESTORE_REGS_ASM_INSTR() \
		RESTORE_REGS_ASM_INSTR_X0_X28(sp) \
		"ldp x29,x30,[sp],#16 \n\t"

// 使用x30作为基址寄存器加载，并且不改变x30的值
#define RESTORE_REGS_ASM_INSTR_X30_BASE() \
		RESTORE_REGS_ASM_INSTR_X0_X28(x30) \
		"ldp x29,x30,[x30]\n\t"

// 在使用SAVE_REGS, 必须将sp设置为 addrOf(x0) + sizeof(x0)*31
// 在使用LOAD_REGS, 必须将sp设置为addrOf(x0)
// 从低地址到高地址依次是 x0,x1,x2,....x29,x30,  x30通常也称为LR寄存器
#define SAVE_REGS() \
	__asm__ __volatile__( \
	SAVE_REGS_ASM_INSTR() \
	)
#define RESTORE_REGS() \
	__asm__ __volatile__(\
	RESTORE_REGS_ASM_INSTR() \
	)

#define SAVE_CONTEXT_AND_CALL_HANDLER(handler,type,origin) \
		SAVE_REGS_ASM_INSTR() \
		"mov x0,sp \n\t"  \
		"mov x1," __stringify(type) "\n\t" \
		"mov x2," __stringify(origin) "\n\t" \
		"bl  " __stringify(handler) "\n\t"

#define RESTORE_CONTEXT_AND_ERET() \
        RESTORE_REGS_ASM_INSTR() \
        "eret \n\t"

void cpuEnableInterrupt(ExceptionType etp,bool en);

#endif /* INCLUDE_INTERRUPT_EXCEPTION_DEF_H_ */
