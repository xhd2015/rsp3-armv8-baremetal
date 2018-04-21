//##======Automatically generated==========##
//##====../../../include/arch/common_aarch64/gen_register_class.py ../../../include/arch/common_aarch64/timer_registers.py ../../../include/arch/common_aarch64/timer_registers.h=========##
#ifndef _________INCLUDE_ARCH_COMMON_AARCH64_TIMER_REGISTERS_H__
#define _________INCLUDE_ARCH_COMMON_AARCH64_TIMER_REGISTERS_H__
static_assert(false,"deprecated");
#include <arch/common_aarch64/registers_defines.h>

class RegCNTFRQ_EL0{
public:
        uint32_t		ClockFrq:32;
        AS_MACRO void dump()const
        {
            kout << "CNTFRQ_EL0 : "
                <<"ClockFrq = "<< ClockFrq
                  << "\n";
        }
        AS_MACRO static RegCNTFRQ_EL0 read();
        AS_MACRO RegCNTFRQ_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTFRQ_EL0)
SETUP_REG_STD_UPDATE_READ(CNTFRQ_EL0)
SETUP_REG_STD_WRITE(CNTFRQ_EL0)



class RegCNTHCTL_EL2{
public:
        uint32_t		EL1PCTEN:1;
        uint32_t		EL1PCEN:1;
        uint32_t		EVNTEN:1;
        uint32_t		EVNTDIR:1;
        uint32_t		EVNTI:4;
        uint32_t		RES0:24;
        AS_MACRO void dump()const
        {
            kout << "CNTHCTL_EL2 : "
                <<"EL1PCTEN = "<< EL1PCTEN << ","
                <<"EL1PCEN = "<< EL1PCEN << ","
                <<"EVNTEN = "<< EVNTEN << ","
                <<"EVNTDIR = "<< EVNTDIR << ","
                <<"EVNTI = "<< EVNTI << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegCNTHCTL_EL2 read();
        AS_MACRO RegCNTHCTL_EL2  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTHCTL_EL2)
SETUP_REG_STD_UPDATE_READ(CNTHCTL_EL2)
SETUP_REG_STD_WRITE(CNTHCTL_EL2)



class RegCNTKCTL_EL1{
public:
        uint32_t		EL10PCTEN:1;
        uint32_t		EL0VCTEN:1;
        uint32_t		EVNTEN:1;
        uint32_t		EVNTDIR:1;
        uint32_t		EVNTI:4;
        uint32_t		EL0VTEN:1;
        uint32_t		EL0PTEN:1;
        uint32_t		RES0:22;
        AS_MACRO void dump()const
        {
            kout << "CNTKCTL_EL1 : "
                <<"EL10PCTEN = "<< EL10PCTEN << ","
                <<"EL0VCTEN = "<< EL0VCTEN << ","
                <<"EVNTEN = "<< EVNTEN << ","
                <<"EVNTDIR = "<< EVNTDIR << ","
                <<"EVNTI = "<< EVNTI << ","
                <<"EL0VTEN = "<< EL0VTEN << ","
                <<"EL0PTEN = "<< EL0PTEN << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegCNTKCTL_EL1 read();
        AS_MACRO RegCNTKCTL_EL1  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTKCTL_EL1)
SETUP_REG_STD_UPDATE_READ(CNTKCTL_EL1)
SETUP_REG_STD_WRITE(CNTKCTL_EL1)



class RegCNTP_CTL_EL0{
public:
        uint32_t		ENABLE:1;
        uint32_t		IMASK:1;
        uint32_t		ISTATUS:1;
        uint32_t		RES0:29;
        AS_MACRO void dump()const
        {
            kout << "CNTP_CTL_EL0 : "
                <<"ENABLE = "<< ENABLE << ","
                <<"IMASK = "<< IMASK << ","
                <<"ISTATUS = "<< ISTATUS << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegCNTP_CTL_EL0 read();
        AS_MACRO RegCNTP_CTL_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTP_CTL_EL0)
SETUP_REG_STD_UPDATE_READ(CNTP_CTL_EL0)
SETUP_REG_STD_WRITE(CNTP_CTL_EL0)



class RegCNTP_CVAL_EL0{
public:
        uint64_t		CompareValue:64;
        AS_MACRO void dump()const
        {
            kout << "CNTP_CVAL_EL0 : "
                <<"CompareValue = "<< CompareValue
                  << "\n";
        }
        AS_MACRO static RegCNTP_CVAL_EL0 read();
        AS_MACRO RegCNTP_CVAL_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTP_CVAL_EL0)
SETUP_REG_STD_UPDATE_READ(CNTP_CVAL_EL0)
SETUP_REG_STD_WRITE(CNTP_CVAL_EL0)



class RegCNTP_TVAL_EL0{
public:
        uint64_t		TimerValue:64;
        AS_MACRO void dump()const
        {
            kout << "CNTP_TVAL_EL0 : "
                <<"TimerValue = "<< TimerValue
                  << "\n";
        }
        AS_MACRO static RegCNTP_TVAL_EL0 read();
        AS_MACRO RegCNTP_TVAL_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTP_TVAL_EL0)
SETUP_REG_STD_UPDATE_READ(CNTP_TVAL_EL0)
SETUP_REG_STD_WRITE(CNTP_TVAL_EL0)



class RegCNTPCT_EL0{
public:
        uint64_t		PhysicalCount:64;
        AS_MACRO void dump()const
        {
            kout << "CNTPCT_EL0 : "
                <<"PhysicalCount = "<< PhysicalCount
                  << "\n";
        }
        AS_MACRO static RegCNTPCT_EL0 read();
        AS_MACRO RegCNTPCT_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTPCT_EL0)
SETUP_REG_STD_UPDATE_READ(CNTPCT_EL0)
SETUP_REG_STD_WRITE(CNTPCT_EL0)



class RegCNTVCT_EL0{
public:
        uint64_t		VirtualCountValue:64;
        AS_MACRO void dump()const
        {
            kout << "CNTVCT_EL0 : "
                <<"VirtualCountValue = "<< VirtualCountValue
                  << "\n";
        }
        AS_MACRO static RegCNTVCT_EL0 read();
        AS_MACRO RegCNTVCT_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTVCT_EL0)
SETUP_REG_STD_UPDATE_READ(CNTVCT_EL0)
SETUP_REG_STD_WRITE(CNTVCT_EL0)



class RegCNTV_CTL_EL0{
public:
        uint32_t		ENABLE:1;
        uint32_t		IMASK:1;
        uint32_t		ISTATUS:1;
        uint32_t		RES0:29;
        AS_MACRO void dump()const
        {
            kout << "CNTV_CTL_EL0 : "
                <<"ENABLE = "<< ENABLE << ","
                <<"IMASK = "<< IMASK << ","
                <<"ISTATUS = "<< ISTATUS << ","
                <<"RES0 = "<< RES0
                  << "\n";
        }
        AS_MACRO static RegCNTV_CTL_EL0 read();
        AS_MACRO RegCNTV_CTL_EL0  updateRead();
        AS_MACRO void write()const;
}__attribute__((packed));
SETUP_REG_STD_READ(CNTV_CTL_EL0)
SETUP_REG_STD_UPDATE_READ(CNTV_CTL_EL0)
SETUP_REG_STD_WRITE(CNTV_CTL_EL0)



#endif // _________INCLUDE_ARCH_COMMON_AARCH64_TIMER_REGISTERS_H__
