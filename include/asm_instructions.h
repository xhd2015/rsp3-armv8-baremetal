/*
 * asm_instructions.h
 *
 *  Created on: Mar 5, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ASM_INSTRUCTIONS_H_
#define INCLUDE_ASM_INSTRUCTIONS_H_

#include <def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <interrupt/svc_call_forward.h>
// 与汇编标号同时使用。
//   当函数中有局部变量时，或者其他需要栈空间的内存，则汇编代码处定义的标号不一定就是我们所看到的c++代码的位置，可能被插入一些无关的代码。通过使用C++标号能解决这个问题
//   此宏通过定义一个标号，来将后序的汇编标号定义具有准确性。
#define FORCE_CODE_COHERENT_WITH_VIEW() L## __LINE__:
// ASM instruction sym.., need sync by c++ labels, you must avoid -Werror=unused-label
#define ASM_DEFINE_LOCAL_SYM(sym) __asm__sym__##sym: __asm__ __volatile__(__stringify(sym) ":\n\t")
#define ASM_DEFINE_GLOBAL_SYM(sym) __asm__sym__##sym:__asm__ __volatile__(".global " __stringify(sym) " \n\t;" __stringify(sym) ":\n\t")
#define ASM_WARM_RESET(highestEL)  \
			__asm__( \
			"mov x0,#0b10 \n\t" /*AA64,bit0=RES0 */\
			"dsb osh \n\t"       \
			"msr rmr_el" __stringify(highestEL) ",x0 \n\t"  \
			"isb \n\t" \
			"1: \n\t"  \
			"wfi \n\t"  \
			"b 1b \n\t"  \
			)

//== declarations
AS_MACRO void asm_nop(){__asm__("nop \n\t");}
AS_MACRO void asm_isb(){__asm__("isb \n\t");}
AS_MACRO void asm_eret(){__asm__("eret \n\t");}
AS_MACRO RegPAR_EL1 asm_at(uint64_t va);
template <SvcFunc func>
AS_MACRO void asm_svc(){	__asm__ ("svc %0"::"i"(func));}
template <HvcFunc func>
AS_MACRO void asm_hvc() {__asm__ ("hvc %0"::"i"(func));}
template <SmcFunc func>
AS_MACRO void asm_smc() {__asm__ ("smc %0"::"i"(func));}
AS_MACRO void asm_wfe() {__asm__("wfe \n\t");}
AS_MACRO void asm_wfi() {__asm__("wfi \n\t");}
AS_MACRO __attribute__((noreturn)) void asm_wfi_loop()
{	__asm__("1: ;wfi;b 1b\n\t");while(true);/*avoid-noreturn-returns*/}

AS_MACRO void asm_tlbi_aside1(uint16_t asid);
AS_MACRO void asm_tlbi_allel1();
AS_MACRO void asm_tlbi_vmallel1();


//== definitions
RegPAR_EL1 asm_at(uint64_t va)
{
	__asm__ __volatile__("at S1E1R,%0 \n\t"::"r"(va));
	return RegPAR_EL1::read();
}


// tlbi aside1, xt  xt= [ASID][RES0]
void asm_tlbi_aside1(uint16_t asid)
{
	// DOCME dsb,dsb,isb这个顺序也是非常重要的
	__asm__ __volatile__(
			"dsb osh;tlbi aside1,%0;dsb osh;isb\n\t"
			::"r"(static_cast<uint64_t>(asid)<<(64 - 16))
	);
}
// 注意，该指令在EL1不可执行
void asm_tlbi_allel1()
{
	__asm__ __volatile__("dsb osh;tlbi ALLE1;dsb osh;isb \n\t");
}
void asm_tlbi_vmallel1()
{
	__asm__ __volatile__("dsb osh;tlbi  VMALLE1;dsb osh;isb \n\t");
}
#endif /* INCLUDE_ASM_INSTRUCTIONS_H_ */
