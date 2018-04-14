/*
 * crt0.h
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_QEMU_VIRT_CRT0_H_
#define INCLUDE_ARCH_QEMU_VIRT_CRT0_H_

#include <def.h>
#include <interrupt/InterruptManager.h>

// target EL=1
extern "C"
void init(uint64_t currentEL);
//我们需要提供的入口函数,与一般main函数的接口一致
int main();

// 不能使用代码实现，会导致不确定性
#define ASM_HALT_SLAVE_CPUS() \
		"mrs     x0, mpidr_el1 \n\t" \
		"and     x0, x0, #0b11 \n\t" \
		"cmp     x0,#0 \n\t" \
		"b.eq      2f \n\t" \
		"1:  	wfe	\n\t" \
		"b       1b	\n\t" \
		"2: \n\t"
// which 使用0,1
// x0保留最低位
#define ASM_SET_SP_SEL(which) \
	    "mov x0,#" __stringify(which) "\n\t" \
        "msr SPSel, x0 \n\t"
// CurrentEL[3:2]=EL, 因此除以4就是我们期望的值
#define ASM_INIT_CALLER(spsym) \
		"ldr  x30,=" __stringify(spsym) "\n\t"		/*设置SP,同时保存x30=SP*/ \
		"mov  sp,x30 \n\t"                                       \
	    "mrs x0,CurrentEL \n\t"                                  \
		"mov x1,#4 \n\t"                                         \
		"udiv x0,x0,x1 \n\t" /*获取x0=EL*/                        \
		"cmp x0,#1 \n\t"                                         \
		"b.le init \n\t"      /* if(el<=1) init(x0); */            \
		"msr sp_el1,x30 \n\t" /* else 设置EL1的SP && init(x0) */    \
		"b   init \n\t"
#define ASM_ERET_FROM(el,spsr) \
	  "ldr x0,=" __stringify(spsr) "\n\t"                  \
	  "msr spsr_el" __stringify(el) ",x0 \n\t"             \
	  "adr x0,1f \n\t"                                     \
	  "msr elr_el" __stringify(el)  ",x0 \n\t"             \
	  "eret \n\t"                                          \
	  "1: \n\t"



#endif /* INCLUDE_ARCH_QEMU_VIRT_CRT0_H_ */
