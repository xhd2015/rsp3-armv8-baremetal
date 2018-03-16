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

// prototype:
//  size_t    puts(const char *, size_t n=0)
//  void*     allocateBlock(size_t size,size_t alignment) // 一般用于分配较大的空间，如4KB的页
enum SvcFunc{ puts, allocateBlock};



#endif /* INCLUDE_ARCH_COMMON_AARCH64_EXCEPTION_EXCEPTIONS_H_ */
