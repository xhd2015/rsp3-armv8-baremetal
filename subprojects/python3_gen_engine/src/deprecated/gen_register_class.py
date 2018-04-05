# -*- encoding:utf-8 -*-
# /usr/bin/python3

import sys
import imp


if len(sys.argv)<3:
    print("usage: "+sys.argv[0] + " [reg_list_file] [output_path]")
    exit()
    
TYPE_LENGTH = {"uint64_t":64, 
               "uint32_t":32,
                "uint16_t":16,
                "uint8_t":8}

  
# common SETUP_TYPE: STD, MEM_MAPPED,GCC_REPR,HARD_CODED,ANY_MEM  
# common options: no_read,no_write,no_update_read,no_dump defines whether one has read,write,updateRead,dump methods
# the nature of each SETUP_TYPE:
#   STD :
#   MEM_MAPPED :
#   GCC_REPR : same with STD
#   HARD_CODED : same with STD
#   ANY_MEM : no_update_read

# attributes:
#  applies -- each condition must be present, if it is condition listed else, use empty string: ""


# load arg as module,name it as reg_list
imp.load_source("reg_list","",open(sys.argv[1]))
reg_list = sys.modules["reg_list"].reg_list
output_path = sys.argv[2]

# ../include/path.h --> __INCLUDE_PATH_H__
# ../include/vector --> __INCLUDE_VECTOR
# include/vector --> INCLUDE_VECTOR
def genIncludeGuard(file_path):
    file_path = file_path.strip().upper()
    if file_path.endswith(".H"):
        file_path = file_path[:-2]+"_H__"
    file_path = file_path.replace("\\","_")
    file_path = file_path.replace("/","_")
    file_path = file_path.replace(".","_")
    return file_path

# func prototype = str func(field,bits,additional)
def toFieldList(field_list,func):
    res=[]
    for i in range(len(field_list)):
        res.append([])
        for j in range(0,len(field_list[i]),2):
            field=field_list[i][j]
            bits = field_list[i][j+1]
            dotPos = field.find(",")
            if dotPos!=-1:
                res[i].append( func(field_list,i,j,field[:dotPos],bits,field[dotPos+1:]) )
            else:
                res[i].append( func(field_list,i,j,field,bits,"") )
    return res
def genFuncGenFieldDef(scaleType):
    def f(field_list,i,j,fd,bt,ad):
        return "        "+scaleType+"\t\t"+fd+":"+str(bt)+";"
    return f

#           << "field"<<field
# "\",\"" << \n".join
def funcDump(field_list,i,j,field,bits,additional):
    showField=field
    usedField=field
    if len(field_list)>1:
        showField = "S"+str(i)+"." + field
        usedField = "S"+str(i)+"."+field
    res = "                <<\"" + showField +" = \"<< ";
    if additional:
        res += additional + "("+usedField+")"
    else:
        res += usedField
    return res

def genClassName(reg_name):
    return "Reg"+reg_name


# applies when ( struct1.Fn==Valn && )..
# {"reg_name":"XX","setup_type":"STD","fields":[[],[]],"applies":[["Fn==Valn"]],
# "scale_type":"uint64_t",
#  "no_read":true,"no_write":true,
#  "volatile":true,"
#  "
# }
#
#  return declaration(in header) and definition(in source file)
def genClass(class_config):
    definition=''
    declaration = r'''
class Reg'''+class_config["reg_name"]+r'''{
public:
'''
    setup_type = class_config["setup_type"]
    fieldList = class_config["field_list"]
    no_read = class_config.get("no_read")
    no_write = class_config.get("no_write")
    no_update_read = class_config.get("no_update_read")
    no_dump = class_config.get("no_dump")
    reg_name =class_config["reg_name"]
    strList = toFieldList(fieldList, genFuncGenFieldDef(class_config["scale_type"]))
    if len(strList) > 1:
        declaration += "    union{\n"
        for i in range(len(strList)):
            declaration += "        struct{\n"
            declaration += "\n".join(strList[i])
            declaration += "\n       }__attribute__((packed)) S"+str(i)+";\n\n"
        declaration += "    }__attribute__((packed));\n"
    else:
        declaration += "\n".join(strList[0])
    if not no_dump:
        declaration += "\n        AS_MACRO void dump()const\n        {\n"
        declaration += "            kout << \""+reg_name+" : \""                # kout << "reg_name : "
        dumps = toFieldList(fieldList, funcDump)
        if len(dumps) == 1:
            declaration += "\n"
            declaration += " << \",\"\n".join(dumps[0])
            declaration += "\n                 "
        else:
            declaration += ";\n"
            for i in range(len(dumps)):
                if len(class_config["applies"][i])>0:
                    declaration += "            if(" + class_config["applies"][i]+")\n            {\n"
                else:
                    declaration += "            else\n            {\n"
                declaration += "             kout  \n";
                declaration +=  " << \",\"\n".join(dumps[i])
                declaration += ";\n            }\n"
            declaration += "             kout";
        declaration += " << \"\\n\";\n        }\n"
    if not no_read:
        if setup_type == "ANY_MEM":
            declaration += "        AS_MACRO static "+genClassName(class_config["reg_name"])+" read(void *p);\n"
            declaration += "        AS_MACRO static "+genClassName(class_config["reg_name"])+" read(size_t p);\n"
        else:
            declaration += "        AS_MACRO static "+genClassName(class_config["reg_name"])+" read();\n"
    if not no_update_read and setup_type!="ANY_MEM":
        declaration += "        AS_MACRO "+genClassName(reg_name)+"  updateRead();\n"
    if not no_write:
        if setup_type == "ANY_MEM":
            declaration +=  "        AS_MACRO void write(void *p)const;\n"
            declaration +=  "        AS_MACRO void write(size_t p)const;\n"
        else:
            declaration += "        AS_MACRO void write()const;\n"
    declaration += "}__attribute__((packed));\n"
    if not no_read:
        declaration += "SETUP_REG_" + class_config["setup_type"]+"_READ("+class_config["reg_name"]+")\n"
    if not no_update_read:
        declaration += "SETUP_REG_" + class_config["setup_type"]+"_UPDATE_READ("+class_config["reg_name"]+")\n"
    if not no_write:
        declaration += "SETUP_REG_" + class_config["setup_type"]+"_WRITE("+class_config["reg_name"]+")\n"
    declaration += "\n"
    return declaration


def getMapFromList(givenList):
    res ={ "reg_name":givenList[0], 
          "scale_type":givenList[1],
          "setup_type":givenList[2],
          "field_list":givenList[3]}
    i = 4
    while i != len(givenList):
        if givenList[i]=="applies":
            res["applies"]=givenList[i+1]
            i+=2
        else:
            res[givenList[i]] = True
            i+=1
        res["no_update_read"]=True
    return res

def genAll(regList,filepath):
    res = "//##======Automatically generated==========##\n"
    res += "//##====" + " ".join(sys.argv) +"=========##\n" 
    guard = genIncludeGuard(filepath)
    res += "#ifndef " + guard +"\n"
    res += "#define " + guard +"\n"
    res += "\n"
    res += "#include <arch/common_aarch64/registers_defines.h>\n"
    declsList = map(genClass,map(getMapFromList,regList))
    res += "\n".join(list(declsList))
    res += "\n\n"
    res += "#endif // " + guard
    return res

# 检查reg_list的所有项是否合法，即位数和是否与声明相等
#def checkProcessRegList(reg_list):

# 对reg_list进行处理，将其中的RES0,RES1转换成RES0_/RES1_ $INDEX
#def processRegList(reg_list):

# if __name__=='__main__':
#     regList=[["PC","uint64_t","PC",[["PC,Hex",32,"PC1",32],["PC,Hex",32,"PC2",16,"PC4",16]],"applies",["PC!=0 && PC!=1",""]]]
#     print(genAll(regList,"../include/aarch/common_aarch64/gicv3_registers.h"))
#     
    
if __name__ == '__main__':
    f=open(output_path,"w")
    f.write(genAll(reg_list,output_path))
    f.flush()


# tests, ignored by normal programming
def testGenMapFromList():
    regList=[["PC","uint64_t","PC",[["PC,Hex",64]],"applies",[["PC!=0","PC!=1"]],"no_read"]]
    mapList = list(map(getMapFromList,regList))
    print(mapList)

    
# testGenMapFromList()
    