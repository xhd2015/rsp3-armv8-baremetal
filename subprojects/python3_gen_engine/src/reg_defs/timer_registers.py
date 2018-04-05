includes=["<def.h>",  #for uint64_t
          "<io/Output.h>", #for  kout
          "<io/IntegerFormatter.h>",#for Hex,Bin
          ]



reg_defs=[
    ["","uint32_t",[["ClockFrq",32]],"sys_reg_name","CNTFRQ_EL0"],
    ["","uint32_t",[["EL1PCTEN",1,   "EL1PCEN",1,  "EVNTEN",1,    "EVNTDIR",1,  "EVNTI",4,    "RES0",24]],"sys_reg_name","CNTHCTL_EL2"],
    ["","uint32_t",[["EL10PCTEN",1,   "EL0VCTEN",1,  "EVNTEN",1,    "EVNTDIR",1,  "EVNTI",4,   "EL0VTEN",1,   "EL0PTEN",1,    "RES0",22]],"sys_reg_name","CNTKCTL_EL1"],
    ["","uint32_t",[["ENABLE",1,   "IMASK",1,   "ISTATUS",1,   "RES0",29]],"sys_reg_name","CNTP_CTL_EL0"],
    ["","uint64_t",[["CompareValue",64]],"sys_reg_name","CNTP_CVAL_EL0"],
    ["","int32_t",[["TimerValue",32]],
     "sys_reg_name","CNTP_TVAL_EL0"],
    ["","uint64_t",[["PhysicalCount",64]],
     "sys_reg_name","CNTPCT_EL0","no_write","read_needs_isb"],
    ["","uint64_t",[["VirtualCountValue",64]],
     "sys_reg_name","CNTVCT_EL0",
     "no_write","read_needs_isb"],
    ["","uint32_t",[["ENABLE",1,   "IMASK",1,   "ISTATUS",1,   "RES0",29]],"sys_reg_name","CNTV_CTL_EL0"],    
]