
includes=["<def.h>",  #for uint64_t
          "<io/Output.h>", #for  kout
          "<io/IntegerFormatter.h>",#for Hex,Bin
          ]



reg_defs=[
  # the higher bits of the table descriptor(the second list), from 59 to 63, are RES0 in Stage2
  ## lowerAttribute from NS to nG, upperAttribute from DBM or Contiguous to Ignored
  ## AP. access permission
  ## 4KB L0 does not support Block Descriptor
  ["Descriptor4KBL0","uint64_t",
   [["Valid",1,   "IsTable",1,   "ignored",10,   "NextLevelTableAddr,Hex",36,   "RES0",4,   "ignored",7,   "PXNTable",1,   "XNTable",1,   "APTable",2,   "NSTable",1]]
   ],
  ["Descriptor4KBL1","uint64_t",
    [
     ["Valid",1,   "IsTable",1,   "AttrIndex",3,   "NS",1,   "AP",2,   "SH",2,   "AF",1,   "nG",1,   "RES0",18,   "OutputAddr,Hex",18,   "RES0",4,   "Contiguous",1,   "PXN",1,   "UXN",1,   "reserved",4,    "PBHA",4,   "ignored",1],
     ["Valid",1,   "IsTable",1,   "ignored",10,   "NextLevelTableAddr,Hex",36,   "RES0",4,   "ignored",7,   "PXNTable",1,   "XNTable",1,   "APTable",2,   "NSTable",1]
    ],
     "applies",["S0.IsTable==0",""]
 ],  
  ["Descriptor4KBL2","uint64_t",
   [
    ["Valid",1,   "IsTable",1,   "AttrIndex",3,"NS",1,   "AP",2,   "SH",2,   "AF",1,   "nG",1,   "RES0",9,   "OutputAddr,Hex",27,   "RES0",4,   "Contiguous",1,   "PXN",1,   "UXN",1,   "reserved",4,    "PBHA",4,   "ignored",1],
    ["Valid",1,   "IsTable",1,   "ignored",10,   "NextLevelTableAddr,Hex",36,   "RES0",4,   "ignored",7,   "PXNTable",1,   "XNTable",1,   "APTable",2,   "NSTable",1]
  ],
   "applies",["S0.IsTable==0",""]
  ],
  # if nReserved=0,then it is reserved, and cannot be considered a descriptor
    ["Descriptor4KBL3","uint64_t",[["Valid",1,   "RES1",1, "AttrIndex",3,   "NS",1,   "AP",2,   "SH",2,   "AF",1,   "nG",1,  "OutputAddr,Hex",36,   "RES0",3,   "DBM",1,   "Contiguous",1,   "PXN",1,   "UXN",1,   "reserved",4,    "PBHA",4,   "Ignored",1]]],
    
]