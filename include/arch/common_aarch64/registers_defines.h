/*
 * system_registers_base.h
 *
 *  Created on: Feb 7, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_REGISTERS_BASE_H_
#define INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_REGISTERS_BASE_H_


#include <def.h>
#include <io/IntegerFormatter.h>
#include <arch/common_aarch64/gicv3_defines.h>

// 1. using standard way
#define DEFINE_REG_READ(regTypeInCXX,regNameInAsm)  regTypeInCXX regTypeInCXX::read(){ regTypeInCXX res;__asm__ __volatile__("mrs %0," __stringify(regNameInAsm) "\n\t":"=r"(res));return res;}
#define DEFINE_REG_UPDATE_READ(regTypeInCXX,regNameInAsm)  regTypeInCXX regTypeInCXX::updateRead(){ __asm__ __volatile__("mrs %0," __stringify(regNameInAsm) "\n\t":"=r"(*this));return *this;}
#define DEFINE_REG_WRITE(regTypeInCXX,regNameInAsm)  void regTypeInCXX::write() const { __asm__ __volatile__("msr " __stringify(regNameInAsm) ",%0 \n\t"::"r"(*this));}


#define SETUP_REG_STD_READ(regname) DEFINE_REG_READ(Reg##regname,regname)
#define SETUP_REG_STD_UPDATE_READ(regname) DEFINE_REG_UPDATE_READ(Reg##regname,regname)
#define SETUP_REG_STD_WRITE(regname) DEFINE_REG_WRITE(Reg##regname,regname)


// 2.using gcc reprensentation
// s3_0_c4_c2_3
#define SYS_REG_GCC_REPR(op0,op1,crn,crm,op2) s##op0##_##op1##_##c##crn##_##c##crm##_##op2


#define PAN_GCC_REPR SYS_REG_GCC_REPR(3,0,4,2,3)
#define ICC_BPR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,3)
#define ICC_BPR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,3)
#define ICC_CTLR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,4)
#define ICC_CTLR_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,4)
#define ICC_DIR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,1)
#define ICC_EOIR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,1)
#define ICC_EOIR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,1)
#define ICC_HPPIR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,2)
#define ICC_HPPIR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,2)
#define ICC_IAR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,0)
#define ICC_IAR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,0)
#define ICC_IGRPEN0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,6)
#define ICC_IGRPEN1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,7)
#define ICC_IGRPEN1_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,7)
#define ICC_PMR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,4,6,0)
#define ICC_RPR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,3)
#define ICC_SGI0R_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,7)
#define ICC_SGI1R_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,5)
#define ICC_SRE_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,5)
#define ICC_SRE_EL2_GCC_REPR SYS_REG_GCC_REPR(3,4,12,9,5)
#define ICC_SRE_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,5)

#define SETUP_REG_GCC_REPR_READ(name) DEFINE_REG_READ(Reg##name,name##_GCC_REPR)
#define SETUP_REG_GCC_REPR_UPDATE_READ(name) DEFINE_REG_UPDATE_READ(Reg##name,name##_GCC_REPR)
#define SETUP_REG_GCC_REPR_WRITE(name) DEFINE_REG_WRITE(Reg##name,name##_GCC_REPR)


// 3.using hard coded(not recommended as method#2 is a better replacement)
// msr(register), 要求寄存器的第一位为1
#define ENCODE_MSR 11010101000

// 要求系统寄存器的第一位为1
#define ENCODE_MRS 11010101001
#define ENCODE_ICC_IGRPEN0_EL1 1100011001100110
#define ENCODE_X0 00000


#define SETUP_REG_HARD_CODED_READ(name) \
Reg##name Reg##name::read() \
{ \
	Reg##name res; \
	__asm__ __volatile__( \
			".4byte 0b" __stringify(ENCODE_MRS) __stringify(ENCODE_##name) __stringify(ENCODE_X0) "\n\t" \
			"mov %0,x0 \n\t" \
			:"=r"(res)); \
	return res; \
}

#define SETUP_REG_HARD_CODED_UPDATE_READ(name) \
Reg##name Reg##name::updateRead() \
{ \
	__asm__ __volatile__( \
			".4byte 0b" __stringify(ENCODE_MRS) __stringify(ENCODE_##name) __stringify(ENCODE_X0) "\n\t" \
			"mov %0,x0 \n\t" \
			:"=r"(*this)); \
	return *this;\
}

#define SETUP_REG_HARD_CODED_WRITE(name) \
void Reg##name::write() const\
{ \
	__asm__ __volatile( \
		"mov x0,%0 \n\t" \
		".4byte 0b" __stringify(ENCODE_MSR) __stringify(ENCODE_##name) __stringify(ENCODE_X0) "\n\t" \
		: \
		:"r"(*this) \
	); \
}

// example
//SETUP_REG_HARD_CODED_READ(ICC_IGRPEN0_EL1)


// 4. for memory-mapped register

#define SETUP_REG_MEM_MAPPED_READ(name) \
Reg##name Reg##name::read() \
{ \
	return *reinterpret_cast<Reg##name*>(name##_MEM_MAPPED_ADDR);\
}

#define SETUP_REG_MEM_MAPPED_UPDATE_READ(name) \
Reg##name Reg##name::updateRead() \
{ \
	return *this=*reinterpret_cast<Reg##name*>(name##_MEM_MAPPED_ADDR);\
}

#define SETUP_REG_MEM_MAPPED_WRITE(name) \
void Reg##name::write() const\
{ \
	*reinterpret_cast<Reg##name*>(name##_MEM_MAPPED_ADDR)=*this;\
}

// 5. individual settings
// for PC
#define SETUP_REG_PC_READ(name) \
Reg##name Reg##name::read() \
{ \
	Reg##name res;\
	__asm__ __volatile__("adr %0,#0\n\t":"=r"(res)); \
	return res; \
}
#define SETUP_REG_PC_UPDATE_READ(name) \
Reg##name Reg##name::updateRead() \
{ \
	__asm__ __volatile__("adr %0,#0\n\t":"=r"(*this)); \
	return *this; \
}
#define SETUP_REG_PC_WRITE(name) \
void Reg##name::write()const \
{ \
	__asm__ __volatile__("br %0\n\t"::"r"(*this)); \
}

// 6.  common packed structs,can be read & write to anywhere
// ANY_MEM indicates that it can be read from/write to any where
#define SETUP_REG_ANY_MEM_READ(name) \
Reg##name Reg##name::read(void *p) \
{ \
	return *reinterpret_cast<Reg##name*>(p);\
}\
Reg##name Reg##name::read(size_t p)\
{\
	return *reinterpret_cast<Reg##name*>(p);\
}

#define SETUP_REG_ANY_MEM_WRITE(name) \
void Reg##name::write(void *p)const \
{ \
	*reinterpret_cast<Reg##name*>(p)=*this; \
}\
void Reg##name::write(size_t p)const\
{\
	*reinterpret_cast<Reg##name*>(p)=*this;\
}

// 7. use load-store instructions,usually general registers, x0-x30
#define SETUP_REG_LOAD_STORE_READ(name) \
Reg##name Reg##name::read() \
{ \
	Reg##name res{0};\
	__asm__ __volatile__("str " __stringify(name)",%0 \n\t"::"m"(res)); \
	return res; \
}
#define SETUP_REG_LOAD_STORE_UPDATE_READ(name) \
Reg##name Reg##name::updateRead() \
{ \
	__asm__ __volatile__("str " __stringify(name)",%0 \n\t"::"m"(*this)); \
	return *this; \
}
#define SETUP_REG_LOAD_STORE_WRITE(name) \
void Reg##name::write()const \
{ \
	__asm__ __volatile__("ldr " __stringify(name) ",%0 \n\t"::"m"(*this)); \
}

// python 脚本
// gen_register_class.py



#endif /* INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_REGISTERS_DEFINES_H_ */
