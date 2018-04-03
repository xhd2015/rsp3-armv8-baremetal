
from support import gccReprRegister
reg_defs=[
#cpu-system-side
    
    ["RegICC_BPR0_EL1","uint32_t",[["BinaryPoint",3,   "RES0",29]],"sys_reg_name",gccReprRegister(3,0,12,8,3)],
    ["RegICC_BPR1_EL1","uint32_t",[["BinaryPoint",3,   "RES0",29]],"sys_reg_name",gccReprRegister(3,0,12,12,3)],
    ["RegICC_CTLR_EL3","uint32_t",[[    "CBPR_EL1S",1,       "CBPR_EL1NS",1,       "EOImode_EL3",1,       "EOImode_EL1S",1,       "EOImode_EL1NS",1,       "RM",1,       "PMHE",1,       "RES0",1,       "PRIbits",3,       "IDbits",3,       "SEIS",1,       "A3V",1,       "RES0",1,       "nDS",1,       "RSS",1,   "RES0",13]],"sys_reg_name",gccReprRegister(3,6,12,12,4)],
    ["RegICC_CTLR_EL1","uint32_t",[["CBPR",1,       "EOImode",1,       "RES0",4,       "PMHE",1,       "RES0",1,       "PRIbits",3,       "IDbits",3,       "SEIS",1,       "A3V",1,       "RES0",2,       "RSS",1,  "RES0",13]],"sys_reg_name",gccReprRegister(3,0,12,12,4)],
    # Interrupt Controller Deactivate Interrupt Register
    ["RegICC_DIR_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,11,1)],
    #Interrupt Controller End Of Interrupt Register 0
    #A PE writes to this register to inform the CPU interface that it has completed the processing of the
    #specified Group 0 interrupt.
    ["RegICC_EOIR0_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,8,1)],
    ["RegICC_EOIR1_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,12,1)],
    # Interrupt Controller Highest Priority Pending Interrupt Register 0
    # Indicates the highest priority pending Group 0 interrupt on the CPU interface.
    ["RegICC_HPPIR0_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,8,2)],
    ["RegICC_HPPIR1_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,12,2)],
    #Interrupt Controller Interrupt Acknowledge Register 0
    ["RegICC_IAR0_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,8,0)],
    ["RegICC_IAR1_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,12,0)],
    #Interrupt Controller Interrupt Group 0 Enable register
    ["RegICC_IGRPEN0_EL1","uint32_t",[["Enable",1,   "RES0",31]],"sys_reg_name",gccReprRegister(3,0,12,12,6)],
    ["RegICC_IGRPEN1_EL1","uint32_t",[["Enable",1,   "RES0",31]],"sys_reg_name",gccReprRegister(3,0,12,12,7)],
    ["RegICC_IGRPEN1_EL3","uint32_t",[["EnableGrp1NS",1,       "EnableGrp1S",1,       "RES0",30]],"sys_reg_name",gccReprRegister(3,6,12,12,7)],
    


    ["RegICC_PMR_EL1","uint32_t",[["Priortiy",8,       "RES0",24]],"sys_reg_name",gccReprRegister(3,0,4,6,0)],
    ["RegICC_RPR_EL1","uint32_t",[["Priortiy",8,       "RES0",24]],"sys_reg_name",gccReprRegister(3,0,12,11,3)],
    #note: no read is enabled
    ["RegICC_SGI0R_EL1","uint32_t",[["TargetList",16,       "Aff1",8,       "INTID",4,       "RES0",4,       "Aff2",8,       "IRM",1,       "RES0",3,       "RS",4,       "Aff3",8,       "RES0",8]],"no_read","sys_reg_name",gccReprRegister(3,0,12,11,7)],
    ["RegICC_SGI1R_EL1","uint32_t",[["TargetList",16,       "Aff1",8,       "INTID",4,       "RES0",4,       "Aff2",8,       "IRM",1,       "RES0",3,       "RS",4,       "Aff3",8,       "RES0",8]],"no_read","sys_reg_name",gccReprRegister(3,0,12,11,5)],
    # Interrupt Controller System Register Enable register (EL1)
    # Controls whether the System register interface or the memory-mapped interface to the GIC CPU interface is used for EL1.
    ["RegICC_SRE_EL1","uint32_t",[["SRE",1,       "DFB",1,       "DIB",1,       "RES0",29]],"sys_reg_name",gccReprRegister(3,0,12,12,5)],
    ["RegICC_SRE_EL2","uint32_t",[["SRE",1,       "DFB",1,       "DIB",1,       "RES0",29]],"sys_reg_name",gccReprRegister(3,4,12,9,5)],
    ["RegICC_SRE_EL3","uint32_t",[["SRE",1,       "DFB",1,       "DIB",1,       "RES0",29]],"sys_reg_name",gccReprRegister(3,6,12,12,5)],
    
    #redistributor
    ["RegGICR_CTLR","uint32_t",[["EnableLPIs",1,   "RES0",2,   "RWP",1,    "RES0",20,    "DPG0",1,    "DPG1NS",1,   "DPG1S",1,   "RES0",4,   "UWP",1]]],
    ["RegGICR_WAKER","uint32_t",[["IMP_DEF_0",1,   "ProcessorSleep",1,   "ChildrenAsleep",1,   "RES0",28,   "IMP_DEF_1",1]],"volatile"],
    ["RegGICR_IGROUPR0","uint32_t",[["InGrp",32]]],
    ["RegGICR_ISENABLER0","uint32_t",[["Enables,Hex",32]]],
    ["RegGICD_IIDR","uint32_t",[["Implementer",12,   "Revision",4,    "Variant",4,   "RES0",4,    "ProductID",8]]],
    ["RegGICR_ICENABLER0","uint32_t",[["ClearEnables,Hex",32]]],
    ["RegGICR_ISPENDR0","uint32_t",[["Pendings,Hex",32]]],
    ["RegGICR_ISACTIVER0","uint32_t",[["Actives,Hex",32]]],
    ["RegGICR_ICFGR0","uint32_t",[["Configs,Hex",32]]],
    ["RegGICR_ICFGR1","uint32_t",[["Configs,Hex",32]]],
    ["RegGICR_ICACTIVER0","uint32_t",[["Actives,Hex",32]]],

    # 0-7    
    ["RegGICR_IPRIORITYR","uint32_t",[["p0",8,   "p1",8,   "p2",8,   "p3",8]]],

    
    #0-31 GICD_ISENABLERn
    ["RegGICD_ISENABLER","uint32_t",[["Enables,Hex",32]]],
    ["RegGICD_ISPENDR","uint32_t",[["Pendings,Hex",32]]],
    ["RegGICD_ISACTIVER","uint32_t",[["Actives,Hex",32]]],
    
    #distributor
    ["RegGICD_CTLR","uint32_t",[["EnableGrp0",1,  "EnableGrp1NS",1,   "EnableGrp1S",1,     "RES0",1,   "ARE_S",1, "ARE_NS",1,     "DS",1,    "E1NWF",1,   "RES0",23,   "RWP",1  ]]  ],
    
    
]