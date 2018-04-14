
from support import gccReprRegister,flattenList

includes=["<def.h>",  #for uint64_t
          "<io/Output.h>", #for  kout
          "<io/IntegerFormatter.h>",#for Hex,Bin
          ]

reg_defs=[
    #=======CPU Interface,system registers
    # binaryPoint:
    #  0 ggggggg.s
    #  1 gggggg.ss
    #  ...
    #  7 .ssssssss
    # no_read --> has_read --> read(),update()
    # no_write--> has_write--> write()
    # has_dump + has_read --> read
    # has_mandatorySet + has_write --> 
    ["RegICC_BPR_EL1_BASE","uint32_t",[["BinaryPoint",3,   "RES0",29]],
     "out_place",
     "no_read","no_write","no_copy",
     ],
    ["RegICC_BPR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,8,3),
     "extends","RegICC_BPR_EL1_BASE",
     "templateArgs","int grp=0",
     "templateAssert",["grp==0","group must be 0"],
     "no_dump","no_setMandatory"
     ],
    ["RegICC_BPR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,12,3),
     "extends","RegICC_BPR_EL1_BASE",
     "templateArgs","",
     "templateSpecArgs","1",
     "no_dump","no_setMandatory"
     ],
    
    # IDbits=RO
    ["RegICC_CTLR_EL3","uint32_t",[[ "CBPR_EL1S",1,       "CBPR_EL1NS",1,       "EOImode_EL3",1,       "EOImode_EL1S",1,       "EOImode_EL1NS",1,       "RM",1,       "PMHE",1,       "RES0",1,       "PRIbits",3,       "IDbits",3,       "SEIS",1,       "A3V",1,       "RES0",1,       "nDS",1,       "RSS",1,   "RES0",13]],"sys_reg_name",gccReprRegister(3,6,12,12,4)],
    ["RegICC_CTLR_EL1","uint32_t",[["CBPR",1,       "EOImode",1,       "RES0",4,       "PMHE",1,       "RES0",1,       "PRIbits",3,       "IDbits",3,       "SEIS",1,       "A3V",1,       "RES0",2,       "RSS",1,  "RES0",13]],
     "sys_reg_name",gccReprRegister(3,0,12,12,4),
     "enums",["","INTIDBits16=0b000,INTIDBits24=0b001"],
     ],
    # Interrupt Controller Deactivate Interrupt Register
    ["RegICC_DIR_EL1","uint32_t",[["INTID",24,   "RES0",8]],"sys_reg_name",gccReprRegister(3,0,12,11,1)],
    #Interrupt Controller End Of Interrupt Register 0
    #A PE writes to this register to inform the CPU interface that it has completed the processing of the
    #specified Group 0 interrupt.
    ["RegICC_EOIR_EL1_BASE","uint32_t",[["INTID",24,   "RES0",8]],
     "out_place",
     "no_read","no_write","no_copy"
     ],
    ["RegICC_EOIR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,8,1),
     "extends","RegICC_EOIR_EL1_BASE",
     "templateArgs","int grp=0",
     "templateAssert",["grp==0","group must be 0"],
     "no_setMandatory","no_dump"
     ],
    ["RegICC_EOIR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,12,1),
     "extends","RegICC_EOIR_EL1_BASE",
     "templateArgs","",
     "templateSpecArgs","1",
     "no_setMandatory","no_dump"
     ],
    # Interrupt Controller Highest Priority Pending Interrupt Register 0
    # Indicates the highest priority pending Group 0 interrupt on the CPU interface.
    ["RegICC_HPPIR_EL1_BASE","uint32_t",[["INTID",24,   "RES0",8]],
     "out_place",
     "no_read","no_write","no_copy"
     ],
    ["RegICC_HPPIR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,8,2),
     "extends","RegICC_HPPIR_EL1_BASE",
     "templateArgs","int grp=0",
     "templateAssert",["grp==0","group must be 0"],
     "no_setMandatory","no_dump"
     ],
    ["RegICC_HPPIR_EL1","uint32_t",[["INTID",24,   "RES0",8]],
     "sys_reg_name",gccReprRegister(3,0,12,12,2),
     "extends","RegICC_HPPIR_EL1_BASE",
     "templateArgs","",
     "templateSpecArgs","1",
     "no_setMandatory","no_dump", 
     ],
    #Interrupt Controller Interrupt Acknowledge Register 0
    ["RegICC_IAR_EL1_BASE","uint32_t",[["INTID",24,   "RES0",8]],
     "out_place",
     "no_read", "no_write","no_copy",
     ],
    ["RegICC_IAR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,8,0),
     "extends","RegICC_IAR_EL1_BASE",
     "templateArgs","int grp=0",
     "templateAssert",["grp==0","group must be 0"],
     "no_write","no_dump","no_setMandatory"
     ],
    ["RegICC_IAR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,12,0),
     "extends","RegICC_IAR_EL1_BASE",
      "templateArgs","",
     "templateSpecArgs","1",
     "no_write","no_dump","no_setMandatory"
     ],
    #Interrupt Controller Interrupt Group 0 Enable register
    ["RegICC_IGRPEN_EL1_BASE","uint32_t",[["Enable",1,   "RES0",31]],
     "out_place",
     "no_read","no_write","no_copy",
     ],
    ["RegICC_IGRPEN_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,12,6),
     "extends","RegICC_IGRPEN_EL1_BASE",
     "templateArgs","int grp=0",
     "templateAssert",["grp==0","group must be 0"],
     "no_dump","no_setMandatory"
     ],
    ["RegICC_IGRPEN_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,12,7),
     "extends","RegICC_IGRPEN_EL1_BASE",
     "templateArgs","",
     "templateSpecArgs","1",
     "no_dump","no_setMandatory"
     ],
    ["RegICC_IGRPEN1_EL3","uint32_t",
     [["EnableGrp1NS",1,       "EnableGrp1S",1,       "RES0",30]],
     "sys_reg_name",gccReprRegister(3,6,12,12,7)],
    #
    ["RegICC_PMR_EL1","uint32_t",[["Priortiy",8,       "RES0",24]],"sys_reg_name",gccReprRegister(3,0,4,6,0)],
    ["RegICC_RPR_EL1","uint32_t",[["Priortiy",8,       "RES0",24]],"sys_reg_name",gccReprRegister(3,0,12,11,3)],
    #note: no read is enabled, Aff0 is not a field
    #IRM: route mode
    #TargetList[i]=1 --> i in Aff0 list
    ["RegICC_SGIR_EL1_BASE","uint32_t",[["TargetList",16,       "Aff1",8,       "INTID",4,       "RES0",4,       "Aff2",8,       "IRM",1,       "RES0",3,       "RS",4,       "Aff3",8,       "RES0",8]],
     "out_place",
     "enums",["IRMmode","ByAffinity=0,AllNoSelf=1"],
     "no_read","no_write","no_copy",
     ],
    ["RegICC_SGIR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,11,7),
     "extends","RegICC_SGIR_EL1_BASE",
     "templateArgs","int grp=0",
     "templateAssert",["grp==0","group must be 0"],
     "no_read","no_dump","no_setMandatory"
     ],
    ["RegICC_SGIR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,11,5),
     "extends","RegICC_SGIR_EL1_BASE",
     "templateArgs","",
     "templateSpecArgs","1",
     "no_read","no_dump","no_setMandatory"
    ],
    # Interrupt Controller System Register Enable register (EL1)
    # Controls whether the System register interface or the memory-mapped interface to the GIC CPU interface is used for EL1.
    # Enable决定低异常级是否可以使用ICC_*寄存器
    ["RegICC_SRE_EL1","uint32_t",
     [["SRE",1,       "DFB",1,       "DIB",1,       "RES0",29]],"sys_reg_name",gccReprRegister(3,0,12,12,5)],
    ["RegICC_SRE_EL2","uint32_t",
     [["SRE",1,       "DFB",1,       "DIB",1, "Enable",1,   "RES0",28]],"sys_reg_name",gccReprRegister(3,4,12,9,5)],
    ["RegICC_SRE_EL3","uint32_t",
     [["SRE",1,       "DFB",1,       "DIB",1,"Enable",1,       "RES0",28]],"sys_reg_name",gccReprRegister(3,6,12,12,5)],
    
    #============redistributor
    ["RegGICR_CTLR","uint32_t",[["EnableLPIs",1,   "RES0",2,   "RWP",1,    "RES0",20,    "DPG0",1,    "DPG1NS",1,   "DPG1S",1,   "RES0",4,   "UWP",1]],"out_place"],
    ["RegGICR_ICACTIVER0","uint32_t",[["Actives,Hex",32]],"out_place"],
    ["RegGICR_ICENABLER0","uint32_t",[["ClearEnables,Hex",32]],"out_place"],
    ["RegGICR_ICFGR0","uint32_t",[["Configs,Hex",32]],"out_place"],
    ["RegGICR_ICFGR1","uint32_t",[["Configs,Hex",32]],"out_place"],
    ["RegGICR_ICPENDR0","uint32_t",[["Clears",32]],"out_place"],
    ["RegGICR_IGROUPR0","uint32_t",[["InGrp",32]],"out_place"],
    ["RegGICR_IIDR","uint32_t",[["Implementer",12,   "Revision",4,    "Variant",4,   "RES0",4,    "ProductID",8]],"out_place"],
    # n=0-7, priority for SGI,PPI
    ["RegGICR_IPRIORITYR","uint32_t",[["p0",8,   "p1",8,   "p2",8,   "p3",8]],"out_place"],
    ["RegGICR_ISACTIVER0","uint32_t",[["Actives,Hex",32]],"out_place"],
    ["RegGICR_ISENABLER0","uint32_t",[["Enables,Hex",32]],"out_place"],
    ["RegGICR_ISPENDR0","uint32_t",[["Pendings,Hex",32]],"out_place"],
    # Non-Secure Access Control, SGI permitted?
    ["RegGICR_NSACR","uint32_t",[[["NSAccess"+str(i//2),2][i%2] for i in range(0,32)]],"out_place"],
    ["RegGICR_STATUSR","uint32_t",[["RRD",1,   "WRD",1,   "RWOD",1,   "WROD",1,   "RES0",28]],"out_place"],
    ["RegGICR_TYPER","uint64_t",[["PLPIS",1,"VLPIS",1,"RES0",1,"DirectLPI",1,"Last",1,"DPGR",1,"RES0",2,"ProcessorNumber",16,"CommonLPIAff",2,"RES0",6,"AffinityValue",32]],"out_place"],
    ["RegGICR_WAKER","uint32_t",[["IMP_DEF_0",1,   "ProcessorSleep",1,   "ChildrenAsleep",1,   "RES0",28,   "IMP_DEF_1",1]],"out_place"],  

    #==========distributor
    # when in Non-Secure, Single Security, EnableGrp1S=RES0
    #    ARE_NS=RES0
    # when change ARE, must ensure that:
    # • GICD_CTLR.EnableGrp1==0.
    # • GICD_CTLR.EnableGrp0==0.
    # if not GICv2,then ARE=RAO/WI
    # 1 for S_2S,2 for NS_2S,3 for NS_1S or S_1S
    ["RegGICD_CTLR","uint32_t",
     [
         ["EnableGrp0",1,  "EnableGrp1NS",1,   "EnableGrp1S",1,     "RES0",1,   "ARE_S",1, "ARE_NS",1,     "DS",1,    "E1NWF",1,   "RES0",23,   "RWP",1  ],
         ["EnableGrp1",1,"EnableGrp1A",1,"RES0",2,"ARE_NS",1,"RES0",26,"RWP",1],       
         ["EnableGrp0",1,"EnableGrp1",1,"RES0",2,"ARE",1,"RES0",1,"DS",1,"E1NWF",1,"RES0",23,"RWP",1],
         ]  ,"out_place", "applies",["0==0","1==1",""]],
    
    # n=0-31, Clear-Active
    ["RegGICD_ICACTIVER","uint32_t",[["Actives,Hex",32]],"out_place"],
    #n=0-31, Clear-Enable, read returns enabled, write 0 ignroed, write 1 clear enabled.
    ["RegGICD_ICENABLER","uint32_t",[["ClearEnables,Hex",32]],"out_place"],
    #n=0-64, 0=level-sensitive 1=edge-triggered
    ["RegGICD_ICFGR","uint32_t",[[["RES0",1, "cfg"+str(i//4),1][i%4] for i in range(0,64)]],"out_place"],
    #n=0-31, Clear-Pending
    ["RegGICD_ICPENDR","uint32_t",[["Clears",32]],"out_place"],
    #n=0-31, controls whether the interrupt is in group0 or group1
    ["RegGICD_IGROUPR","uint32_t",[["InGrp",32]],"out_place"],
    # Distributor Implementer ID
    ["RegGICD_IIDR","uint32_t",[["Implementer",12,   "Revision",4,    "Variant",4,   "RES0",4,    "ProductID",8]],"out_place"],
    # n=0-254,hold the priority of each interrupt
    ["RegGICD_IPRIORITYR","uint32_t",[["p0",8,   "p1",8,   "p2",8,   "p3",8]],"out_place"],
    # Set-Active,n=0-31
    ["RegGICD_ISACTIVER","uint32_t",[["Actives,Hex",32]],"out_place"],
    # Set-Enable,n=0-31
    ["RegGICD_ISENABLER","uint32_t",[["Enables,Hex",32]],"out_place"],
    # Set-Pending, n=0-31
    ["RegGICD_ISPENDR","uint32_t",[["Pendings,Hex",32]],"out_place"],
    # sgi to cpu interface, by interface id, no by affinity
    ["RegGICD_SGIR","uint32_t",[["INTID",4,   "RES0",11,   "NSTATT",1,   "CPUTargetList",8,   "TargetListFilter",2,   "RES0",6]],"out_place"],
    # SGI Set-Pending Register,n=0-3
    ["RegGICD_SPENDSGIR","uint32_t",[["set0",8,   "set1",8,   "set2",8,   "set3",8]],"out_place"],
    ["RegGICD_STATUSR","uint32_t",[["RRD",1,   "WRD",1,   "RWOD",1,   "WROD",1,   "RES0",28]],"out_place"],
    ["RegGICD_TYPER","uint32_t",[["ITLinesNumber",5,   "CPUNumber",3,   "RES0",2,   "SecurityExtn",1,   "RES0",5,   "MBIS",1,   "LPIS",1,   "DVIS",1,   "IDbits",5,   "A3V",1,   "No1N",1,   "RSS",1,   "RES0",5]],"out_place"],
    
    

    
]