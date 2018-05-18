/*
 * crt0.h
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_QEMU_VIRT_CRT0_H_
#define INCLUDE_ARCH_QEMU_VIRT_CRT0_H_

#include <def.h>
#include <generic_util.h>

// target EL=1
extern "C"
void init(uint64_t currentEL);
//我们需要提供的入口函数,与一般main函数的接口一致
int main();

// 将第一部分的指针变换到第二部分
#define PART1_TO_PART2(p) pointerInc(p,- CODE_OFFSET)
// 将指针变换到高端地址
#define TO_HIGH_ADDR(p) pointerInc(p, KERNEL_HIGH_BASE - CODE_OFFSET)

// 不能使用代码实现，会导致不确定性
#define ASM_HALT_SLAVE_CPUS() \
		"mrs     x0, mpidr_el1 \n\t" \
		"and     x0, x0, #0b11 \n\t" \
		"cmp     x0,#0 \n\t" \
		"b.eq      2f \n\t" \
		"1:  	wfi	\n\t" \
		"b       1b	\n\t" \
		"2: \n\t"
// which 使用0,1
// x0保留最低位
#define ASM_SET_SP_SEL(which) \
	    "mov x0,#" __stringify(which) "\n\t" \
        "msr SPSel, x0 \n\t"
// CurrentEL[3:2]=EL, 因此除以4就是我们期望的值
#define ASM_INIT_CALLER(spsym) \
		"ldr  x0,=" __stringify(spsym) "\n\t"	               \
		"mov  sp,x0 \n\t"                                       \
	    "mrs  x0,CurrentEL \n\t"                                  \
		"lsr  x0,x0,#2 \n\t"             /*获取x0=EL*/                     \
		"b   init \n\t"
// 在使用sp_el0的情况下，sp指针不用调整。
// 保证el=2,或者el=3, el是最高异常级别
// 要跳转到EL1
// 依赖于链接脚本提供的__stack_top_elx
#define ASM_ERET_FROM(el,spsr) \
	  "mov x3,sp \n\t" /*x3,x4,x5分别是sp_el1,sp_el2,sp_el3的值 ，这里预先加载，后面不再使用栈*/  \
	  "ldr x4,=__stack_top_el2 \n\t"                      \
	  "ldr x5,=__stack_top_el3 \n\t"                      \
	                                                      \
	  "mov x0,#" __stringify(el) "\n\t" /*x0=el*/         \
	  "cmp x0, #3 \n\t"        /* if(el>=3)设置sp_el3 */   \
	  "b.lt  1f \n\t"                                    \
	  /*"msr sp_el3,x5 \n\t"*/ /*不能访问sp_el3，但是访问sp是等价的*/   \
	  "mov sp, x5  \n\t"                                 \
	                                                     \
	  "1: \n\t"               /*if(el>=2)设置sp_el2*/      \
	  "cmp x0, #2 \n\t"                                  \
	  "b.lt  2f \n\t"                                    \
	  "msr sp_el2,x4 \n\t"                               \
	                                                     \
	  "2: \n\t"                /* 设置sp_el1 */           \
	  "msr sp_el1,x3 \n\t"                               \
	                          /*设置spsr,elr,然后跳转到EL1*/  \
	  "ldr x0,=" __stringify(spsr) "\n\t"                  \
	  "msr spsr_el" __stringify(el) ",x0 \n\t"             \
	  "adr x0,1f \n\t"                                     \
	  "msr elr_el" __stringify(el)  ",x0 \n\t"             \
	  "eret \n\t"                                          \
	  "1: \n\t"



#endif /* INCLUDE_ARCH_QEMU_VIRT_CRT0_H_ */
