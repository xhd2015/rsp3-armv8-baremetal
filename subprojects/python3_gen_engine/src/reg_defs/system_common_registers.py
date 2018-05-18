
includes=["<def.h>",  #for uint64_t
          "<io/Output.h>", #for  kout
          "<io/IntegerFormatter.h>",#for Hex,Bin
          ]


reg_defs=[
    ["","uint32_t",[["RES0",2,   "EL",2,   "RES0",28]],"sys_reg_name","CurrentEL"],     
    ["","uint32_t",[["RES0",6,   "F",1,   "I",1,    "A",1   ,"D",1,   "RES0",22]],"sys_reg_name","DAIF"],
    # Exception related
    ["","uint64_t",[["Addr,Hex",64]],"sys_reg_name","VBAR_EL1"],
    ["","uint64_t",[["Addr,Hex",64]],"sys_reg_name","VBAR_EL2"],
    ["","uint64_t",[["Addr,Hex",64]],"sys_reg_name","VBAR_EL3"],
    ["","uint64_t",[["returnAddr,Hex",64]],"sys_reg_name","ELR_EL1"],
    ["","uint64_t",[["returnAddr,Hex",64]],"sys_reg_name","ELR_EL2"],
    ["","uint64_t",[["returnAddr,Hex",64]],"sys_reg_name","ELR_EL3"],    
    ["","uint32_t",[["ISS,Hex",25,   "IL",1,   "EC,Hex",6]],"sys_reg_name","ESR_EL1"],
    ["","uint32_t",[["ISS,Hex",25,   "IL",1,   "EC,Hex",6]],"sys_reg_name","ESR_EL2"],
    ["","uint32_t",[["ISS,Hex",25,   "IL",1,   "EC,Hex",6]],"sys_reg_name","ESR_EL3"],
    ["","uint64_t",[["faultAddr,Hex",64]],"sys_reg_name","FAR_EL1"],
    ["","uint64_t",[["faultAddr,Hex",64]],"sys_reg_name","FAR_EL2"],
    ["","uint64_t",[["faultAddr,Hex",64]],"sys_reg_name","FAR_EL3"],
    # ELSPMode,e.g. M[3:0], 0b0000=EL0t, 0b0100=EL1t, 0b0101=EL1h
    # ExeState is execution state, in AARCH64, it is RES0
    # 当EL=0时, SPSel只能是0
    ["","uint32_t",[["SPSel",1,   "RES0",1,   "EL",2,   "ExeState",1,   "RES0",1,   "FIQMask",1,   "IRQMask",1,   "SErrorMask",1,   "DebugMask",1,   "RES0",10,   "IL",1,   "SoftwareStep",1,   "PAN",1,   "UAO",1,   "RES0",4,   "V",1,   "C",1,   "Z",1,   "N",1]],"sys_reg_name","SPSR_EL1"],
    ["","uint32_t",[["SPSel",1,   "RES0",1,   "EL",2,   "ExeState",1,   "RES0",1,   "FIQMask",1,   "IRQMask",1,   "SErrorMask",1,   "DebugMask",1,   "RES0",10,   "IL",1,   "SoftwareStep",1,   "PAN",1,   "UAO",1,   "RES0",4,   "V",1,   "C",1,   "Z",1,   "N",1]],"sys_reg_name","SPSR_EL2"],
    ["","uint32_t",[["SPSel",1,   "RES0",1,   "EL",2,   "ExeState",1,   "RES0",1,   "FIQMask",1,   "IRQMask",1,   "SErrorMask",1,   "DebugMask",1,   "RES0",10,   "IL",1,   "SoftwareStep",1,   "PAN",1,   "UAO",1,   "RES0",4,   "V",1,   "C",1,   "Z",1,   "N",1]],"sys_reg_name","SPSR_EL3"],
    ["","uint64_t",[["SP",64]],"sys_reg_name","SP_EL0"],
    ["","uint64_t",[["SP",64]],"sys_reg_name","SP_EL1"],
    ["","uint64_t",[["SP",64]],"sys_reg_name","SP_EL2"],
    ["","uint64_t",[["SP",64]],"sys_reg_name","SP_EL3"],
    
    
    ["","uint64_t",[["RES0",28,   "V",1,   "C",1,    "Z",1,    "N",1]],"sys_reg_name","NZCV"],
    # PAN may not be implemented,it is not standard
    ## NOTE: only available on armv8.1-a and later architectures, so when using g++, option '-march=armv8.2-a' must be present'
    ["","uint32_t",[["RES0",22,   "PAN",1,   "RES0",9]],"sys_reg_name","PAN"],
    #["RegPAN","uint32_t,[["RES0",22,   "PAN",1,   "RES0",9]],"sys_reg_name",gccReprRegister(3,0,4,2,3)]
    ["","uint32_t",[["SP",1,   "RES0",31]],"sys_reg_name","SPSel"],
    # influence LDRR/STRR，=1 as LDR/STR
    ["","uint64_t",[["RES0",23,   "UAO",1,   "RES0",8]],"sys_reg_name","UAO"],
    
    
    ["","uint64_t",[["PC,Hex",64]],"sys_reg_name","PC"],
    ["","uint64_t",[["T0SZ",6,   "RES0",1,   "EPD0",1,   "IRGN0",2,   "ORGN0",2,   "SH0",2,   "TG0",2,   "T1SZ",6,   "A1",1,   "EPD1",1,   "IRGN1",2,   "ORGN1",2,   "SH1",2,   "TG1",2,   "IPS",3,   "RES0",1,   "AS",1,    "TBI0",1,   "TBI1",1,    "HA",1,   "HD",1,   "HPD0",1,   "HPD1",1,   "HWU059",1,   "HWU060",1,   "HWU061",1,    "HWU062",1,    "HWU159",1,   "HWU160",1,   "HWU161",1,   "HWU162",1,  "RES0",2,   "NFD0",1,   "NFD1",1,   "RES0",9]],"sys_reg_name","TCR_EL1"],
    ["","uint32_t",[["RES0",6,   "F",1,   "I",1,   "A",1,     "RES0",23]],"sys_reg_name","ISR_EL1"],

    # id registers
    ["","uint64_t",[["RES0",4,   "AES",4,   "SHA1",4,   "SHA2",4,   "CRC32",4,   "Atomic",4,   "RES0",4,   "RDM",4,   "SHA3",4,   "SM3",4,   "SM4",4,   "DP",4,   "RES0",16]],"sys_reg_name","ID_AA64ISAR0_EL1"],
    ["","uint32_t",[["PROCID",32]],"sys_reg_name","CONTEXTIDR_EL1"],
    ["","uint64_t",[["EL0",4,   "EL1",4,   "EL2",4,   "EL3",4,
"FP",4,   "AdvSIMD",4,   "GIC",4,  "RAS",4,   "SVE",4,   "RES0",28   ]],"sys_reg_name","ID_AA64PFR0_EL1"],
    # if PAN=0b0000, then PAN is not supported
    ["","uint64_t",[["HAFDBS",4,   "VMIDBits",4,   "VH",4,   "HPDS",4,   "LO",4,   "PAN",4,   "SpecSEI",4,   "XNX",4,   "RES0",32]],"sys_reg_name","ID_AA64MMFR1_EL1"],
    # ASIDBits = 0000 8bits, 0010 16bits, others reserved
    # SNSMem = whether distinct Secure & Non-Secure
    # BigEnd = whether support mixed-endianess
    # PARange = supported PArange,from 0000 to 0110, increment sequence is 32(4GB),36(64GB),40(1TB),42(4TB),44(16TB),48(256TB),52(4PB)
    # TGranXX = 0000,supported XX, 1111 not supported
    ["","uint64_t",[["PARange",4,   "ASIDBits",4,   "BigEnd",4,   "SNSMem",4,   "BigEndEL0",4,   "TGran16,Hex",4,   "TGran64,Hex",4,   "TGran4,Hex",4,   "RES0",32]],"sys_reg_name","ID_AA64MMFR0_EL1"],
    ["","uint32_t",[["Revision",4,   "PartNum",12,   "Architecture",4,   "Variant",4,   "Implementer",8]],"sys_reg_name","MIDR_EL1"],
    ["","uint64_t",[[    "Aff0",8,       "Aff1",8,       "Aff2",8,       "MT",1,       "RES0",5,       "U",1,       "RES1",1,       "Aff3",8,       "RES0",24]],"sys_reg_name","MPIDR_EL1"],
    
    # address translation
    ## TCR1_EL1.A1 selects which ASID is used.if only 8-bit ASID is supported,the upper bits are res0
    ## the lower bits of BADDR, if not needed, should be better set to 0.
    ## CnP , in ARMv8.1,ARMv8.0, is RES0 
    ["","uint64_t",[["CnP",1,   "BADDR,Hex",47,   "ASID",16]],"sys_reg_name","TTBR0_EL1"],
    ["","uint64_t",[["CnP",1,   "BADDR,Hex",47,   "ASID",16]],"sys_reg_name","TTBR1_EL1"],
    ["","uint64_t",
            [
                ["F",1,  "RES0",6,   "SH",2,   "NS",1,   "IMP_DEF",1,   "RES1",1,   "PA47_12,Hex",36,   "PA51_48,Hex",4,   "RES0",4,   "ATTR",8 ],
                ["F",1,  "FST",6,   "RES0",1,   "PTW",1,   "S",1,   "RES0",1,   "RES1",1,   "RES0",36,   "IMP_DEF0",4,   "IMP_DEF1",4,   "IMP_DEF2",8 ]
            ],
            "applies",["S0.F==0",""],
            "sys_reg_name","PAR_EL1"
    ],
        
    # attrn[7:4]=0000 --> Device Memory,
    # attrn[3:0], when device memory,0000->nGnRnE
    ["","uint64_t",[["Attr0,Hex",8,   "Attr1,Hex",8,   "Attr2,Hex",8,   "Attr3,Hex",8,   "Attr4,Hex",8,   "Attr5,Hex",8,   "Attr6,Hex",8,  "Attr7,Hex",8 ]],"sys_reg_name","MAIR_EL1"],
    ["","uint64_t",[["Attr0,Hex",8,   "Attr1,Hex",8,   "Attr2,Hex",8,   "Attr3,Hex",8,   "Attr4,Hex",8,   "Attr5,Hex",8,   "Attr6,Hex",8,  "Attr7,Hex",8 ]],"sys_reg_name","MAIR_EL2"],
    ["","uint64_t",[["Attr0,Hex",8,   "Attr1,Hex",8,   "Attr2,Hex",8,   "Attr3,Hex",8,   "Attr4,Hex",8,   "Attr5,Hex",8,   "Attr6,Hex",8,  "Attr7,Hex",8 ]],"sys_reg_name","MAIR_EL3"],
    
    ["","uint32_t",[["M",1,   "A",1,   "C",1,   "SA",1,   "SA0",1,   "CP15BEN",1,   "RES0",1,   "ITD",1,   "SED",1,   "UMA",1,   "RES0",1,   "RES1",1,   "I",1,   "RES0",1,   "DZE",1,   "UCT",1,   "nTWI",1,   "RES0",1,   "nTWE",1,   "WXN",1,   "RES1",1,   "IESB",1,   "RES1",1,   "SPAN",1,   "E0E",1,   "EE",1,   "UCI",1,   "RES0",1,   "nTLSMD",1,   "LSMAOE",1,   "RES0",2]],"sys_reg_name","SCTLR_EL1"],
    
    
    # Debug 
    ["","uint64_t",[["RestartAddr",64]],"sys_reg_name","DLR_EL0"],
    ["","uint32_t",[["SPSel",1,   "RES0",1,   "EL",2,   "ExeState",1,   "RES0",1,   "FIQMask",1,   "IRQMask",1,   "SErrorMask",1,   "DebugMask",1,   "RES0",10,   "IL",1,   "SoftwareStep",1,   "PAN",1,   "UAO",1,   "RES0",4,   "V",1,   "C",1,   "Z",1,   "N",1]],"sys_reg_name","DSPSR_EL0"],
    
    # SCR,HCR
    ["","uint64_t",[["VM",1,"SWIO",1,"PTW",1,"FMO",1,"IMO",1,"AMO",1,"VF",1,"VI",1,"VSE",1,"FB",1,"BSU",2,"DC",1,"TWI",1,"TWE",1,"TID0",1,"TID1",1,"TID2",1,"TID3",1,"TSC",1,"TIDCP",1,"TACR",1,"TSW",1,"TPCP",1,"TPU",1,"TTLB",1,"TVM",1,"TGE",1,"TDZ",1,"HCD",1,"TRVM",1,"RW",1,"CD",1,"ID",1,"E2H",1,"TLOR",1,"TERR",1,"TEA",1,"MIOCNCE",1,"RES0",25]],"sys_reg_name","HCR_EL2"],
        ["","uint32_t",[["NS",1,"FIQ",1,"IRQ",1,"EA",1,"RES1",2,"RES0",1,"SMD",1,"HCE",1,"SIF",1,"RW",1,"ST",1,"TWI",1,"TWE",1,"TLOR",1,"TERR",1,"RES0",16]],"sys_reg_name","SCR_EL3"],
    
    # cold-reset
    ["","uint32_t",[["AA64",1,"RR",1,"RES0",30]],"sys_reg_name","RMR_EL1"],
    ["","uint32_t",[["AA64",1,"RR",1,"RES0",30]],"sys_reg_name","RMR_EL2"],
    ["","uint32_t",[["AA64",1,"RR",1,"RES0",30]],"sys_reg_name","RMR_EL3"],
]