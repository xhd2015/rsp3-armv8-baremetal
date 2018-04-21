//##======Automatically generated==========##
//##====../../../include/arch/common_aarch64/gen_register_class.py ../../../include/arch/common_aarch64/gicv3_registers.py ../../../include/arch/common_aarch64/gicv3_registers.h=========##
#ifndef _________INCLUDE_ARCH_COMMON_AARCH64_GICV3_REGISTERS_H__
#define _________INCLUDE_ARCH_COMMON_AARCH64_GICV3_REGISTERS_H__
static_assert(false,"deprecated");
#include <arch/common_aarch64/registers_defines.h>

class RegGICD_CTLR{
public:
        uint32_t		EnableGrp0:1;
        uint32_t		EnableGrp1NS:1;
        uint32_t		EnableGrp1S:1;
        uint32_t		RES0_0:1;
        uint32_t		ARE_S:1;
        uint32_t		ARE_NS:1;
        uint32_t		DS:1;
        uint32_t		E1NWF:1;
        uint32_t		RES0_1:23;
        uint32_t		RWP:1;
        AS_MACRO void dump()const
        {
            kout << "GICD_CTLR : "
                <<"EnableGrp0 = "<< EnableGrp0 << ","
                <<"EnableGrp1NS = "<< EnableGrp1NS << ","
                <<"EnableGrp1S = "<< EnableGrp1S << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"ARE_S = "<< ARE_S << ","
                <<"ARE_NS = "<< ARE_NS << ","
                <<"DS = "<< DS << ","
                <<"E1NWF = "<< E1NWF << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"RWP = "<< RWP
                  << "\n";
        }
        AS_MACRO static RegGICD_CTLR read();
        AS_MACRO RegGICD_CTLR  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_CTLR)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_CTLR)
SETUP_REG_MEM_MAPPED_WRITE(GICD_CTLR)



class RegICC_BPR0_EL1{
public:
        uint32_t		BinaryPoint:3;
        uint32_t		RES0:29;
        AS_MACRO void dump()const
        {
            kout << "ICC_BPR0_EL1 : "
                <<"BinaryPoint = "<< BinaryPoint << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_BPR0_EL1 read();
        AS_MACRO RegICC_BPR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_BPR0_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_BPR0_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_BPR0_EL1)



class RegICC_BPR1_EL1{
public:
        uint32_t		BinaryPoint:3;
        uint32_t		RES0:29;
        AS_MACRO void dump()const
        {
            kout << "ICC_BPR1_EL1 : "
                <<"BinaryPoint = "<< BinaryPoint << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_BPR1_EL1 read();
        AS_MACRO RegICC_BPR1_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_BPR1_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_BPR1_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_BPR1_EL1)



class RegICC_CTLR_EL3{
public:
        uint32_t		CBPR_EL1S:1;
        uint32_t		CBPR_EL1NS:1;
        uint32_t		EOImode_EL3:1;
        uint32_t		EOImode_EL1S:1;
        uint32_t		EOImode_EL1NS:1;
        uint32_t		RM:1;
        uint32_t		PMHE:1;
        uint32_t		RES0_0:1;
        uint32_t		PRIbits:3;
        uint32_t		IDbits:3;
        uint32_t		SEIS:1;
        uint32_t		A3V:1;
        uint32_t		RES0_1:1;
        uint32_t		nDS:1;
        uint32_t		RSS:1;
        uint32_t		RES0_2:13;
        AS_MACRO void dump()const
        {
            kout << "ICC_CTLR_EL3 : "
                <<"CBPR_EL1S = "<< CBPR_EL1S << ","
                <<"CBPR_EL1NS = "<< CBPR_EL1NS << ","
                <<"EOImode_EL3 = "<< EOImode_EL3 << ","
                <<"EOImode_EL1S = "<< EOImode_EL1S << ","
                <<"EOImode_EL1NS = "<< EOImode_EL1NS << ","
                <<"RM = "<< RM << ","
                <<"PMHE = "<< PMHE << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"PRIbits = "<< PRIbits << ","
                <<"IDbits = "<< IDbits << ","
                <<"SEIS = "<< SEIS << ","
                <<"A3V = "<< A3V << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"nDS = "<< nDS << ","
                <<"RSS = "<< RSS << ","
                <<"RES0_2 = "<< RES0_2
                  << "\n";
        }
        AS_MACRO static RegICC_CTLR_EL3 read();
        AS_MACRO RegICC_CTLR_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_CTLR_EL3)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_CTLR_EL3)
SETUP_REG_GCC_REPR_WRITE(ICC_CTLR_EL3)



class RegICC_CTLR_EL1{
public:
        uint32_t		CBPR:1;
        uint32_t		EOImode:1;
        uint32_t		RES0_0:4;
        uint32_t		PMHE:1;
        uint32_t		RES0_1:1;
        uint32_t		PRIbits:3;
        uint32_t		IDbits:3;
        uint32_t		SEIS:1;
        uint32_t		A3V:1;
        uint32_t		RES0_2:2;
        uint32_t		RSS:1;
        uint32_t		RES0_3:13;
        AS_MACRO void dump()const
        {
            kout << "ICC_CTLR_EL1 : "
                <<"CBPR = "<< CBPR << ","
                <<"EOImode = "<< EOImode << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"PMHE = "<< PMHE << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"PRIbits = "<< PRIbits << ","
                <<"IDbits = "<< IDbits << ","
                <<"SEIS = "<< SEIS << ","
                <<"A3V = "<< A3V << ","
                <<"RES0_2 = "<< RES0_2 << ","
                <<"RSS = "<< RSS << ","
                <<"RES0_3 = "<< RES0_3
                  << "\n";
        }
        AS_MACRO static RegICC_CTLR_EL1 read();
        AS_MACRO RegICC_CTLR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_CTLR_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_CTLR_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_CTLR_EL1)



class RegICC_DIR_EL1{
public:
        uint32_t		INTID:24;
        uint32_t		RES0:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_DIR_EL1 : "
                <<"INTID = "<< INTID << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_DIR_EL1 read();
        AS_MACRO RegICC_DIR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_DIR_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_DIR_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_DIR_EL1)



class RegICC_EOIR0_EL1{
public:
        uint32_t		INTID:24;
        uint32_t		RES0:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_EOIR0_EL1 : "
                <<"INTID = "<< INTID << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_EOIR0_EL1 read();
        AS_MACRO RegICC_EOIR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_EOIR0_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_EOIR0_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_EOIR0_EL1)



class RegICC_EOIR1_EL1{
public:
        uint32_t		INTID:24;
        uint32_t		RES0:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_EOIR1_EL1 : "
                <<"INTID = "<< INTID << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_EOIR1_EL1 read();
        AS_MACRO RegICC_EOIR1_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_EOIR1_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_EOIR1_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_EOIR1_EL1)



class RegICC_HPPIR0_EL1{
public:
        uint32_t		INTID:24;
        uint32_t		RES0:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_HPPIR0_EL1 : "
                <<"INTID = "<< INTID << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_HPPIR0_EL1 read();
        AS_MACRO RegICC_HPPIR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_HPPIR0_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_HPPIR0_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_HPPIR0_EL1)



class RegICC_HPPIR1_EL1{
public:
        uint32_t		INTID:24;
        uint32_t		RES0:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_HPPIR1_EL1 : "
                <<"INTID = "<< INTID << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_HPPIR1_EL1 read();
        AS_MACRO RegICC_HPPIR1_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_HPPIR1_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_HPPIR1_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_HPPIR1_EL1)



class RegICC_IAR0_EL1{
public:
        uint32_t		INTID:24;
        uint32_t		RES0:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_IAR0_EL1 : "
                <<"INTID = "<< INTID << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_IAR0_EL1 read();
        AS_MACRO RegICC_IAR0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_IAR0_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_IAR0_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_IAR0_EL1)



class RegICC_IAR1_EL1{
public:
        uint32_t		INTID:24;
        uint32_t		RES0:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_IAR1_EL1 : "
                <<"INTID = "<< INTID << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_IAR1_EL1 read();
        AS_MACRO RegICC_IAR1_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_IAR1_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_IAR1_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_IAR1_EL1)



class RegICC_IGRPEN0_EL1{
public:
        uint32_t		Enable:1;
        uint32_t		RES0:31;
        AS_MACRO void dump()const
        {
            kout << "ICC_IGRPEN0_EL1 : "
                <<"Enable = "<< Enable << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_IGRPEN0_EL1 read();
        AS_MACRO RegICC_IGRPEN0_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_IGRPEN0_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_IGRPEN0_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_IGRPEN0_EL1)



class RegICC_IGRPEN1_EL1{
public:
        uint32_t		Enable:1;
        uint32_t		RES0:31;
        AS_MACRO void dump()const
        {
            kout << "ICC_IGRPEN1_EL1 : "
                <<"Enable = "<< Enable << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_IGRPEN1_EL1 read();
        AS_MACRO RegICC_IGRPEN1_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_IGRPEN1_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_IGRPEN1_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_IGRPEN1_EL1)



class RegICC_IGRPEN1_EL3{
public:
        uint32_t		EnableGrp1NS:1;
        uint32_t		EnableGrp1S:1;
        uint32_t		RES0:30;
        AS_MACRO void dump()const
        {
            kout << "ICC_IGRPEN1_EL3 : "
                <<"EnableGrp1NS = "<< EnableGrp1NS << ","
                <<"EnableGrp1S = "<< EnableGrp1S << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_IGRPEN1_EL3 read();
        AS_MACRO RegICC_IGRPEN1_EL3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_IGRPEN1_EL3)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_IGRPEN1_EL3)
SETUP_REG_GCC_REPR_WRITE(ICC_IGRPEN1_EL3)



class RegICC_PMR_EL1{
public:
        uint32_t		Priortiy:8;
        uint32_t		RES0_0:24;
        AS_MACRO void dump()const
        {
            kout << "ICC_PMR_EL1 : "
                <<"Priortiy = "<< Priortiy << ","
                <<"RES0_0 = "<< RES0_0
                  << "\n";
        }
        AS_MACRO static RegICC_PMR_EL1 read();
        AS_MACRO RegICC_PMR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_PMR_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_PMR_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_PMR_EL1)



class RegICC_RPR_EL1{
public:
        uint32_t		Priortiy:8;
        uint32_t		RES0_0:24;
        AS_MACRO void dump()const
        {
            kout << "ICC_RPR_EL1 : "
                <<"Priortiy = "<< Priortiy << ","
                <<"RES0_0 = "<< RES0_0
                  << "\n";
        }
        AS_MACRO static RegICC_RPR_EL1 read();
        AS_MACRO RegICC_RPR_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_RPR_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_RPR_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_RPR_EL1)



class RegICC_SGI0R_EL1{
public:
        uint32_t		TargetList:16;
        uint32_t		Aff1:8;
        uint32_t		INTID:4;
        uint32_t		RES0_0:4;
        uint32_t		Aff2:8;
        uint32_t		IRM:1;
        uint32_t		RES0_1:3;
        uint32_t		RS:4;
        uint32_t		Aff3:8;
        uint32_t		RES0_2:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_SGI0R_EL1 : "
                <<"TargetList = "<< TargetList << ","
                <<"Aff1 = "<< Aff1 << ","
                <<"INTID = "<< INTID << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"Aff2 = "<< Aff2 << ","
                <<"IRM = "<< IRM << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"RS = "<< RS << ","
                <<"Aff3 = "<< Aff3 << ","
                <<"RES0_2 = "<< RES0_2
                  << "\n";
        }
        AS_MACRO RegICC_SGI0R_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_SGI0R_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_SGI0R_EL1)



class RegICC_SGI1R_EL1{
public:
        uint32_t		TargetList:16;
        uint32_t		Aff1:8;
        uint32_t		INTID:4;
        uint32_t		RES0_0:4;
        uint32_t		Aff2:8;
        uint32_t		IRM:1;
        uint32_t		RES0_1:3;
        uint32_t		RS:4;
        uint32_t		Aff3:8;
        uint32_t		RES0_2:8;
        AS_MACRO void dump()const
        {
            kout << "ICC_SGI1R_EL1 : "
                <<"TargetList = "<< TargetList << ","
                <<"Aff1 = "<< Aff1 << ","
                <<"INTID = "<< INTID << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"Aff2 = "<< Aff2 << ","
                <<"IRM = "<< IRM << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"RS = "<< RS << ","
                <<"Aff3 = "<< Aff3 << ","
                <<"RES0_2 = "<< RES0_2
                  << "\n";
        }
        AS_MACRO RegICC_SGI1R_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_SGI1R_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_SGI1R_EL1)



class RegICC_SRE_EL1{
public:
        uint32_t		SRE:1;
        uint32_t		DFB:1;
        uint32_t		DIB:1;
        uint32_t		RES0:29;
        AS_MACRO void dump()const
        {
            kout << "ICC_SRE_EL1 : "
                <<"SRE = "<< SRE << ","
                <<"DFB = "<< DFB << ","
                <<"DIB = "<< DIB << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegICC_SRE_EL1 read();
        AS_MACRO RegICC_SRE_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_GCC_REPR_READ(ICC_SRE_EL1)
SETUP_REG_GCC_REPR_UPDATE_READ(ICC_SRE_EL1)
SETUP_REG_GCC_REPR_WRITE(ICC_SRE_EL1)



class RegGICR_CTLR{
public:
        uint32_t		EnableLPIs:1;
        uint32_t		RES0_0:2;
        uint32_t		RWP:1;
        uint32_t		RES0_1:20;
        uint32_t		DPG0:1;
        uint32_t		DPG1NS:1;
        uint32_t		DPG1S:1;
        uint32_t		RES0_2:4;
        uint32_t		UWP:1;
        AS_MACRO void dump()const
        {
            kout << "GICR_CTLR : "
                <<"EnableLPIs = "<< EnableLPIs << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"RWP = "<< RWP << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"DPG0 = "<< DPG0 << ","
                <<"DPG1NS = "<< DPG1NS << ","
                <<"DPG1S = "<< DPG1S << ","
                <<"RES0_2 = "<< RES0_2 << ","
                <<"UWP = "<< UWP
                  << "\n";
        }
        AS_MACRO static RegGICR_CTLR read();
        AS_MACRO RegGICR_CTLR  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_CTLR)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_CTLR)
SETUP_REG_MEM_MAPPED_WRITE(GICR_CTLR)



class RegGICR_WAKER{
public:
        uint32_t		IMP_DEF_0:1;
        uint32_t		ProcessorSleep:1;
        uint32_t		ChildrenAsleep:1;
        uint32_t		RES0_0:28;
        uint32_t		IMP_DEF_1:1;
        AS_MACRO void dump()const
        {
            kout << "GICR_WAKER : "
                <<"IMP_DEF_0 = "<< IMP_DEF_0 << ","
                <<"ProcessorSleep = "<< ProcessorSleep << ","
                <<"ChildrenAsleep = "<< ChildrenAsleep << ","
                <<"RES0_0 = "<< RES0_0 << ","
                <<"IMP_DEF_1 = "<< IMP_DEF_1
                  << "\n";
        }
        AS_MACRO static RegGICR_WAKER read();
        AS_MACRO RegGICR_WAKER  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_WAKER)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_WAKER)
SETUP_REG_MEM_MAPPED_WRITE(GICR_WAKER)



class RegGICR_IGROUPR0{
public:
        uint32_t		InGrp:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_IGROUPR0 : "
                <<"InGrp = "<< InGrp
                  << "\n";
        }
        AS_MACRO static RegGICR_IGROUPR0 read();
        AS_MACRO RegGICR_IGROUPR0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IGROUPR0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IGROUPR0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IGROUPR0)



class RegGICR_ISENABLER0{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_ISENABLER0 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICR_ISENABLER0 read();
        AS_MACRO RegGICR_ISENABLER0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_ISENABLER0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_ISENABLER0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_ISENABLER0)



class RegGICD_IIDR{
public:
        uint32_t		Implementer:12;
        uint32_t		Revision:4;
        uint32_t		Variant:4;
        uint32_t		RES0:4;
        uint32_t		ProductID:8;
        AS_MACRO void dump()const
        {
            kout << "GICD_IIDR : "
                <<"Implementer = "<< Implementer << ","
                <<"Revision = "<< Revision << ","
                <<"Variant = "<< Variant << ","
                <<"RES0 = "<< RES0 << ","
                <<"ProductID = "<< ProductID
                  << "\n";
        }
        AS_MACRO static RegGICD_IIDR read();
        AS_MACRO RegGICD_IIDR  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_IIDR)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_IIDR)
SETUP_REG_MEM_MAPPED_WRITE(GICD_IIDR)



class RegGICR_ICENABLER0{
public:
        uint32_t		ClearEnables:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_ICENABLER0 : "
                <<"ClearEnables = "<< Hex(ClearEnables)
                  << "\n";
        }
        AS_MACRO static RegGICR_ICENABLER0 read();
        AS_MACRO RegGICR_ICENABLER0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_ICENABLER0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_ICENABLER0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_ICENABLER0)



class RegGICR_ISPENDR0{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_ISPENDR0 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICR_ISPENDR0 read();
        AS_MACRO RegGICR_ISPENDR0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_ISPENDR0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_ISPENDR0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_ISPENDR0)



class RegGICR_ISACTIVER0{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_ISACTIVER0 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICR_ISACTIVER0 read();
        AS_MACRO RegGICR_ISACTIVER0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_ISACTIVER0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_ISACTIVER0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_ISACTIVER0)



class RegGICR_ICFGR0{
public:
        uint32_t		Configs:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_ICFGR0 : "
                <<"Configs = "<< Hex(Configs)
                  << "\n";
        }
        AS_MACRO static RegGICR_ICFGR0 read();
        AS_MACRO RegGICR_ICFGR0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_ICFGR0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_ICFGR0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_ICFGR0)



class RegGICR_ICFGR1{
public:
        uint32_t		Configs:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_ICFGR1 : "
                <<"Configs = "<< Hex(Configs)
                  << "\n";
        }
        AS_MACRO static RegGICR_ICFGR1 read();
        AS_MACRO RegGICR_ICFGR1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_ICFGR1)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_ICFGR1)
SETUP_REG_MEM_MAPPED_WRITE(GICR_ICFGR1)



class RegGICR_ICACTIVER0{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICR_ICACTIVER0 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICR_ICACTIVER0 read();
        AS_MACRO RegGICR_ICACTIVER0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_ICACTIVER0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_ICACTIVER0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_ICACTIVER0)



class RegGICR_IPRIORITYR0{
public:
        uint32_t		p0:8;
        uint32_t		p1:8;
        uint32_t		p2:8;
        uint32_t		p3:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR0 : "
                <<"p0 = "<< p0 << ","
                <<"p1 = "<< p1 << ","
                <<"p2 = "<< p2 << ","
                <<"p3 = "<< p3
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR0 read();
        AS_MACRO RegGICR_IPRIORITYR0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR0)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR0)



class RegGICR_IPRIORITYR1{
public:
        uint32_t		p4:8;
        uint32_t		p5:8;
        uint32_t		p6:8;
        uint32_t		p7:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR1 : "
                <<"p4 = "<< p4 << ","
                <<"p5 = "<< p5 << ","
                <<"p6 = "<< p6 << ","
                <<"p7 = "<< p7
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR1 read();
        AS_MACRO RegGICR_IPRIORITYR1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR1)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR1)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR1)



class RegGICR_IPRIORITYR2{
public:
        uint32_t		p8:8;
        uint32_t		p9:8;
        uint32_t		p10:8;
        uint32_t		p11:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR2 : "
                <<"p8 = "<< p8 << ","
                <<"p9 = "<< p9 << ","
                <<"p10 = "<< p10 << ","
                <<"p11 = "<< p11
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR2 read();
        AS_MACRO RegGICR_IPRIORITYR2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR2)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR2)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR2)



class RegGICR_IPRIORITYR3{
public:
        uint32_t		p12:8;
        uint32_t		p13:8;
        uint32_t		p14:8;
        uint32_t		p15:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR3 : "
                <<"p12 = "<< p12 << ","
                <<"p13 = "<< p13 << ","
                <<"p14 = "<< p14 << ","
                <<"p15 = "<< p15
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR3 read();
        AS_MACRO RegGICR_IPRIORITYR3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR3)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR3)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR3)



class RegGICR_IPRIORITYR4{
public:
        uint32_t		p16:8;
        uint32_t		p17:8;
        uint32_t		p18:8;
        uint32_t		p19:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR4 : "
                <<"p16 = "<< p16 << ","
                <<"p17 = "<< p17 << ","
                <<"p18 = "<< p18 << ","
                <<"p19 = "<< p19
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR4 read();
        AS_MACRO RegGICR_IPRIORITYR4  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR4)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR4)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR4)



class RegGICR_IPRIORITYR5{
public:
        uint32_t		p20:8;
        uint32_t		p21:8;
        uint32_t		p22:8;
        uint32_t		p23:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR5 : "
                <<"p20 = "<< p20 << ","
                <<"p21 = "<< p21 << ","
                <<"p22 = "<< p22 << ","
                <<"p23 = "<< p23
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR5 read();
        AS_MACRO RegGICR_IPRIORITYR5  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR5)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR5)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR5)



class RegGICR_IPRIORITYR6{
public:
        uint32_t		p24:8;
        uint32_t		p25:8;
        uint32_t		p26:8;
        uint32_t		p27:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR6 : "
                <<"p24 = "<< p24 << ","
                <<"p25 = "<< p25 << ","
                <<"p26 = "<< p26 << ","
                <<"p27 = "<< p27
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR6 read();
        AS_MACRO RegGICR_IPRIORITYR6  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR6)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR6)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR6)



class RegGICR_IPRIORITYR7{
public:
        uint32_t		p28:8;
        uint32_t		p29:8;
        uint32_t		p30:8;
        uint32_t		p31:8;
        AS_MACRO void dump()const
        {
            kout << "GICR_IPRIORITYR7 : "
                <<"p28 = "<< p28 << ","
                <<"p29 = "<< p29 << ","
                <<"p30 = "<< p30 << ","
                <<"p31 = "<< p31
                  << "\n";
        }
        AS_MACRO static RegGICR_IPRIORITYR7 read();
        AS_MACRO RegGICR_IPRIORITYR7  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICR_IPRIORITYR7)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICR_IPRIORITYR7)
SETUP_REG_MEM_MAPPED_WRITE(GICR_IPRIORITYR7)



class RegGICD_ISENABLER0{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER0 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER0 read();
        AS_MACRO RegGICD_ISENABLER0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER0)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER0)



class RegGICD_ISENABLER1{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER1 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER1 read();
        AS_MACRO RegGICD_ISENABLER1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER1)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER1)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER1)



class RegGICD_ISENABLER2{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER2 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER2 read();
        AS_MACRO RegGICD_ISENABLER2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER2)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER2)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER2)



class RegGICD_ISENABLER3{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER3 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER3 read();
        AS_MACRO RegGICD_ISENABLER3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER3)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER3)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER3)



class RegGICD_ISENABLER4{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER4 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER4 read();
        AS_MACRO RegGICD_ISENABLER4  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER4)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER4)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER4)



class RegGICD_ISENABLER5{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER5 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER5 read();
        AS_MACRO RegGICD_ISENABLER5  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER5)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER5)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER5)



class RegGICD_ISENABLER6{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER6 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER6 read();
        AS_MACRO RegGICD_ISENABLER6  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER6)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER6)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER6)



class RegGICD_ISENABLER7{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER7 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER7 read();
        AS_MACRO RegGICD_ISENABLER7  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER7)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER7)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER7)



class RegGICD_ISENABLER8{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER8 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER8 read();
        AS_MACRO RegGICD_ISENABLER8  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER8)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER8)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER8)



class RegGICD_ISENABLER9{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER9 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER9 read();
        AS_MACRO RegGICD_ISENABLER9  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER9)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER9)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER9)



class RegGICD_ISENABLER10{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER10 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER10 read();
        AS_MACRO RegGICD_ISENABLER10  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER10)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER10)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER10)



class RegGICD_ISENABLER11{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER11 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER11 read();
        AS_MACRO RegGICD_ISENABLER11  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER11)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER11)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER11)



class RegGICD_ISENABLER12{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER12 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER12 read();
        AS_MACRO RegGICD_ISENABLER12  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER12)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER12)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER12)



class RegGICD_ISENABLER13{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER13 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER13 read();
        AS_MACRO RegGICD_ISENABLER13  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER13)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER13)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER13)



class RegGICD_ISENABLER14{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER14 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER14 read();
        AS_MACRO RegGICD_ISENABLER14  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER14)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER14)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER14)



class RegGICD_ISENABLER15{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER15 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER15 read();
        AS_MACRO RegGICD_ISENABLER15  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER15)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER15)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER15)



class RegGICD_ISENABLER16{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER16 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER16 read();
        AS_MACRO RegGICD_ISENABLER16  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER16)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER16)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER16)



class RegGICD_ISENABLER17{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER17 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER17 read();
        AS_MACRO RegGICD_ISENABLER17  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER17)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER17)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER17)



class RegGICD_ISENABLER18{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER18 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER18 read();
        AS_MACRO RegGICD_ISENABLER18  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER18)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER18)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER18)



class RegGICD_ISENABLER19{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER19 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER19 read();
        AS_MACRO RegGICD_ISENABLER19  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER19)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER19)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER19)



class RegGICD_ISENABLER20{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER20 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER20 read();
        AS_MACRO RegGICD_ISENABLER20  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER20)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER20)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER20)



class RegGICD_ISENABLER21{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER21 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER21 read();
        AS_MACRO RegGICD_ISENABLER21  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER21)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER21)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER21)



class RegGICD_ISENABLER22{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER22 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER22 read();
        AS_MACRO RegGICD_ISENABLER22  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER22)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER22)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER22)



class RegGICD_ISENABLER23{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER23 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER23 read();
        AS_MACRO RegGICD_ISENABLER23  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER23)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER23)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER23)



class RegGICD_ISENABLER24{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER24 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER24 read();
        AS_MACRO RegGICD_ISENABLER24  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER24)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER24)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER24)



class RegGICD_ISENABLER25{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER25 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER25 read();
        AS_MACRO RegGICD_ISENABLER25  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER25)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER25)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER25)



class RegGICD_ISENABLER26{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER26 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER26 read();
        AS_MACRO RegGICD_ISENABLER26  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER26)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER26)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER26)



class RegGICD_ISENABLER27{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER27 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER27 read();
        AS_MACRO RegGICD_ISENABLER27  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER27)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER27)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER27)



class RegGICD_ISENABLER28{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER28 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER28 read();
        AS_MACRO RegGICD_ISENABLER28  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER28)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER28)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER28)



class RegGICD_ISENABLER29{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER29 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER29 read();
        AS_MACRO RegGICD_ISENABLER29  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER29)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER29)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER29)



class RegGICD_ISENABLER30{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER30 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER30 read();
        AS_MACRO RegGICD_ISENABLER30  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER30)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER30)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER30)



class RegGICD_ISENABLER31{
public:
        uint32_t		Enables:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISENABLER31 : "
                <<"Enables = "<< Hex(Enables)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISENABLER31 read();
        AS_MACRO RegGICD_ISENABLER31  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISENABLER31)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISENABLER31)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISENABLER31)



class RegGICD_ISPENDR0{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR0 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR0 read();
        AS_MACRO RegGICD_ISPENDR0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR0)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR0)



class RegGICD_ISPENDR1{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR1 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR1 read();
        AS_MACRO RegGICD_ISPENDR1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR1)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR1)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR1)



class RegGICD_ISPENDR2{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR2 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR2 read();
        AS_MACRO RegGICD_ISPENDR2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR2)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR2)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR2)



class RegGICD_ISPENDR3{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR3 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR3 read();
        AS_MACRO RegGICD_ISPENDR3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR3)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR3)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR3)



class RegGICD_ISPENDR4{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR4 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR4 read();
        AS_MACRO RegGICD_ISPENDR4  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR4)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR4)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR4)



class RegGICD_ISPENDR5{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR5 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR5 read();
        AS_MACRO RegGICD_ISPENDR5  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR5)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR5)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR5)



class RegGICD_ISPENDR6{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR6 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR6 read();
        AS_MACRO RegGICD_ISPENDR6  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR6)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR6)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR6)



class RegGICD_ISPENDR7{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR7 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR7 read();
        AS_MACRO RegGICD_ISPENDR7  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR7)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR7)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR7)



class RegGICD_ISPENDR8{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR8 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR8 read();
        AS_MACRO RegGICD_ISPENDR8  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR8)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR8)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR8)



class RegGICD_ISPENDR9{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR9 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR9 read();
        AS_MACRO RegGICD_ISPENDR9  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR9)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR9)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR9)



class RegGICD_ISPENDR10{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR10 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR10 read();
        AS_MACRO RegGICD_ISPENDR10  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR10)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR10)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR10)



class RegGICD_ISPENDR11{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR11 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR11 read();
        AS_MACRO RegGICD_ISPENDR11  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR11)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR11)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR11)



class RegGICD_ISPENDR12{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR12 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR12 read();
        AS_MACRO RegGICD_ISPENDR12  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR12)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR12)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR12)



class RegGICD_ISPENDR13{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR13 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR13 read();
        AS_MACRO RegGICD_ISPENDR13  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR13)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR13)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR13)



class RegGICD_ISPENDR14{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR14 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR14 read();
        AS_MACRO RegGICD_ISPENDR14  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR14)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR14)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR14)



class RegGICD_ISPENDR15{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR15 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR15 read();
        AS_MACRO RegGICD_ISPENDR15  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR15)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR15)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR15)



class RegGICD_ISPENDR16{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR16 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR16 read();
        AS_MACRO RegGICD_ISPENDR16  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR16)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR16)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR16)



class RegGICD_ISPENDR17{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR17 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR17 read();
        AS_MACRO RegGICD_ISPENDR17  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR17)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR17)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR17)



class RegGICD_ISPENDR18{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR18 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR18 read();
        AS_MACRO RegGICD_ISPENDR18  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR18)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR18)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR18)



class RegGICD_ISPENDR19{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR19 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR19 read();
        AS_MACRO RegGICD_ISPENDR19  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR19)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR19)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR19)



class RegGICD_ISPENDR20{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR20 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR20 read();
        AS_MACRO RegGICD_ISPENDR20  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR20)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR20)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR20)



class RegGICD_ISPENDR21{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR21 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR21 read();
        AS_MACRO RegGICD_ISPENDR21  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR21)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR21)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR21)



class RegGICD_ISPENDR22{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR22 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR22 read();
        AS_MACRO RegGICD_ISPENDR22  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR22)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR22)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR22)



class RegGICD_ISPENDR23{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR23 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR23 read();
        AS_MACRO RegGICD_ISPENDR23  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR23)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR23)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR23)



class RegGICD_ISPENDR24{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR24 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR24 read();
        AS_MACRO RegGICD_ISPENDR24  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR24)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR24)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR24)



class RegGICD_ISPENDR25{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR25 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR25 read();
        AS_MACRO RegGICD_ISPENDR25  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR25)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR25)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR25)



class RegGICD_ISPENDR26{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR26 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR26 read();
        AS_MACRO RegGICD_ISPENDR26  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR26)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR26)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR26)



class RegGICD_ISPENDR27{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR27 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR27 read();
        AS_MACRO RegGICD_ISPENDR27  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR27)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR27)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR27)



class RegGICD_ISPENDR28{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR28 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR28 read();
        AS_MACRO RegGICD_ISPENDR28  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR28)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR28)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR28)



class RegGICD_ISPENDR29{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR29 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR29 read();
        AS_MACRO RegGICD_ISPENDR29  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR29)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR29)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR29)



class RegGICD_ISPENDR30{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR30 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR30 read();
        AS_MACRO RegGICD_ISPENDR30  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR30)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR30)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR30)



class RegGICD_ISPENDR31{
public:
        uint32_t		Pendings:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISPENDR31 : "
                <<"Pendings = "<< Hex(Pendings)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISPENDR31 read();
        AS_MACRO RegGICD_ISPENDR31  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISPENDR31)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISPENDR31)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISPENDR31)



class RegGICD_ISACTIVER0{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER0 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER0 read();
        AS_MACRO RegGICD_ISACTIVER0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER0)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER0)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER0)



class RegGICD_ISACTIVER1{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER1 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER1 read();
        AS_MACRO RegGICD_ISACTIVER1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER1)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER1)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER1)



class RegGICD_ISACTIVER2{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER2 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER2 read();
        AS_MACRO RegGICD_ISACTIVER2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER2)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER2)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER2)



class RegGICD_ISACTIVER3{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER3 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER3 read();
        AS_MACRO RegGICD_ISACTIVER3  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER3)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER3)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER3)



class RegGICD_ISACTIVER4{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER4 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER4 read();
        AS_MACRO RegGICD_ISACTIVER4  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER4)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER4)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER4)



class RegGICD_ISACTIVER5{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER5 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER5 read();
        AS_MACRO RegGICD_ISACTIVER5  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER5)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER5)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER5)



class RegGICD_ISACTIVER6{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER6 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER6 read();
        AS_MACRO RegGICD_ISACTIVER6  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER6)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER6)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER6)



class RegGICD_ISACTIVER7{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER7 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER7 read();
        AS_MACRO RegGICD_ISACTIVER7  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER7)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER7)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER7)



class RegGICD_ISACTIVER8{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER8 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER8 read();
        AS_MACRO RegGICD_ISACTIVER8  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER8)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER8)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER8)



class RegGICD_ISACTIVER9{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER9 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER9 read();
        AS_MACRO RegGICD_ISACTIVER9  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER9)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER9)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER9)



class RegGICD_ISACTIVER10{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER10 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER10 read();
        AS_MACRO RegGICD_ISACTIVER10  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER10)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER10)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER10)



class RegGICD_ISACTIVER11{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER11 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER11 read();
        AS_MACRO RegGICD_ISACTIVER11  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER11)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER11)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER11)



class RegGICD_ISACTIVER12{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER12 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER12 read();
        AS_MACRO RegGICD_ISACTIVER12  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER12)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER12)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER12)



class RegGICD_ISACTIVER13{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER13 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER13 read();
        AS_MACRO RegGICD_ISACTIVER13  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER13)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER13)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER13)



class RegGICD_ISACTIVER14{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER14 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER14 read();
        AS_MACRO RegGICD_ISACTIVER14  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER14)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER14)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER14)



class RegGICD_ISACTIVER15{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER15 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER15 read();
        AS_MACRO RegGICD_ISACTIVER15  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER15)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER15)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER15)



class RegGICD_ISACTIVER16{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER16 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER16 read();
        AS_MACRO RegGICD_ISACTIVER16  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER16)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER16)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER16)



class RegGICD_ISACTIVER17{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER17 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER17 read();
        AS_MACRO RegGICD_ISACTIVER17  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER17)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER17)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER17)



class RegGICD_ISACTIVER18{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER18 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER18 read();
        AS_MACRO RegGICD_ISACTIVER18  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER18)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER18)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER18)



class RegGICD_ISACTIVER19{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER19 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER19 read();
        AS_MACRO RegGICD_ISACTIVER19  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER19)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER19)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER19)



class RegGICD_ISACTIVER20{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER20 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER20 read();
        AS_MACRO RegGICD_ISACTIVER20  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER20)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER20)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER20)



class RegGICD_ISACTIVER21{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER21 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER21 read();
        AS_MACRO RegGICD_ISACTIVER21  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER21)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER21)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER21)



class RegGICD_ISACTIVER22{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER22 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER22 read();
        AS_MACRO RegGICD_ISACTIVER22  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER22)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER22)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER22)



class RegGICD_ISACTIVER23{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER23 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER23 read();
        AS_MACRO RegGICD_ISACTIVER23  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER23)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER23)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER23)



class RegGICD_ISACTIVER24{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER24 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER24 read();
        AS_MACRO RegGICD_ISACTIVER24  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER24)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER24)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER24)



class RegGICD_ISACTIVER25{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER25 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER25 read();
        AS_MACRO RegGICD_ISACTIVER25  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER25)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER25)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER25)



class RegGICD_ISACTIVER26{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER26 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER26 read();
        AS_MACRO RegGICD_ISACTIVER26  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER26)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER26)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER26)



class RegGICD_ISACTIVER27{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER27 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER27 read();
        AS_MACRO RegGICD_ISACTIVER27  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER27)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER27)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER27)



class RegGICD_ISACTIVER28{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER28 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER28 read();
        AS_MACRO RegGICD_ISACTIVER28  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER28)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER28)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER28)



class RegGICD_ISACTIVER29{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER29 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER29 read();
        AS_MACRO RegGICD_ISACTIVER29  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER29)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER29)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER29)



class RegGICD_ISACTIVER30{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER30 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER30 read();
        AS_MACRO RegGICD_ISACTIVER30  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER30)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER30)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER30)



class RegGICD_ISACTIVER31{
public:
        uint32_t		Actives:32;
        AS_MACRO void dump()const
        {
            kout << "GICD_ISACTIVER31 : "
                <<"Actives = "<< Hex(Actives)
                  << "\n";
        }
        AS_MACRO static RegGICD_ISACTIVER31 read();
        AS_MACRO RegGICD_ISACTIVER31  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_MEM_MAPPED_READ(GICD_ISACTIVER31)
SETUP_REG_MEM_MAPPED_UPDATE_READ(GICD_ISACTIVER31)
SETUP_REG_MEM_MAPPED_WRITE(GICD_ISACTIVER31)



#endif // _________INCLUDE_ARCH_COMMON_AARCH64_GICV3_REGISTERS_H__
