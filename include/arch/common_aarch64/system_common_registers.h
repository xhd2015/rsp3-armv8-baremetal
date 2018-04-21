//##======Automatically generated==========##
//##====../../../include/arch/common_aarch64/gen_register_class.py ../../../include/arch/common_aarch64/system_common_registers.py ../../../include/arch/common_aarch64/system_common_registers.h=========##
#ifndef _________INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_COMMON_REGISTERS_H__
#define _________INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_COMMON_REGISTERS_H__
static_assert(false,"deprecated");
#include <arch/common_aarch64/registers_defines.h>

class RegCurrentEL{
public:
        uint32_t		RES0_0:2;
        uint32_t		EL:2;
        uint32_t		RES0_1:28;
        AS_MACRO void dump()const
        {
            kout << "CurrentEL : "
                <<"RES0_0 = "<< RES0_0 << ","
                <<"EL = "<< EL << ","
                <<"RES0_1 = "<< RES0_1
                  << "\n";
        }
        AS_MACRO static RegCurrentEL read();
        AS_MACRO RegCurrentEL  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CurrentEL)
SETUP_REG_STD_UPDATE_READ(CurrentEL)
SETUP_REG_STD_WRITE(CurrentEL)



class RegDAIF{
public:
        uint32_t		RES0_0:6;
        uint32_t		F:1;
        uint32_t		I:1;
        uint32_t		A:1;
        uint32_t		D:1;
        uint32_t		RES0_1:22;
        AS_MACRO void dump()const
        {
            kout << "DAIF : "
                <<"RES0_0 = "<< RES0_0 << ","
                <<"F = "<< F << ","
                <<"I = "<< I << ","
                <<"A = "<< A << ","
                <<"D = "<< D << ","
                <<"RES0_1 = "<< RES0_1
                  << "\n";
        }
        AS_MACRO static RegDAIF read();
        AS_MACRO RegDAIF  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(DAIF)
SETUP_REG_STD_UPDATE_READ(DAIF)
SETUP_REG_STD_WRITE(DAIF)



class RegVBAR_EL1{
public:
        uint64_t		Addr:64;
        AS_MACRO void dump()const
        {
            kout << "VBAR_EL1 : "
                <<"Addr = "<< Hex(Addr)
                  << "\n";
        }
        AS_MACRO static RegVBAR_EL1 read();
        AS_MACRO RegVBAR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(VBAR_EL1)
SETUP_REG_STD_UPDATE_READ(VBAR_EL1)
SETUP_REG_STD_WRITE(VBAR_EL1)



class RegELR_EL1{
public:
        uint64_t		returnAddr:64;
        AS_MACRO void dump()const
        {
            kout << "ELR_EL1 : "
                <<"returnAddr = "<< Hex(returnAddr)
                  << "\n";
        }
        AS_MACRO static RegELR_EL1 read();
        AS_MACRO RegELR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ELR_EL1)
SETUP_REG_STD_UPDATE_READ(ELR_EL1)
SETUP_REG_STD_WRITE(ELR_EL1)



class RegELR_EL2{
public:
        uint64_t		returnAddr:64;
        AS_MACRO void dump()const
        {
            kout << "ELR_EL2 : "
                <<"returnAddr = "<< Hex(returnAddr)
                  << "\n";
        }
        AS_MACRO static RegELR_EL2 read();
        AS_MACRO RegELR_EL2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ELR_EL2)
SETUP_REG_STD_UPDATE_READ(ELR_EL2)
SETUP_REG_STD_WRITE(ELR_EL2)



class RegELR_EL3{
public:
        uint64_t		returnAddr:64;
        AS_MACRO void dump()const
        {
            kout << "ELR_EL3 : "
                <<"returnAddr = "<< Hex(returnAddr)
                  << "\n";
        }
        AS_MACRO static RegELR_EL3 read();
        AS_MACRO RegELR_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ELR_EL3)
SETUP_REG_STD_UPDATE_READ(ELR_EL3)
SETUP_REG_STD_WRITE(ELR_EL3)



class RegESR_EL1{
public:
        uint32_t		ISS:25;
        uint32_t		IL:1;
        uint32_t		EC:6;
        AS_MACRO void dump()const
        {
            kout << "ESR_EL1 : "
                <<"ISS = "<< Hex(ISS) << ","
                <<"IL = "<< IL << ","
                <<"EC = "<< Hex(EC)
                  << "\n";
        }
        AS_MACRO static RegESR_EL1 read();
        AS_MACRO RegESR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ESR_EL1)
SETUP_REG_STD_UPDATE_READ(ESR_EL1)
SETUP_REG_STD_WRITE(ESR_EL1)



class RegESR_EL2{
public:
        uint32_t		ISS:25;
        uint32_t		IL:1;
        uint32_t		EC:6;
        AS_MACRO void dump()const
        {
            kout << "ESR_EL2 : "
                <<"ISS = "<< Hex(ISS) << ","
                <<"IL = "<< IL << ","
                <<"EC = "<< Hex(EC)
                  << "\n";
        }
        AS_MACRO static RegESR_EL2 read();
        AS_MACRO RegESR_EL2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ESR_EL2)
SETUP_REG_STD_UPDATE_READ(ESR_EL2)
SETUP_REG_STD_WRITE(ESR_EL2)



class RegESR_EL3{
public:
        uint32_t		ISS:25;
        uint32_t		IL:1;
        uint32_t		EC:6;
        AS_MACRO void dump()const
        {
            kout << "ESR_EL3 : "
                <<"ISS = "<< Hex(ISS) << ","
                <<"IL = "<< IL << ","
                <<"EC = "<< Hex(EC)
                  << "\n";
        }
        AS_MACRO static RegESR_EL3 read();
        AS_MACRO RegESR_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ESR_EL3)
SETUP_REG_STD_UPDATE_READ(ESR_EL3)
SETUP_REG_STD_WRITE(ESR_EL3)



class RegFAR_EL1{
public:
        uint64_t		faultAddr:64;
        AS_MACRO void dump()const
        {
            kout << "FAR_EL1 : "
                <<"faultAddr = "<< Hex(faultAddr)
                  << "\n";
        }
        AS_MACRO static RegFAR_EL1 read();
        AS_MACRO RegFAR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(FAR_EL1)
SETUP_REG_STD_UPDATE_READ(FAR_EL1)
SETUP_REG_STD_WRITE(FAR_EL1)



class RegFAR_EL2{
public:
        uint64_t		faultAddr:64;
        AS_MACRO void dump()const
        {
            kout << "FAR_EL2 : "
                <<"faultAddr = "<< Hex(faultAddr)
                  << "\n";
        }
        AS_MACRO static RegFAR_EL2 read();
        AS_MACRO RegFAR_EL2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(FAR_EL2)
SETUP_REG_STD_UPDATE_READ(FAR_EL2)
SETUP_REG_STD_WRITE(FAR_EL2)



class RegFAR_EL3{
public:
        uint64_t		faultAddr:64;
        AS_MACRO void dump()const
        {
            kout << "FAR_EL3 : "
                <<"faultAddr = "<< Hex(faultAddr)
                  << "\n";
        }
        AS_MACRO static RegFAR_EL3 read();
        AS_MACRO RegFAR_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(FAR_EL3)
SETUP_REG_STD_UPDATE_READ(FAR_EL3)
SETUP_REG_STD_WRITE(FAR_EL3)



class RegSPSR_EL1{
public:
        uint32_t		SPSel:1;
        uint32_t		RES0_0:1;
        uint32_t		EL:2;
        uint32_t		ExeState:1;
        uint32_t		RES0_1:1;
        uint32_t		FIQMask:1;
        uint32_t		IRQMask:1;
        uint32_t		SErrorMask:1;
        uint32_t		DebugMask:1;
        uint32_t		RES0_2:10;
        uint32_t		IL:1;
        uint32_t		SoftwareStep:1;
        uint32_t		PAN:1;
        uint32_t		UAO:1;
        uint32_t		RES0_3:4;
        uint32_t		V:1;
        uint32_t		C:1;
        uint32_t		Z:1;
        uint32_t		N:1;
        AS_MACRO void dump()const
        {
            kout << "SPSR_EL1 : "
                <<"SPSel = "<< SPSel << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"EL = "<< EL << ","
                <<"ExeState = "<< ExeState << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"FIQMask = "<< FIQMask << ","
                <<"IRQMask = "<< IRQMask << ","
                <<"SErrorMask = "<< SErrorMask << ","
                <<"DebugMask = "<< DebugMask << ","
                <<"RES0_2 = "<< RES0_2 << ","
                <<"IL = "<< IL << ","
                <<"SoftwareStep = "<< SoftwareStep << ","
                <<"PAN = "<< PAN << ","
                <<"UAO = "<< UAO << ","
                <<"RES0_3 = "<< RES0_3 << ","
                <<"V = "<< V << ","
                <<"C = "<< C << ","
                <<"Z = "<< Z << ","
                <<"N = "<< N
                  << "\n";
        }
        AS_MACRO static RegSPSR_EL1 read();
        AS_MACRO RegSPSR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SPSR_EL1)
SETUP_REG_STD_UPDATE_READ(SPSR_EL1)
SETUP_REG_STD_WRITE(SPSR_EL1)



class RegSPSR_EL2{
public:
        uint32_t		SPSel:1;
        uint32_t		RES0_0:1;
        uint32_t		EL:2;
        uint32_t		ExeState:1;
        uint32_t		RES0_1:1;
        uint32_t		FIQMask:1;
        uint32_t		IRQMask:1;
        uint32_t		SErrorMask:1;
        uint32_t		DebugMask:1;
        uint32_t		RES0_2:10;
        uint32_t		IL:1;
        uint32_t		SoftwareStep:1;
        uint32_t		PAN:1;
        uint32_t		UAO:1;
        uint32_t		RES0_3:4;
        uint32_t		V:1;
        uint32_t		C:1;
        uint32_t		Z:1;
        uint32_t		N:1;
        AS_MACRO void dump()const
        {
            kout << "SPSR_EL2 : "
                <<"SPSel = "<< SPSel << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"EL = "<< EL << ","
                <<"ExeState = "<< ExeState << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"FIQMask = "<< FIQMask << ","
                <<"IRQMask = "<< IRQMask << ","
                <<"SErrorMask = "<< SErrorMask << ","
                <<"DebugMask = "<< DebugMask << ","
                <<"RES0_2 = "<< RES0_2 << ","
                <<"IL = "<< IL << ","
                <<"SoftwareStep = "<< SoftwareStep << ","
                <<"PAN = "<< PAN << ","
                <<"UAO = "<< UAO << ","
                <<"RES0_3 = "<< RES0_3 << ","
                <<"V = "<< V << ","
                <<"C = "<< C << ","
                <<"Z = "<< Z << ","
                <<"N = "<< N
                  << "\n";
        }
        AS_MACRO static RegSPSR_EL2 read();
        AS_MACRO RegSPSR_EL2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SPSR_EL2)
SETUP_REG_STD_UPDATE_READ(SPSR_EL2)
SETUP_REG_STD_WRITE(SPSR_EL2)



class RegSPSR_EL3{
public:
        uint32_t		SPSel:1;
        uint32_t		RES0_0:1;
        uint32_t		EL:2;
        uint32_t		ExeState:1;
        uint32_t		RES0_1:1;
        uint32_t		FIQMask:1;
        uint32_t		IRQMask:1;
        uint32_t		SErrorMask:1;
        uint32_t		DebugMask:1;
        uint32_t		RES0_2:10;
        uint32_t		IL:1;
        uint32_t		SoftwareStep:1;
        uint32_t		PAN:1;
        uint32_t		UAO:1;
        uint32_t		RES0_3:4;
        uint32_t		V:1;
        uint32_t		C:1;
        uint32_t		Z:1;
        uint32_t		N:1;
        AS_MACRO void dump()const
        {
            kout << "SPSR_EL3 : "
                <<"SPSel = "<< SPSel << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"EL = "<< EL << ","
                <<"ExeState = "<< ExeState << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"FIQMask = "<< FIQMask << ","
                <<"IRQMask = "<< IRQMask << ","
                <<"SErrorMask = "<< SErrorMask << ","
                <<"DebugMask = "<< DebugMask << ","
                <<"RES0_2 = "<< RES0_2 << ","
                <<"IL = "<< IL << ","
                <<"SoftwareStep = "<< SoftwareStep << ","
                <<"PAN = "<< PAN << ","
                <<"UAO = "<< UAO << ","
                <<"RES0_3 = "<< RES0_3 << ","
                <<"V = "<< V << ","
                <<"C = "<< C << ","
                <<"Z = "<< Z << ","
                <<"N = "<< N
                  << "\n";
        }
        AS_MACRO static RegSPSR_EL3 read();
        AS_MACRO RegSPSR_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SPSR_EL3)
SETUP_REG_STD_UPDATE_READ(SPSR_EL3)
SETUP_REG_STD_WRITE(SPSR_EL3)



class RegSP{
public:
        uint64_t		SP:64;
        AS_MACRO void dump()const
        {
            kout << "SP : "
                <<"SP = "<< SP
                  << "\n";
        }
        AS_MACRO static RegSP read();
        AS_MACRO RegSP  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SP)
SETUP_REG_STD_UPDATE_READ(SP)
SETUP_REG_STD_WRITE(SP)



class RegSP_EL0{
public:
        uint64_t		SP:64;
        AS_MACRO void dump()const
        {
            kout << "SP_EL0 : "
                <<"SP = "<< SP
                  << "\n";
        }
        AS_MACRO static RegSP_EL0 read();
        AS_MACRO RegSP_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SP_EL0)
SETUP_REG_STD_UPDATE_READ(SP_EL0)
SETUP_REG_STD_WRITE(SP_EL0)



class RegSP_EL1{
public:
        uint64_t		SP:64;
        AS_MACRO void dump()const
        {
            kout << "SP_EL1 : "
                <<"SP = "<< SP
                  << "\n";
        }
        AS_MACRO static RegSP_EL1 read();
        AS_MACRO RegSP_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SP_EL1)
SETUP_REG_STD_UPDATE_READ(SP_EL1)
SETUP_REG_STD_WRITE(SP_EL1)



class RegSP_EL2{
public:
        uint64_t		SP:64;
        AS_MACRO void dump()const
        {
            kout << "SP_EL2 : "
                <<"SP = "<< SP
                  << "\n";
        }
        AS_MACRO static RegSP_EL2 read();
        AS_MACRO RegSP_EL2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SP_EL2)
SETUP_REG_STD_UPDATE_READ(SP_EL2)
SETUP_REG_STD_WRITE(SP_EL2)



class RegSP_EL3{
public:
        uint64_t		SP:64;
        AS_MACRO void dump()const
        {
            kout << "SP_EL3 : "
                <<"SP = "<< SP
                  << "\n";
        }
        AS_MACRO static RegSP_EL3 read();
        AS_MACRO RegSP_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SP_EL3)
SETUP_REG_STD_UPDATE_READ(SP_EL3)
SETUP_REG_STD_WRITE(SP_EL3)



class RegNZCV{
public:
        uint64_t		RES0:28;
        uint64_t		V:1;
        uint64_t		C:1;
        uint64_t		Z:1;
        uint64_t		N:1;
        AS_MACRO void dump()const
        {
            kout << "NZCV : "
                <<"RES0 = "<< RES0 << ","
                <<"V = "<< V << ","
                <<"C = "<< C << ","
                <<"Z = "<< Z << ","
                <<"N = "<< N
                  << "\n";
        }
        AS_MACRO static RegNZCV read();
        AS_MACRO RegNZCV  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(NZCV)
SETUP_REG_STD_UPDATE_READ(NZCV)
SETUP_REG_STD_WRITE(NZCV)



class RegPAN{
public:
        uint32_t		RES0_0:22;
        uint32_t		PAN:1;
        uint32_t		RES0_1:9;
        AS_MACRO void dump()const
        {
            kout << "PAN : "
                <<"RES0_0 = "<< RES0_0 << ","
                <<"PAN = "<< PAN << ","
                <<"RES0_1 = "<< RES0_1
                  << "\n";
        }
        AS_MACRO static RegPAN read();
        AS_MACRO RegPAN  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(PAN)
SETUP_REG_STD_UPDATE_READ(PAN)
SETUP_REG_STD_WRITE(PAN)



class RegSPSel{
public:
        uint32_t		SP:1;
        uint32_t		RES0:31;
        AS_MACRO void dump()const
        {
            kout << "SPSel : "
                <<"SP = "<< SP << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegSPSel read();
        AS_MACRO RegSPSel  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SPSel)
SETUP_REG_STD_UPDATE_READ(SPSel)
SETUP_REG_STD_WRITE(SPSel)



class RegUAO{
public:
        uint64_t		RES0_0:23;
        uint64_t		UAO:1;
        uint64_t		RES0_1:8;
        AS_MACRO void dump()const
        {
            kout << "UAO : "
                <<"RES0_0 = "<< RES0_0 << ","
                <<"UAO = "<< UAO << ","
                <<"RES0_1 = "<< RES0_1
                  << "\n";
        }
        AS_MACRO static RegUAO read();
        AS_MACRO RegUAO  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(UAO)
SETUP_REG_STD_UPDATE_READ(UAO)
SETUP_REG_STD_WRITE(UAO)



class RegPC{
public:
        uint64_t		PC:64;
        AS_MACRO void dump()const
        {
            kout << "PC : "
                <<"PC = "<< Hex(PC)
                  << "\n";
        }
        AS_MACRO static RegPC read();
        AS_MACRO RegPC  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_PC_READ(PC)
SETUP_REG_PC_UPDATE_READ(PC)
SETUP_REG_PC_WRITE(PC)



class RegTCR_EL1{
public:
        uint64_t		T0SZ:6;
        uint64_t		RES0_0:1;
        uint64_t		EPD0:1;
        uint64_t		IRGN0:2;
        uint64_t		ORGN0:2;
        uint64_t		SH0:2;
        uint64_t		TG0:2;
        uint64_t		T1SZ:6;
        uint64_t		A1:1;
        uint64_t		EPD1:1;
        uint64_t		IRGN1:2;
        uint64_t		ORGN1:2;
        uint64_t		SH1:2;
        uint64_t		TG1:2;
        uint64_t		IPS:3;
        uint64_t		RES0_1:1;
        uint64_t		AS:1;
        uint64_t		TBI0:1;
        uint64_t		TBI1:1;
        uint64_t		HA:1;
        uint64_t		HD:1;
        uint64_t		HPD0:1;
        uint64_t		HPD1:1;
        uint64_t		HWU059:1;
        uint64_t		HWU060:1;
        uint64_t		HWU061:1;
        uint64_t		HWU062:1;
        uint64_t		HWU159:1;
        uint64_t		HWU160:1;
        uint64_t		HWU161:1;
        uint64_t		HWU162:1;
        uint64_t		RES0_2:2;
        uint64_t		NFD0:1;
        uint64_t		NFD1:1;
        uint64_t		RES0_3:9;
        AS_MACRO void dump()const
        {
            kout << "TCR_EL1 : "
                <<"T0SZ = "<< T0SZ << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"EPD0 = "<< EPD0 << ","
                <<"IRGN0 = "<< IRGN0 << ","
                <<"ORGN0 = "<< ORGN0 << ","
                <<"SH0 = "<< SH0 << ","
                <<"TG0 = "<< TG0 << ","
                <<"T1SZ = "<< T1SZ << ","
                <<"A1 = "<< A1 << ","
                <<"EPD1 = "<< EPD1 << ","
                <<"IRGN1 = "<< IRGN1 << ","
                <<"ORGN1 = "<< ORGN1 << ","
                <<"SH1 = "<< SH1 << ","
                <<"TG1 = "<< TG1 << ","
                <<"IPS = "<< IPS << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"AS = "<< AS << ","
                <<"TBI0 = "<< TBI0 << ","
                <<"TBI1 = "<< TBI1 << ","
                <<"HA = "<< HA << ","
                <<"HD = "<< HD << ","
                <<"HPD0 = "<< HPD0 << ","
                <<"HPD1 = "<< HPD1 << ","
                <<"HWU059 = "<< HWU059 << ","
                <<"HWU060 = "<< HWU060 << ","
                <<"HWU061 = "<< HWU061 << ","
                <<"HWU062 = "<< HWU062 << ","
                <<"HWU159 = "<< HWU159 << ","
                <<"HWU160 = "<< HWU160 << ","
                <<"HWU161 = "<< HWU161 << ","
                <<"HWU162 = "<< HWU162 << ","
                <<"RES0_2 = "<< RES0_2 << ","
                <<"NFD0 = "<< NFD0 << ","
                <<"NFD1 = "<< NFD1 << ","
                <<"RES0_3 = "<< RES0_3
                  << "\n";
        }
        AS_MACRO static RegTCR_EL1 read();
        AS_MACRO RegTCR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(TCR_EL1)
SETUP_REG_STD_UPDATE_READ(TCR_EL1)
SETUP_REG_STD_WRITE(TCR_EL1)



class RegISR_EL1{
public:
        uint32_t		RES0_0:6;
        uint32_t		F:1;
        uint32_t		I:1;
        uint32_t		A:1;
        uint32_t		RES0_1:23;
        AS_MACRO void dump()const
        {
            kout << "ISR_EL1 : "
                <<"RES0_0 = "<< RES0_0 << ","
                <<"F = "<< F << ","
                <<"I = "<< I << ","
                <<"A = "<< A << ","
                <<"RES0_1 = "<< RES0_1
                  << "\n";
        }
        AS_MACRO static RegISR_EL1 read();
        AS_MACRO RegISR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ISR_EL1)
SETUP_REG_STD_UPDATE_READ(ISR_EL1)
SETUP_REG_STD_WRITE(ISR_EL1)



class RegID_AA64ISAR0_EL1{
public:
        uint64_t		RES0_0:4;
        uint64_t		AES:4;
        uint64_t		SHA1:4;
        uint64_t		SHA2:4;
        uint64_t		CRC32:4;
        uint64_t		Atomic:4;
        uint64_t		RES0_1:4;
        uint64_t		RDM:4;
        uint64_t		SHA3:4;
        uint64_t		SM3:4;
        uint64_t		SM4:4;
        uint64_t		DP:4;
        uint64_t		RES0_2:16;
        AS_MACRO void dump()const
        {
            kout << "ID_AA64ISAR0_EL1 : "
                <<"RES0_0 = "<< RES0_0 << ","
                <<"AES = "<< AES << ","
                <<"SHA1 = "<< SHA1 << ","
                <<"SHA2 = "<< SHA2 << ","
                <<"CRC32 = "<< CRC32 << ","
                <<"Atomic = "<< Atomic << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"RDM = "<< RDM << ","
                <<"SHA3 = "<< SHA3 << ","
                <<"SM3 = "<< SM3 << ","
                <<"SM4 = "<< SM4 << ","
                <<"DP = "<< DP << ","
                <<"RES0_2 = "<< RES0_2
                  << "\n";
        }
        AS_MACRO static RegID_AA64ISAR0_EL1 read();
        AS_MACRO RegID_AA64ISAR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ID_AA64ISAR0_EL1)
SETUP_REG_STD_UPDATE_READ(ID_AA64ISAR0_EL1)
SETUP_REG_STD_WRITE(ID_AA64ISAR0_EL1)



class RegCONTEXTIDR_EL1{
public:
        uint32_t		PROCID:32;
        AS_MACRO void dump()const
        {
            kout << "CONTEXTIDR_EL1 : "
                <<"PROCID = "<< PROCID
                  << "\n";
        }
        AS_MACRO static RegCONTEXTIDR_EL1 read();
        AS_MACRO RegCONTEXTIDR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CONTEXTIDR_EL1)
SETUP_REG_STD_UPDATE_READ(CONTEXTIDR_EL1)
SETUP_REG_STD_WRITE(CONTEXTIDR_EL1)



class RegID_AA64PFR0_EL1{
public:
        uint64_t		EL0:4;
        uint64_t		EL1:4;
        uint64_t		EL2:4;
        uint64_t		EL3:4;
        uint64_t		FP:4;
        uint64_t		AdvSIMD:4;
        uint64_t		GIC:4;
        uint64_t		RAS:4;
        uint64_t		SVE:4;
        uint64_t		RES0:28;
        AS_MACRO void dump()const
        {
            kout << "ID_AA64PFR0_EL1 : "
                <<"EL0 = "<< EL0 << ","
                <<"EL1 = "<< EL1 << ","
                <<"EL2 = "<< EL2 << ","
                <<"EL3 = "<< EL3 << ","
                <<"FP = "<< FP << ","
                <<"AdvSIMD = "<< AdvSIMD << ","
                <<"GIC = "<< GIC << ","
                <<"RAS = "<< RAS << ","
                <<"SVE = "<< SVE << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegID_AA64PFR0_EL1 read();
        AS_MACRO RegID_AA64PFR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ID_AA64PFR0_EL1)
SETUP_REG_STD_UPDATE_READ(ID_AA64PFR0_EL1)
SETUP_REG_STD_WRITE(ID_AA64PFR0_EL1)



class RegID_AA64MMFR1_EL1{
public:
        uint64_t		HAFDBS:4;
        uint64_t		VMIDBits:4;
        uint64_t		VH:4;
        uint64_t		HPDS:4;
        uint64_t		LO:4;
        uint64_t		PAN:4;
        uint64_t		SpecSEI:4;
        uint64_t		XNX:4;
        uint64_t		RES0:32;
        AS_MACRO void dump()const
        {
            kout << "ID_AA64MMFR1_EL1 : "
                <<"HAFDBS = "<< HAFDBS << ","
                <<"VMIDBits = "<< VMIDBits << ","
                <<"VH = "<< VH << ","
                <<"HPDS = "<< HPDS << ","
                <<"LO = "<< LO << ","
                <<"PAN = "<< PAN << ","
                <<"SpecSEI = "<< SpecSEI << ","
                <<"XNX = "<< XNX << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegID_AA64MMFR1_EL1 read();
        AS_MACRO RegID_AA64MMFR1_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ID_AA64MMFR1_EL1)
SETUP_REG_STD_UPDATE_READ(ID_AA64MMFR1_EL1)
SETUP_REG_STD_WRITE(ID_AA64MMFR1_EL1)



class RegID_AA64MMFR0_EL1{
public:
        uint64_t		PARange:4;
        uint64_t		ASIDBits:4;
        uint64_t		BigEnd:4;
        uint64_t		SNSMem:4;
        uint64_t		BigEndEL0:4;
        uint64_t		TGran16:4;
        uint64_t		TGran64:4;
        uint64_t		TGran4:4;
        uint64_t		RES0:32;
        AS_MACRO void dump()const
        {
            kout << "ID_AA64MMFR0_EL1 : "
                <<"PARange = "<< PARange << ","
                <<"ASIDBits = "<< ASIDBits << ","
                <<"BigEnd = "<< BigEnd << ","
                <<"SNSMem = "<< SNSMem << ","
                <<"BigEndEL0 = "<< BigEndEL0 << ","
                <<"TGran16 = "<< Hex(TGran16) << ","
                <<"TGran64 = "<< Hex(TGran64) << ","
                <<"TGran4 = "<< Hex(TGran4) << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegID_AA64MMFR0_EL1 read();
        AS_MACRO RegID_AA64MMFR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(ID_AA64MMFR0_EL1)
SETUP_REG_STD_UPDATE_READ(ID_AA64MMFR0_EL1)
SETUP_REG_STD_WRITE(ID_AA64MMFR0_EL1)



class RegMIDR_EL1{
public:
        uint32_t		Revision:4;
        uint32_t		PartNum:12;
        uint32_t		Architecture:4;
        uint32_t		Variant:4;
        uint32_t		Implementer:8;
        AS_MACRO void dump()const
        {
            kout << "MIDR_EL1 : "
                <<"Revision = "<< Revision << ","
                <<"PartNum = "<< PartNum << ","
                <<"Architecture = "<< Architecture << ","
                <<"Variant = "<< Variant << ","
                <<"Implementer = "<< Implementer
                  << "\n";
        }
        AS_MACRO static RegMIDR_EL1 read();
        AS_MACRO RegMIDR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(MIDR_EL1)
SETUP_REG_STD_UPDATE_READ(MIDR_EL1)
SETUP_REG_STD_WRITE(MIDR_EL1)



class RegMPIDR_EL1{
public:
        uint64_t		Aff0:8;
        uint64_t		Aff1:8;
        uint64_t		Aff2:8;
        uint64_t		MT:1;
        uint64_t		RES0_0:5;
        uint64_t		U:1;
        uint64_t		RES1_1:1;
        uint64_t		Aff3:8;
        uint64_t		RES0_2:24;
        AS_MACRO void dump()const
        {
            kout << "MPIDR_EL1 : "
                <<"Aff0 = "<< Aff0 << ","
                <<"Aff1 = "<< Aff1 << ","
                <<"Aff2 = "<< Aff2 << ","
                <<"MT = "<< MT << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"U = "<< U << ","
                <<"RES1_1 = "<< RES1_1 << ","
                <<"Aff3 = "<< Aff3 << ","
                <<"RES0_2 = "<< RES0_2
                  << "\n";
        }
        AS_MACRO static RegMPIDR_EL1 read();
        AS_MACRO RegMPIDR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(MPIDR_EL1)
SETUP_REG_STD_UPDATE_READ(MPIDR_EL1)
SETUP_REG_STD_WRITE(MPIDR_EL1)



class RegTTBR0_EL1{
public:
        uint64_t		CnP:1;
        uint64_t		BADDR:47;
        uint64_t		ASID:16;
        AS_MACRO void dump()const
        {
            kout << "TTBR0_EL1 : "
                <<"CnP = "<< CnP << ","
                <<"BADDR = "<< Hex(BADDR) << ","
                <<"ASID = "<< ASID
                  << "\n";
        }
        AS_MACRO static RegTTBR0_EL1 read();
        AS_MACRO RegTTBR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(TTBR0_EL1)
SETUP_REG_STD_UPDATE_READ(TTBR0_EL1)
SETUP_REG_STD_WRITE(TTBR0_EL1)



class RegTTBR1_EL1{
public:
        uint64_t		CnP:1;
        uint64_t		BADDR:47;
        uint64_t		ASID:16;
        AS_MACRO void dump()const
        {
            kout << "TTBR1_EL1 : "
                <<"CnP = "<< CnP << ","
                <<"BADDR = "<< Hex(BADDR) << ","
                <<"ASID = "<< ASID
                  << "\n";
        }
        AS_MACRO static RegTTBR1_EL1 read();
        AS_MACRO RegTTBR1_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(TTBR1_EL1)
SETUP_REG_STD_UPDATE_READ(TTBR1_EL1)
SETUP_REG_STD_WRITE(TTBR1_EL1)



class RegPAR_EL1{
public:
    union{
        struct{
        uint64_t		F:1;
        uint64_t		RES0_0:6;
        uint64_t		SH:2;
        uint64_t		NS:1;
        uint64_t		IMP_DEF:1;
        uint64_t		RES1_1:1;
        uint64_t		PA47_12:36;
        uint64_t		PA51_48:4;
        uint64_t		RES0_2:4;
        uint64_t		ATTR:8;
       }__attribute__((packed)) S0;

        struct{
        uint64_t		F:1;
        uint64_t		FST:6;
        uint64_t		RES0_0:1;
        uint64_t		PTW:1;
        uint64_t		S:1;
        uint64_t		RES0_1:1;
        uint64_t		RES1_2:1;
        uint64_t		RES0_3:36;
        uint64_t		IMP_DEF0:4;
        uint64_t		IMP_DEF1:4;
        uint64_t		IMP_DEF2:8;
       }__attribute__((packed)) S1;

    }__attribute__((packed));

        AS_MACRO void dump()const
        {
            kout << "PAR_EL1 : ";
            if(S0.F==0)
            {
             kout  
                <<"S0.F = "<< S0.F << ","
                <<"S0.RES0_0 = "<< S0.RES0_0 << ","
                <<"S0.SH = "<< S0.SH << ","
                <<"S0.NS = "<< S0.NS << ","
                <<"S0.IMP_DEF = "<< S0.IMP_DEF << ","
                <<"S0.RES1_1 = "<< S0.RES1_1 << ","
                <<"S0.PA47_12 = "<< Hex(S0.PA47_12) << ","
                <<"S0.PA51_48 = "<< Hex(S0.PA51_48) << ","
                <<"S0.RES0_2 = "<< S0.RES0_2 << ","
                <<"S0.ATTR = "<< S0.ATTR;
            }
            else
            {
             kout  
                <<"S1.F = "<< S1.F << ","
                <<"S1.FST = "<< S1.FST << ","
                <<"S1.RES0_0 = "<< S1.RES0_0 << ","
                <<"S1.PTW = "<< S1.PTW << ","
                <<"S1.S = "<< S1.S << ","
                <<"S1.RES0_1 = "<< S1.RES0_1 << ","
                <<"S1.RES1_2 = "<< S1.RES1_2 << ","
                <<"S1.RES0_3 = "<< S1.RES0_3 << ","
                <<"S1.IMP_DEF0 = "<< S1.IMP_DEF0 << ","
                <<"S1.IMP_DEF1 = "<< S1.IMP_DEF1 << ","
                <<"S1.IMP_DEF2 = "<< S1.IMP_DEF2;
            }
             kout << "\n";
        }
        AS_MACRO static RegPAR_EL1 read();
        AS_MACRO RegPAR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(PAR_EL1)
SETUP_REG_STD_UPDATE_READ(PAR_EL1)
SETUP_REG_STD_WRITE(PAR_EL1)



class RegMAIR_EL1{
public:
        uint64_t		Attr0:8;
        uint64_t		Attr1:8;
        uint64_t		Attr2:8;
        uint64_t		Attr3:8;
        uint64_t		Attr4:8;
        uint64_t		Attr5:8;
        uint64_t		Attr6:8;
        uint64_t		Attr7:8;
        AS_MACRO void dump()const
        {
            kout << "MAIR_EL1 : "
                <<"Attr0 = "<< Hex(Attr0) << ","
                <<"Attr1 = "<< Hex(Attr1) << ","
                <<"Attr2 = "<< Hex(Attr2) << ","
                <<"Attr3 = "<< Hex(Attr3) << ","
                <<"Attr4 = "<< Hex(Attr4) << ","
                <<"Attr5 = "<< Hex(Attr5) << ","
                <<"Attr6 = "<< Hex(Attr6) << ","
                <<"Attr7 = "<< Hex(Attr7)
                  << "\n";
        }
        AS_MACRO static RegMAIR_EL1 read();
        AS_MACRO RegMAIR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(MAIR_EL1)
SETUP_REG_STD_UPDATE_READ(MAIR_EL1)
SETUP_REG_STD_WRITE(MAIR_EL1)



class RegMAIR_EL2{
public:
        uint64_t		Attr0:8;
        uint64_t		Attr1:8;
        uint64_t		Attr2:8;
        uint64_t		Attr3:8;
        uint64_t		Attr4:8;
        uint64_t		Attr5:8;
        uint64_t		Attr6:8;
        uint64_t		Attr7:8;
        AS_MACRO void dump()const
        {
            kout << "MAIR_EL2 : "
                <<"Attr0 = "<< Hex(Attr0) << ","
                <<"Attr1 = "<< Hex(Attr1) << ","
                <<"Attr2 = "<< Hex(Attr2) << ","
                <<"Attr3 = "<< Hex(Attr3) << ","
                <<"Attr4 = "<< Hex(Attr4) << ","
                <<"Attr5 = "<< Hex(Attr5) << ","
                <<"Attr6 = "<< Hex(Attr6) << ","
                <<"Attr7 = "<< Hex(Attr7)
                  << "\n";
        }
        AS_MACRO static RegMAIR_EL2 read();
        AS_MACRO RegMAIR_EL2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(MAIR_EL2)
SETUP_REG_STD_UPDATE_READ(MAIR_EL2)
SETUP_REG_STD_WRITE(MAIR_EL2)



class RegMAIR_EL3{
public:
        uint64_t		Attr0:8;
        uint64_t		Attr1:8;
        uint64_t		Attr2:8;
        uint64_t		Attr3:8;
        uint64_t		Attr4:8;
        uint64_t		Attr5:8;
        uint64_t		Attr6:8;
        uint64_t		Attr7:8;
        AS_MACRO void dump()const
        {
            kout << "MAIR_EL3 : "
                <<"Attr0 = "<< Hex(Attr0) << ","
                <<"Attr1 = "<< Hex(Attr1) << ","
                <<"Attr2 = "<< Hex(Attr2) << ","
                <<"Attr3 = "<< Hex(Attr3) << ","
                <<"Attr4 = "<< Hex(Attr4) << ","
                <<"Attr5 = "<< Hex(Attr5) << ","
                <<"Attr6 = "<< Hex(Attr6) << ","
                <<"Attr7 = "<< Hex(Attr7)
                  << "\n";
        }
        AS_MACRO static RegMAIR_EL3 read();
        AS_MACRO RegMAIR_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(MAIR_EL3)
SETUP_REG_STD_UPDATE_READ(MAIR_EL3)
SETUP_REG_STD_WRITE(MAIR_EL3)



class RegSCTLR_EL1{
public:
        uint32_t		M:1;
        uint32_t		A:1;
        uint32_t		C:1;
        uint32_t		SA:1;
        uint32_t		SA0:1;
        uint32_t		CP15BEN:1;
        uint32_t		RES0_0:1;
        uint32_t		ITD:1;
        uint32_t		SED:1;
        uint32_t		UMA:1;
        uint32_t		RES0_1:1;
        uint32_t		RES1_2:1;
        uint32_t		I:1;
        uint32_t		RES0_3:1;
        uint32_t		DZE:1;
        uint32_t		UCT:1;
        uint32_t		nTWI:1;
        uint32_t		RES0_4:1;
        uint32_t		nTWE:1;
        uint32_t		WXN:1;
        uint32_t		RES1_5:1;
        uint32_t		IESB:1;
        uint32_t		RES1_6:1;
        uint32_t		SPAN:1;
        uint32_t		E0E:1;
        uint32_t		EE:1;
        uint32_t		UCI:1;
        uint32_t		RES0_7:1;
        uint32_t		nTLSMD:1;
        uint32_t		LSMAOE:1;
        uint32_t		RES0_8:2;
        AS_MACRO void dump()const
        {
            kout << "SCTLR_EL1 : "
                <<"M = "<< M << ","
                <<"A = "<< A << ","
                <<"C = "<< C << ","
                <<"SA = "<< SA << ","
                <<"SA0 = "<< SA0 << ","
                <<"CP15BEN = "<< CP15BEN << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"ITD = "<< ITD << ","
                <<"SED = "<< SED << ","
                <<"UMA = "<< UMA << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"RES1_2 = "<< RES1_2 << ","
                <<"I = "<< I << ","
                <<"RES0_3 = "<< RES0_3 << ","
                <<"DZE = "<< DZE << ","
                <<"UCT = "<< UCT << ","
                <<"nTWI = "<< nTWI << ","
                <<"RES0_4 = "<< RES0_4 << ","
                <<"nTWE = "<< nTWE << ","
                <<"WXN = "<< WXN << ","
                <<"RES1_5 = "<< RES1_5 << ","
                <<"IESB = "<< IESB << ","
                <<"RES1_6 = "<< RES1_6 << ","
                <<"SPAN = "<< SPAN << ","
                <<"E0E = "<< E0E << ","
                <<"EE = "<< EE << ","
                <<"UCI = "<< UCI << ","
                <<"RES0_7 = "<< RES0_7 << ","
                <<"nTLSMD = "<< nTLSMD << ","
                <<"LSMAOE = "<< LSMAOE << ","
                <<"RES0_8 = "<< RES0_8
                  << "\n";
        }
        AS_MACRO static RegSCTLR_EL1 read();
        AS_MACRO RegSCTLR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(SCTLR_EL1)
SETUP_REG_STD_UPDATE_READ(SCTLR_EL1)
SETUP_REG_STD_WRITE(SCTLR_EL1)



class RegDLR_EL0{
public:
        uint64_t		RestartAddr:64;
        AS_MACRO void dump()const
        {
            kout << "DLR_EL0 : "
                <<"RestartAddr = "<< RestartAddr
                  << "\n";
        }
        AS_MACRO static RegDLR_EL0 read();
        AS_MACRO RegDLR_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(DLR_EL0)
SETUP_REG_STD_UPDATE_READ(DLR_EL0)
SETUP_REG_STD_WRITE(DLR_EL0)



class RegDSPSR_EL0{
public:
        uint32_t		SPSel:1;
        uint32_t		RES0_0:1;
        uint32_t		EL:2;
        uint32_t		ExeState:1;
        uint32_t		RES0_1:1;
        uint32_t		FIQMask:1;
        uint32_t		IRQMask:1;
        uint32_t		SErrorMask:1;
        uint32_t		DebugMask:1;
        uint32_t		RES0_2:10;
        uint32_t		IL:1;
        uint32_t		SoftwareStep:1;
        uint32_t		PAN:1;
        uint32_t		UAO:1;
        uint32_t		RES0_3:4;
        uint32_t		V:1;
        uint32_t		C:1;
        uint32_t		Z:1;
        uint32_t		N:1;
        AS_MACRO void dump()const
        {
            kout << "DSPSR_EL0 : "
                <<"SPSel = "<< SPSel << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"EL = "<< EL << ","
                <<"ExeState = "<< ExeState << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"FIQMask = "<< FIQMask << ","
                <<"IRQMask = "<< IRQMask << ","
                <<"SErrorMask = "<< SErrorMask << ","
                <<"DebugMask = "<< DebugMask << ","
                <<"RES0_2 = "<< RES0_2 << ","
                <<"IL = "<< IL << ","
                <<"SoftwareStep = "<< SoftwareStep << ","
                <<"PAN = "<< PAN << ","
                <<"UAO = "<< UAO << ","
                <<"RES0_3 = "<< RES0_3 << ","
                <<"V = "<< V << ","
                <<"C = "<< C << ","
                <<"Z = "<< Z << ","
                <<"N = "<< N
                  << "\n";
        }
        AS_MACRO static RegDSPSR_EL0 read();
        AS_MACRO RegDSPSR_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(DSPSR_EL0)
SETUP_REG_STD_UPDATE_READ(DSPSR_EL0)
SETUP_REG_STD_WRITE(DSPSR_EL0)



#endif // _________INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_COMMON_REGISTERS_H__
