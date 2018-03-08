/*
 * asm_instructions.h
 *
 *  Created on: Mar 5, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ASM_INSTRUCTIONS_H_
#define INCLUDE_ASM_INSTRUCTIONS_H_

#include <def.h>

// ASM instruction sym.., need sync by c++ labels, you must avoid -Werror=unused-label
#define ASM_DEFINE_LOCAL_SYM(sym) __asm__sym__##sym: __asm__ __volatile__(__stringify(sym) ":\n\t")
#define ASM_DEFINE_GLOBAL_SYM(sym) __asm__sym__##sym:__asm__ __volatile__(".global " __stringify(sym) " \n\t;" __stringify(sym) ":\n\t")
//#define ASM_DSB() __asm__ __volatile__("dsb \n\t")
#define ASM_ISB() __asm__ __volatile__ ("isb \n\t")
#define ASM_NOP() __asm__ __volatile__("nop \n\t")
#define ASM_GOTO(sym) __asm__ __volatile__("b " __stringify(sym) " \n\t")


#endif /* INCLUDE_ASM_INSTRUCTIONS_H_ */
