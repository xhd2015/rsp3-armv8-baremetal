//##======Automatically generated==========##
//##====../../../include/arch/common_aarch64/gen_register_class.py ../../../include/arch/common_aarch64/vmsa_descriptors.py ../../../include/arch/common_aarch64/vmsa_descriptors.h=========##
#ifndef _________INCLUDE_ARCH_COMMON_AARCH64_VMSA_DESCRIPTORS_H__
#define _________INCLUDE_ARCH_COMMON_AARCH64_VMSA_DESCRIPTORS_H__
static_assert(false,"deprecated");
#include <arch/common_aarch64/registers_defines.h>

class RegDescriptor4KBL0{
public:
        uint64_t		Valid:1;
        uint64_t		IsTable:1;
        uint64_t		Ignored_0:10;
        uint64_t		NextLevelTableAddr:36;
        uint64_t		RES0:4;
        uint64_t		Ignored_1:7;
        uint64_t		PXNTable:1;
        uint64_t		XNTable:1;
        uint64_t		APTable:2;
        uint64_t		NSTable:1;
        AS_MACRO void dump()const
        {
            kout << "Descriptor4KBL0 : "
                <<"Valid = "<< Valid << ","
                <<"IsTable = "<< IsTable << ","
                <<"Ignored_0 = "<< Ignored_0 << ","
                <<"NextLevelTableAddr = "<< Hex(NextLevelTableAddr) << ","
                <<"RES0 = "<< RES0 << ","
                <<"Ignored_1 = "<< Ignored_1 << ","
                <<"PXNTable = "<< PXNTable << ","
                <<"XNTable = "<< XNTable << ","
                <<"APTable = "<< APTable << ","
                <<"NSTable = "<< NSTable
                  << "\n";
        }
        AS_MACRO static RegDescriptor4KBL0 read(void *p);
        AS_MACRO static RegDescriptor4KBL0 read(size_t p);
        AS_MACRO void write(void *p)const;
        AS_MACRO void write(size_t p)const;
}__attribute__((packed));
SETUP_REG_ANY_MEM_READ(Descriptor4KBL0)
SETUP_REG_ANY_MEM_WRITE(Descriptor4KBL0)



class RegDescriptor4KBL1{
public:
    union{
        struct{
        uint64_t		Valid:1;
        uint64_t		IsTable:1;
        uint64_t		AttrIndex:3;
        uint64_t		NS:1;
        uint64_t		AP:2;
        uint64_t		SH:2;
        uint64_t		AF:1;
        uint64_t		nG:1;
        uint64_t		RES0_0:18;
        uint64_t		OutputAddr:18;
        uint64_t		RES0_1:4;
        uint64_t		Contiguous:1;
        uint64_t		PXN:1;
        uint64_t		UXN:1;
        uint64_t		Reserved:4;
        uint64_t		PBHA:4;
        uint64_t		Ignored:1;
       }__attribute__((packed)) S0;

        struct{
        uint64_t		Valid:1;
        uint64_t		IsTable:1;
        uint64_t		Ignored_0:10;
        uint64_t		NextLevelTableAddr:36;
        uint64_t		RES0:4;
        uint64_t		Ignored_1:7;
        uint64_t		PXNTable:1;
        uint64_t		XNTable:1;
        uint64_t		APTable:2;
        uint64_t		NSTable:1;
       }__attribute__((packed)) S1;

    }__attribute__((packed));

        AS_MACRO void dump()const
        {
            kout << "Descriptor4KBL1 : ";
            if(S0.IsTable==0)
            {
             kout  
                <<"S0.Valid = "<< S0.Valid << ","
                <<"S0.IsTable = "<< S0.IsTable << ","
                <<"S0.AttrIndex = "<< S0.AttrIndex << ","
                <<"S0.NS = "<< S0.NS << ","
                <<"S0.AP = "<< S0.AP << ","
                <<"S0.SH = "<< S0.SH << ","
                <<"S0.AF = "<< S0.AF << ","
                <<"S0.nG = "<< S0.nG << ","
                <<"S0.RES0_0 = "<< S0.RES0_0 << ","
                <<"S0.OutputAddr = "<< Hex(S0.OutputAddr) << ","
                <<"S0.RES0_1 = "<< S0.RES0_1 << ","
                <<"S0.Contiguous = "<< S0.Contiguous << ","
                <<"S0.PXN = "<< S0.PXN << ","
                <<"S0.UXN = "<< S0.UXN << ","
                <<"S0.Reserved = "<< S0.Reserved << ","
                <<"S0.PBHA = "<< S0.PBHA << ","
                <<"S0.Ignored = "<< S0.Ignored;
            }
            else
            {
             kout  
                <<"S1.Valid = "<< S1.Valid << ","
                <<"S1.IsTable = "<< S1.IsTable << ","
                <<"S1.Ignored_0 = "<< S1.Ignored_0 << ","
                <<"S1.NextLevelTableAddr = "<< Hex(S1.NextLevelTableAddr) << ","
                <<"S1.RES0 = "<< S1.RES0 << ","
                <<"S1.Ignored_1 = "<< S1.Ignored_1 << ","
                <<"S1.PXNTable = "<< S1.PXNTable << ","
                <<"S1.XNTable = "<< S1.XNTable << ","
                <<"S1.APTable = "<< S1.APTable << ","
                <<"S1.NSTable = "<< S1.NSTable;
            }
             kout << "\n";
        }
        AS_MACRO static RegDescriptor4KBL1 read(void *p);
        AS_MACRO static RegDescriptor4KBL1 read(size_t p);
        AS_MACRO void write(void *p)const;
        AS_MACRO void write(size_t p)const;
}__attribute__((packed));
SETUP_REG_ANY_MEM_READ(Descriptor4KBL1)
SETUP_REG_ANY_MEM_WRITE(Descriptor4KBL1)



class RegDescriptor4KBL2{
public:
    union{
        struct{
        uint64_t		Valid:1;
        uint64_t		IsTable:1;
        uint64_t		NS:1;
        uint64_t		AP:2;
        uint64_t		SH:2;
        uint64_t		AF:1;
        uint64_t		nG:1;
        uint64_t		RES0_0:9;
        uint64_t		OutputAddr:27;
        uint64_t		RES0_1:4;
        uint64_t		Contiguous:1;
        uint64_t		PXN:1;
        uint64_t		UXN:1;
        uint64_t		Reserved:4;
        uint64_t		PBHA:4;
        uint64_t		Ignored:1;
       }__attribute__((packed)) S0;

        struct{
        uint64_t		Valid:1;
        uint64_t		IsTable:1;
        uint64_t		Ignored_0:10;
        uint64_t		NextLevelTableAddr:36;
        uint64_t		RES0:4;
        uint64_t		Ignored_1:7;
        uint64_t		PXNTable:1;
        uint64_t		XNTable:1;
        uint64_t		APTable:2;
        uint64_t		NSTable:1;
       }__attribute__((packed)) S1;

    }__attribute__((packed));

        AS_MACRO void dump()const
        {
            kout << "Descriptor4KBL2 : ";
            if(S0.IsTable==0)
            {
             kout  
                <<"S0.Valid = "<< S0.Valid << ","
                <<"S0.IsTable = "<< S0.IsTable << ","
                <<"S0.NS = "<< S0.NS << ","
                <<"S0.AP = "<< S0.AP << ","
                <<"S0.SH = "<< S0.SH << ","
                <<"S0.AF = "<< S0.AF << ","
                <<"S0.nG = "<< S0.nG << ","
                <<"S0.RES0_0 = "<< S0.RES0_0 << ","
                <<"S0.OutputAddr = "<< Hex(S0.OutputAddr) << ","
                <<"S0.RES0_1 = "<< S0.RES0_1 << ","
                <<"S0.Contiguous = "<< S0.Contiguous << ","
                <<"S0.PXN = "<< S0.PXN << ","
                <<"S0.UXN = "<< S0.UXN << ","
                <<"S0.Reserved = "<< S0.Reserved << ","
                <<"S0.PBHA = "<< S0.PBHA << ","
                <<"S0.Ignored = "<< S0.Ignored;
            }
            else
            {
             kout  
                <<"S1.Valid = "<< S1.Valid << ","
                <<"S1.IsTable = "<< S1.IsTable << ","
                <<"S1.Ignored_0 = "<< S1.Ignored_0 << ","
                <<"S1.NextLevelTableAddr = "<< Hex(S1.NextLevelTableAddr) << ","
                <<"S1.RES0 = "<< S1.RES0 << ","
                <<"S1.Ignored_1 = "<< S1.Ignored_1 << ","
                <<"S1.PXNTable = "<< S1.PXNTable << ","
                <<"S1.XNTable = "<< S1.XNTable << ","
                <<"S1.APTable = "<< S1.APTable << ","
                <<"S1.NSTable = "<< S1.NSTable;
            }
             kout << "\n";
        }
        AS_MACRO static RegDescriptor4KBL2 read(void *p);
        AS_MACRO static RegDescriptor4KBL2 read(size_t p);
        AS_MACRO void write(void *p)const;
        AS_MACRO void write(size_t p)const;
}__attribute__((packed));
SETUP_REG_ANY_MEM_READ(Descriptor4KBL2)
SETUP_REG_ANY_MEM_WRITE(Descriptor4KBL2)



class RegDescriptor4KBL3{
public:
        uint64_t		Valid:1;
        uint64_t		RES1_0:1;
        uint64_t		AttrIndex:3;
        uint64_t		NS:1;
        uint64_t		AP:2;
        uint64_t		SH:2;
        uint64_t		AF:1;
        uint64_t		nG:1;
        uint64_t		OutputAddr:36;
        uint64_t		RES0_1:3;
        uint64_t		DBM:1;
        uint64_t		Contiguous:1;
        uint64_t		PXN:1;
        uint64_t		UXN:1;
        uint64_t		Reserved:4;
        uint64_t		PBHA:4;
        uint64_t		Ignored:1;
        AS_MACRO void dump()const
        {
            kout << "Descriptor4KBL3 : "
                <<"Valid = "<< Valid << ","
                <<"RES1_0 = "<< RES1_0 << ","
                <<"AttrIndex = "<< AttrIndex << ","
                <<"NS = "<< NS << ","
                <<"AP = "<< AP << ","
                <<"SH = "<< SH << ","
                <<"AF = "<< AF << ","
                <<"nG = "<< nG << ","
                <<"OutputAddr = "<< Hex(OutputAddr) << ","
                <<"RES0_1 = "<< RES0_1 << ","
                <<"DBM = "<< DBM << ","
                <<"Contiguous = "<< Contiguous << ","
                <<"PXN = "<< PXN << ","
                <<"UXN = "<< UXN << ","
                <<"Reserved = "<< Reserved << ","
                <<"PBHA = "<< PBHA << ","
                <<"Ignored = "<< Ignored
                  << "\n";
        }
        AS_MACRO static RegDescriptor4KBL3 read(void *p);
        AS_MACRO static RegDescriptor4KBL3 read(size_t p);
        AS_MACRO void write(void *p)const;
        AS_MACRO void write(size_t p)const;
}__attribute__((packed));
SETUP_REG_ANY_MEM_READ(Descriptor4KBL3)
SETUP_REG_ANY_MEM_WRITE(Descriptor4KBL3)



#endif // _________INCLUDE_ARCH_COMMON_AARCH64_VMSA_DESCRIPTORS_H__
