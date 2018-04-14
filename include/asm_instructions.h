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
// 与汇编标号同时使用。
//   当函数中有局部变量时，或者其他需要栈空间的内存，则汇编代码处定义的标号不一定就是我们所看到的c++代码的位置，可能被插入一些无关的代码。通过使用C++标号能解决这个问题
//   此宏通过定义一个标号，来将后序的汇编标号定义具有准确性。
#define FORCE_CODE_COHERENT_WITH_VIEW() L## __LINE__:
// ASM instruction sym.., need sync by c++ labels, you must avoid -Werror=unused-label
#define ASM_DEFINE_LOCAL_SYM(sym) __asm__sym__##sym: __asm__ __volatile__(__stringify(sym) ":\n\t")
#define ASM_DEFINE_GLOBAL_SYM(sym) __asm__sym__##sym:__asm__ __volatile__(".global " __stringify(sym) " \n\t;" __stringify(sym) ":\n\t")
#define ASM_LDR_REG(reg,val) __asm__ __volatile__("")
#define ASM_PUSHX_REG()
#define ASM_PUSHX()
#define ASM_POPX_REG()
#define ASM_POPX()
#define ASM_PUSHW_REG()
#define ASM_PUSHW()
#define ASM_POPW_REG()
#define ASM_POPW()
#define ASM_GOTO(sym) __asm__ __volatile__("b " __stringify(sym) " \n\t")

//== declarations
AS_MACRO void asm_nop();
AS_MACRO void asm_isb();
AS_MACRO void asm_eret();
AS_MACRO RegPAR_EL1 asm_at(uint64_t va);
AS_MACRO void asm_svc(uint16_t imm);
AS_MACRO void asm_wfe();
AS_MACRO __attribute__((noreturn)) void asm_wfe_loop();
AS_MACRO void asm_tlbi_aside1(uint16_t asid);
AS_MACRO void asm_tlbi_allel1();
AS_MACRO void asm_tbli_vmallel1();


//== definitions
void asm_nop()
{
	__asm__ __volatile__("nop \n\t");
}
void asm_isb()
{
	__asm__ __volatile__("isb \n\t");
}
void asm_eret()
{
	__asm__ __volatile__("eret \n\t");
}
RegPAR_EL1 asm_at(uint64_t va)
{
	__asm__ __volatile__("at S1E1R,%0 \n\t"::"r"(va));
	return RegPAR_EL1::read();
}
void asm_svc(uint16_t imm)
{
	__asm__ __volatile__("svc %0"::"i"(imm));
}
void asm_wfe()
{
	__asm__ __volatile__("wfe \n\t");
}
void asm_wfe_loop()
{
	while(true)
		asm_wfe();
}

// tlbi aside1, xt  xt= [ASID][RES0]
void asm_tlbi_aside1(uint16_t asid)
{
	__asm__ __volatile__(
			"tlbi aside1,%0 \n\t"
			::"r"(static_cast<uint64_t>(asid)<<(64 - 16))
	);
}
// 注意，该指令在EL1不可执行
void asm_tlbi_allel1()
{
	__asm__ __volatile__("tlbi ALLE1 \n\t");
}
void asm_tbli_vmallel1()
{
	__asm__ __volatile__("tlbi  VMALLE1 \n\t");
}
#endif /* INCLUDE_ASM_INSTRUCTIONS_H_ */
