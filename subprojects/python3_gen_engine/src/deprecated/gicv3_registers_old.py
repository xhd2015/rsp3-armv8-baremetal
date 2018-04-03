


reg_list=[
#    exmaple:
#     ["ISR","uint64_t","MEM_MAPPED",["NS",1,"RES0_0",2]],
#distributor
    ["GICD_CTLR","uint32_t","MEM_MAPPED",[["EnableGrp0",1,  "EnableGrp1NS",1,   "EnableGrp1S",1,     "RES0_0",1,   "ARE_S",1, "ARE_NS",1,     "DS",1,    "E1NWF",1,   "RES0_1",23,   "RWP",1  ]]  ],
    
#cpu-system-side
    ["ICC_BPR0_EL1","uint32_t","GCC_REPR",[["BinaryPoint",3,   "RES0",29]]],
    ["ICC_BPR1_EL1","uint32_t","GCC_REPR",[["BinaryPoint",3,   "RES0",29]]],
    ["ICC_CTLR_EL3","uint32_t","GCC_REPR",[[    "CBPR_EL1S",1,       "CBPR_EL1NS",1,       "EOImode_EL3",1,       "EOImode_EL1S",1,       "EOImode_EL1NS",1,       "RM",1,       "PMHE",1,       "RES0_0",1,       "PRIbits",3,       "IDbits",3,       "SEIS",1,       "A3V",1,       "RES0_1",1,       "nDS",1,       "RSS",1,   "RES0_2",13]]],
    ["ICC_CTLR_EL1","uint32_t","GCC_REPR",[["CBPR",1,       "EOImode",1,       "RES0_0",4,       "PMHE",1,       "RES0_1",1,       "PRIbits",3,       "IDbits",3,       "SEIS",1,       "A3V",1,       "RES0_2",2,       "RSS",1,  "RES0_3",13]]],
    # Interrupt Controller Deactivate Interrupt Register
    ["ICC_DIR_EL1","uint32_t","GCC_REPR",[["INTID",24,   "RES0",8]]],
    #Interrupt Controller End Of Interrupt Register 0
    #A PE writes to this register to inform the CPU interface that it has completed the processing of the
    #specified Group 0 interrupt.
    ["ICC_EOIR0_EL1","uint32_t","GCC_REPR",[["INTID",24,   "RES0",8]]],
    ["ICC_EOIR1_EL1","uint32_t","GCC_REPR",[["INTID",24,   "RES0",8]]],
    # Interrupt Controller Highest Priority Pending Interrupt Register 0
    # Indicates the highest priority pending Group 0 interrupt on the CPU interface.
    ["ICC_HPPIR0_EL1","uint32_t","GCC_REPR",[["INTID",24,   "RES0",8]]],
    ["ICC_HPPIR1_EL1","uint32_t","GCC_REPR",[["INTID",24,   "RES0",8]]],
    #Interrupt Controller Interrupt Acknowledge Register 0
    ["ICC_IAR0_EL1","uint32_t","GCC_REPR",[["INTID",24,   "RES0",8]]],
    ["ICC_IAR1_EL1","uint32_t","GCC_REPR",[["INTID",24,   "RES0",8]]],
    #Interrupt Controller Interrupt Group 0 Enable register
    ["ICC_IGRPEN0_EL1","uint32_t","GCC_REPR",[["Enable",1,   "RES0",31]]],
    ["ICC_IGRPEN1_EL1","uint32_t","GCC_REPR",[["Enable",1,   "RES0",31]]],
    ["ICC_IGRPEN1_EL3","uint32_t","GCC_REPR",[["EnableGrp1NS",1,       "EnableGrp1S",1,       "RES0",30]]],
    ["ICC_PMR_EL1","uint32_t","GCC_REPR",[["Priortiy",8,       "RES0_0",24]]],
    ["ICC_RPR_EL1","uint32_t","GCC_REPR",[["Priortiy",8,       "RES0_0",24]]],
    #note: no read is enabled
    ["ICC_SGI0R_EL1","uint32_t","GCC_REPR",[["TargetList",16,       "Aff1",8,       "INTID",4,       "RES0_0",4,       "Aff2",8,       "IRM",1,       "RES0_1",3,       "RS",4,       "Aff3",8,       "RES0_2",8]],"no_read"],
    ["ICC_SGI1R_EL1","uint32_t","GCC_REPR",[["TargetList",16,       "Aff1",8,       "INTID",4,       "RES0_0",4,       "Aff2",8,       "IRM",1,       "RES0_1",3,       "RS",4,       "Aff3",8,       "RES0_2",8]],"no_read"],
    # Interrupt Controller System Register Enable register (EL1)
    # Controls whether the System register interface or the memory-mapped interface to the GIC CPU interface is used for EL1.
    ["ICC_SRE_EL1","uint32_t","GCC_REPR",[["SRE",1,       "DFB",1,       "DIB",1,       "RES0",29]]],
    
    #redistributor
    ["GICR_CTLR","uint32_t","MEM_MAPPED",[["EnableLPIs",1,   "RES0_0",2,   "RWP",1,    "RES0_1",20,    "DPG0",1,    "DPG1NS",1,   "DPG1S",1,   "RES0_2",4,   "UWP",1]]],
    ["GICR_WAKER","uint32_t","MEM_MAPPED",[["IMP_DEF_0",1,   "ProcessorSleep",1,   "ChildrenAsleep",1,   "RES0_0",28,   "IMP_DEF_1",1]]],
    ["GICR_IGROUPR0","uint32_t","MEM_MAPPED",[["InGrp",32]]],
    ["GICR_ISENABLER0","uint32_t","MEM_MAPPED",[["Enables,Hex",32]]],
    ["GICD_IIDR","uint32_t","MEM_MAPPED",[["Implementer",12,   "Revision",4,    "Variant",4,   "RES0",4,    "ProductID",8]]],
    ["GICR_ICENABLER0","uint32_t","MEM_MAPPED",[["ClearEnables,Hex",32]]],
    ["GICR_ISPENDR0","uint32_t","MEM_MAPPED",[["Pendings,Hex",32]]],
    ["GICR_ISACTIVER0","uint32_t","MEM_MAPPED",[["Actives,Hex",32]]],
    ["GICR_ICFGR0","uint32_t","MEM_MAPPED",[["Configs,Hex",32]]],
    ["GICR_ICFGR1","uint32_t","MEM_MAPPED",[["Configs,Hex",32]]],
    ["GICR_ICACTIVER0","uint32_t","MEM_MAPPED",[["Actives,Hex",32]]]
]
for i in range(8):#0-7
    reg_list.append(["GICR_IPRIORITYR"+str(i),"uint32_t", "MEM_MAPPED",[["p"+str(i*4),8,   "p"+str(i*4+1),8,   "p"+str(i*4+2),8,   "p"+str(i*4+3),8]]])
for i in range(32):#0-31
    reg_list.append(["GICD_ISENABLER"+str(i),"uint32_t","MEM_MAPPED",[["Enables,Hex",32]]])
for i in range(32):
    reg_list.append(["GICD_ISPENDR"+str(i),"uint32_t","MEM_MAPPED",[["Pendings,Hex",32]]])
for i in range(32):
    reg_list.append(["GICD_ISACTIVER"+str(i),"uint32_t","MEM_MAPPED",[["Actives,Hex",32]]])