
reg_list=[
    ["CNTFRQ_EL0","uint32_t","STD",[["ClockFrq",32]]],
    ["CNTHCTL_EL2","uint32_t","STD",[["EL1PCTEN",1,   "EL1PCEN",1,  "EVNTEN",1,    "EVNTDIR",1,  "EVNTI",4,    "RES0",24]]],
    ["CNTKCTL_EL1","uint32_t","STD",[["EL10PCTEN",1,   "EL0VCTEN",1,  "EVNTEN",1,    "EVNTDIR",1,  "EVNTI",4,   "EL0VTEN",1,   "EL0PTEN",1,    "RES0",22]]],
    ["CNTP_CTL_EL0","uint32_t","STD",[["ENABLE",1,   "IMASK",1,   "ISTATUS",1,   "RES0",29]]],
    ["CNTP_CVAL_EL0","uint64_t","STD",[["CompareValue",64]]],
    ["CNTP_TVAL_EL0","uint64_t","STD",[["TimerValue",64]]],
    ["CNTPCT_EL0","uint64_t","STD",[["PhysicalCount",64]]],
    ["CNTVCT_EL0","uint64_t","STD",[["VirtualCountValue",64]]],
    ["CNTV_CTL_EL0","uint32_t","STD",[["ENABLE",1,   "IMASK",1,   "ISTATUS",1,   "RES0",29]]],    
]