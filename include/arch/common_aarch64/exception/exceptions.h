/*
 * exceptions.h
 *
 *  Created on: Mar 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_COMMON_AARCH64_EXCEPTIONS_H_
#define INCLUDE_ARCH_COMMON_AARCH64_EXCEPTIONS_H_
#include <def.h>
#include <asm_instructions.h>
enum  ExceptionClass{
	UNDEF_INST=0b000000,
	INSTR_ABORT_LOWER_EL = 0b100000,// may be MMU faults
	INSTR_ABORT_SAME_EL = 0b100001,
	PC_ALIGNMENT_FAULT = 0b100010,
	DATA_ABORT_LOWER_EL = 0b100100,
	DATA_ABORT_SAME_EL = 0b100101,
	SP_ALIGNMENT_FAULT = 0b100110,
	SERROR_INTERRUPT = 0b101111,
	SVC_AA64=0b010101,
	HVC_AA64 = 0b010110,
	SMC_AA64 = 0b010111,
};

#define SAVE_REGS_ASM_INSTR \
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

#define RESTORE_REGS_ASM_INSTR \
		RESTORE_REGS_ASM_INSTR_X0_X28(sp) \
		"ldp x29,x30,[sp],#16 \n\t"

// 使用x30作为基址寄存器加载
#define RESTORE_REGS_ASM_INSTR_X30_BASE \
		RESTORE_REGS_ASM_INSTR_X0_X28(x30) \
		"ldp x29,x30,[x30]\n\t"

// 在使用SAVE_REGS, 必须将sp设置为 addrOf(x0) + sizeof(x0)*31
// 在使用LOAD_REGS, 必须将sp设置为addrOf(x0)
// 从低地址到高地址依次是 x0,x1,x2,....x29,x30,  x30通常也称为LR寄存器
#define SAVE_REGS() \
	__asm__ __volatile__( \
	SAVE_REGS_ASM_INSTR \
	)
#define RESTORE_REGS() \
	__asm__ __volatile__(\
	RESTORE_REGS_ASM_INSTR \
	)



#endif /* INCLUDE_ARCH_COMMON_AARCH64_EXCEPTION_EXCEPTIONS_H_ */
