
reg_list=[
    # special purepose,C5.2
#     ["PSTATE","uint32_t","STD",[["Mode",5,   "Endianess",1,   "T32",1,    "J",1,    "IfThen",8,    "GE",4,    "Q",1,    "SP",1,    "nRW",1,    "EL",2,    "IL",1,    "SS",1,    "UAO",1,    "PAN",1,    "F",1,    "I",1,    "A",1,   "D",1,   "V",1,   "C",1,   "Z",1,   "N",1]],"no_read","no_write"],
#     type ProcState is (
# bits (1) N, // Negative condition flag
# bits (1) Z, // Zero condition flag
# bits (1) C, // Carry condition flag
# bits (1) V, // oVerflow condition flag
# bits (1) D, // Debug mask bit [AArch64 only]
# bits (1) A, // SError interrupt mask bit
# bits (1) I, // IRQ mask bit
# bits (1) F, // FIQ mask bit
# bits (1) PAN, // Privileged Access Never Bit [v8.1]
# bits (1) UAO, // User Access Override [v8.2]
# bits (1) SS, // Software step bit
# bits (1) IL, // Illegal Execution state bit
# bits (2) EL, // Exception Level
# bits (1) nRW, // not Register Width: 0=64, 1=32
# bits (1) SP, // Stack pointer select: 0=SP0, 1=SPx [AArch64 only]
# bits (1) Q, // Cumulative saturation flag [AArch32 only]
# bits (4) GE, // Greater than or Equal flags [AArch32 only]
# bits (8) IT, // If-then bits, RES0 in CPSR [AArch32 only]
# bits (1) J, // J bit, RES0 [AArch32 only, RES0 in SPSR and CPSR]
# bits (1) T, // T32 bit, RES0 in CPSR [AArch32 only]
# bits (1) E, // Endianness bit [AArch32 only]
# bits (5) M // Mode field [AArch32 only]
# )
#     ["SPSR_EL1",""]
    ["CurrentEL","uint32_t","STD",[["RES0_0",2,   "EL",2,   "RES0_1",28]]],     
    ["DAIF","uint32_t","STD",[["RES0_0",6,   "F",1,   "I",1,    "A",1   ,"D",1,   "RES0_1",22]]],
    ["ELR_EL1","uint64_t","STD",[["returnAddr",64]]],
    ["ELR_EL2","uint64_t","STD",[["returnAddr",64]]],
    ["ELR_EL3","uint64_t","STD",[["returnAddr",64]]],
    ["NZCV","uint64_t","STD",[["RES0",28,   "V",1,   "C",1,    "Z",1,    "N",1]]],
    # PAN may not be implemented,it is not standard
    ## NOTE: only available on armv8.1-a and later architectures, so when using g++, option '-march=armv8.2-a' must be present'
    ["PAN","uint32_t","STD",[["RES0_0",22,   "PAN",1,   "RES0_1",9]]],
    ["SP_EL0","uint64_t","STD",[["Pointer",64]]],
    ["SP_EL1","uint64_t","STD",[["Pointer",64]]],
    ["SP_EL2","uint64_t","STD",[["Pointer",64]]],
    ["SP_EL3","uint64_t","STD",[["Pointer",64]]],
    ["SPSel","uint32_t","STD",[["SP",1,   "RES0",31]]],
    # influence LDRR/STRR，=1 as LDR/STR
    ["UAO","uint64_t","STD",[["RES0_0",23,   "UAO",1,   "RES0_1",8]]],
    
   
    
    ["PC","uint64_t","PC",[["PC,Hex",64]]],
    ["TCR_EL1","uint64_t","STD",[["T0SZ",6,   "RES0_0",1,   "EPD0",1,   "IRGN0",2,   "ORGN0",2,   "SH0",2,   "TG0",2,   "T1SZ",6,   "A1",1,   "EPD1",1,   "IRGN1",2,   "ORGN1",2,   "SH1",2,   "TG1",2,   "IPS",3,   "RES0_1",1,   "AS",1,    "TBI0",1,   "TBI1",1,    "HA",1,   "HD",1,   "HPD0",1,   "HPD1",1,   "HWU059",1,   "HWU060",1,   "HWU061",1,    "HWU062",1,    "HWU159",1,   "HWU160",1,   "HWU161",1,   "HWU162",1,  "RES0_2",2,   "NFD0",1,   "NFD1",1,   "RES0_3",9]]],
    ["ISR_EL1","uint32_t","STD",[["RES0_0",6,   "F",1,   "I",1,   "A",1,     "RES0_1",23]]],
    ["ID_AA64PFR0_EL1","uint64_t","STD",[["EL0",4,   "EL1",4,   "EL2",4,   "EL3",4,
"FP",4,   "AdvSIMD",4,   "GIC",4,  "RAS",4,   "SVE",4,   "RES0",28   ]]],
    # if PAN=0b0000, then PAN is not supported
    ["ID_AA64MMFR1_EL1","uint64_t","STD",[["HAFDBS",4,   "VMIDBits",4,   "VH",4,   "HPDS",4,   "LO",4,   "PAN",4,   "SpecSEI",4,   "XNX",4,   "RES0",32]]],
    # SNSMem = whether distinct Secure & Non-Secure
    # BigEnd = whether support mixed-endianess
    # PARange = supported PArange,from 0000 to 0110, increment sequence is 32(4GB),36(64GB),40(1TB),42(4TB),44(16TB),48(256TB),52(4PB)
    # TGranXX = 0000,supported XX, 1111 not supported
    ["ID_AA64MMFR0_EL1","uint64_t","STD",[["PARange",4,   "ASIDBits",4,   "BigEnd",4,   "SNSMem",4,   "BigEndEL0",4,   "TGran16,Hex",4,   "TGran64,Hex",4,   "TGran4,Hex",4,   "RES0",32]]],
    ["MIDR_EL1","uint32_t","STD",[["Revision",4,   "PartNum",12,   "Architecture",4,   "Variant",4,   "Implementer",8]]],
    ["MPIDR_EL1","uint64_t","STD",[[    "Aff0",8,       "Aff1",8,       "Aff2",8,       "MT",1,       "RES0_0",5,       "U",1,       "RES1_1",1,       "Aff3",8,       "RES0_2",24]]],
    
    # address translation
    ## TCR1_EL1.A1 selects which ASID is used.if only 8-bit ASID is supported,the upper bits are res0
    ## the lower bits of BADDR, if not needed, should be better set to 0.
    ## CnP , in ARMv8.1,ARMv8.0, is RES0 
    ["TTBR0_EL1","uint64_t","STD",[["CnP",1,   "BADDR,Hex",47,   "ASID",16]]],
    ["TTBR1_EL1","uint64_t","STD",[["CnP",1,   "BADDR,Hex",47,   "ASID",16]]],
    ["PAR_EL1","uint64_t","STD",
            [
                ["F",1,  "RES0_0",6,   "SH",2,   "NS",1,   "IMP_DEF",1,   "RES1_1",1,   "PA47_12,Hex",36,   "PA51_48,Hex",4,   "RES0_2",4,   "ATTR",8 ],
                ["F",1,  "FST",6,   "RES0_0",1,   "PTW",1,   "S",1,   "RES0_1",1,   "RES1_2",1,   "RES0_3",36,   "IMP_DEF0",4,   "IMP_DEF1",4,   "IMP_DEF2",8 ]
            ],
            "applies",["S0.F==0",""]
    ],
    
# attrn[7:4]=0000 --> Device Memory,
# attrn[3:0], when device memory,0000->nGnRnE
["MAIR_EL1","uint64_t","STD",[
["Attr0,Hex",8,   "Attr1,Hex",8,   "Attr2,Hex",8,   "Attr3,Hex",8,   "Attr4,Hex",8,   "Attr5,Hex",8,   "Attr6,Hex",8,  "Attr7,Hex",8 ]]],
    ["MAIR_EL2","uint64_t","STD",[["Attr0,Hex",8,   "Attr1,Hex",8,   "Attr2,Hex",8,   "Attr3,Hex",8,   "Attr4,Hex",8,   "Attr5,Hex",8,   "Attr6,Hex",8,  "Attr7,Hex",8 ]]],
    ["MAIR_EL3","uint64_t","STD",[["Attr0,Hex",8,   "Attr1,Hex",8,   "Attr2,Hex",8,   "Attr3,Hex",8,   "Attr4,Hex",8,   "Attr5,Hex",8,   "Attr6,Hex",8,  "Attr7,Hex",8 ]]],

    ["SCTLR_EL1","uint32_t","STD",[["M",1,   "A",1,   "C",1,   "SA",1,   "SA0",1,   "CP15BEN",1,   "RES0_0",1,   "ITD",1,   "SED",1,   "UMA",1,   "RES0_1",1,   "RES1_2",1,   "I",1,   "RES0_3",1,   "DZE",1,   "UCT",1,   "nTWI",1,   "RES0_4",1,   "nTWE",1,   "WXN",1,   "RES1_5",1,   "IESB",1,   "RES1_6",1,   "SPAN",1,   "E0E",1,   "EE",1,   "UCI",1,   "RES0_7",1,   "nTLSMD",1,   "LSMAOE",1,   "RES0_8",2]]],
    
    

]