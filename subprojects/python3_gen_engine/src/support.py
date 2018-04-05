'''
Created on Apr 2, 2018

@author: 13774
'''
specialFields0={"RES0"}
specialFields1={"RES1"}
specialFieldsX={"reserved","ignored","IMP_DEF"}

specialFields=specialFields0.union(specialFields1).union(specialFieldsX)

import copy
import re
from functools import reduce

def processedFields(fields):
#     print(fields)
    res=copy.deepcopy(fields)
    for _,field in res:
        j=0
        for i in range(0,len(field),2):
            if field[i] in specialFields:
                field[i]=field[i]+"_"+str(j)
                j+=1
            else:
                features = field[i].split(",")
                field[i]=features[0]
    return res
def  canonicalRegDefs(reg_defs):
    res=[]
    for reg_def in reg_defs:
        t = { "name":reg_def[0],
              "scale_type":reg_def[1],
              "fields":[],
              "applies":[],
              "sys_reg_name":None,
              "has_read":True,
              "has_write":True,
              "has_dump":True,
              "has_copy":True,
              "in_place_mode":None,
              "out_place_mode":None,
              "has_setMandatory":True,
              "templateArgs":None,
              "templateSpecArgs":None,
              "templateAssert":None,
              "extends":None,
              "read_needs_isb":False,
              "enums":[],
            }
        
        for i in range(0,len(reg_def[2])):
            t["fields"].append( ("S"+str(i),reg_def[2][i]) )
            t["applies"].append("")
        i=3
        while i != len(reg_def):
            if reg_def[i]=="sys_reg_name":
                t["sys_reg_name"]=reg_def[i+1]
                if not t["name"]:
                    t["name"] = "Reg"+t["sys_reg_name"]
                i+=2
            elif reg_def[i] in {"no_read","no_dump","no_write","no_copy","no_setMandatory"}:
                t["has_"+reg_def[i][len("no_"):]]=False
                i+=1
            elif reg_def[i] in {"in_place","out_place"}:
                t[reg_def[i]+"_mode"]=True
                i+=1
            elif reg_def[i] in {"read_needs_isb"}:#set true
                t[reg_def[i]]=True
                i+=1
            elif reg_def[i] in t:#key + 参数
                t[reg_def[i]]=reg_def[i+1]
                i+=2
            else:
                raise Exception("Unknow configuration key : " + reg_def[i])
        # set nature
        if t["in_place_mode"] is None and t["out_place_mode"] is None:
            if t["sys_reg_name"]:
                t["out_place_mode"]=True
            else:
                t["in_place_mode"]=True
        if t["in_place_mode"]==t["out_place_mode"]:
            raise Exception("mode error, either in_place or out_place\n")
        res.append(t)
    return res
# 0,1 表明RES0,RES1
# -1表明无关紧要，-2表明未知
def resValue(field_name):
    if field_name in specialFields0:
        return 0
    elif field_name in specialFields1:
        return 1
    elif field_name in specialFieldsX:
        return -1
    else:
        return -2
    
#s3_0_c4_c2_3
def gccReprRegister(op0,op1,crn,crm,op2):
    return "s"+str(op0)+"_"+str(op1)+"_c"+str(crn)+"_c"+str(crm)+"_"+str(op2)

# gccReprMap = {
#     "PAN":gccReprRegister(3,0,4,2,3),
#     "ICC_BPR0_EL1":gccReprRegister(3,0,12,8,3),
#     "ICC_BPR1_EL1":gccReprRegister(3,0,12,12,3),
#     "ICC_CTLR_EL1":gccReprRegister(3,0,12,12,4),
#     "ICC_CTLR_EL3":gccReprRegister(3,6,12,12,4),
#     "ICC_DIR_EL1":gccReprRegister(3,0,12,11,1),
#     "ICC_EOIR0_EL1":gccReprRegister(3,0,12,8,1),
#     "ICC_EOIR1_EL1":gccReprRegister(3,0,12,12,1),
#     "ICC_HPPIR0_EL1":gccReprRegister(3,0,12,8,2),
#     "ICC_HPPIR1_EL1":gccReprRegister(3,0,12,12,2),
#     "ICC_IAR0_EL1":gccReprRegister(3,0,12,8,0),
#     "ICC_IAR1_EL1":gccReprRegister(3,0,12,12,0),
#     "ICC_IGRPEN0_EL1":gccReprRegister(3,0,12,12,6),
#     "ICC_IGRPEN1_EL1":gccReprRegister(3,0,12,12,7),
#     "ICC_IGRPEN1_EL3":gccReprRegister(3,6,12,12,7),
#     "ICC_PMR_EL1":gccReprRegister(3,0,4,6,0),
#     "ICC_RPR_EL1":gccReprRegister(3,0,12,11,3),
#     "ICC_SGI0R_EL1":gccReprRegister(3,0,12,11,7),
#     "ICC_SGI1R_EL1":gccReprRegister(3,0,12,11,5),
#     "ICC_SRE_EL1":gccReprRegister(3,0,12,12,5),
#     "ICC_SRE_EL2":gccReprRegister(3,4,12,9,5),
#     "ICC_SRE_EL3":gccReprRegister(3,6,12,12,5),
# }

def extendList(e,lst):
    lst.extend(e)
    return lst
def flattenList(lst):
    return list(reduce(extendList, lst,[]))



    
def genIncludeGuard(file_path):
    file_path = file_path.strip().upper()
    if file_path.endswith(".H"):
        file_path = file_path[:-2]+"_H__"
    file_path = file_path.replace("\\","_")
    file_path = file_path.replace("/","_")
    file_path = file_path.replace(".","_")
    # 将 _____ 换成__
    file_path = re.sub(r"__{2,}", "__", file_path)
    return file_path
    
class Output(object):
    def __init__(self):
        self._content=""
    def write(self,str):
        self._content += str
    def writeln(self,str):
        self._content += str + "\n"
    def clear(self):
        self._content=""
    def print(self,file=None):
        if file:
            with open(file,"w") as f:
                f.write(self._content)
        else:
            print(self._content)