# -*-encoding:utf8 -*-
'''
Created on Mar 28, 2018

@author: 13774
'''
import re
from support import *
from collections import deque
import os
import sys

class GenEngine(object):
    '''可以根据cppy文件生成合法的python源代码片段，这些源代码片段可以被插入到其他代码之中。
    '''
    COMMON_HEAD = 'import Output\nout = Output.Output()\n'

    def __init__(self):
        '''
        Constructor
        '''
        self._includedChain=set()
    def genOutputFmtStr(self,s):
        return "out.write('''" + s + "'''.format(**locals()))"
    def genTabs(self,n):
        return "    "*n
    def convertCppyToPySub(self,file,envs):
        # it is a chain
        self._includedChain.add(file)
        end_mark=">"
        start_py_code="<```"
        start_env_exec="<="
        start_comment="<#"
        states_starts_map={start_py_code:"py_code", start_env_exec:"env_exec",start_comment:"comment"}
        codeOut=""
        with open(file,"r") as f:
            for line in f.read().split("\n"):
                if line in (start_py_code,start_comment,start_env_exec):
                    if envs["state"]!="fmt_str":
                        raise Exception("not allow nesting at line :"  + str(envs["line_no"]))
                    else:
                        if envs["cur_str_for_fmt"]:
                            codeOut += self.genTabs(envs["indent"]) + self.genOutputFmtStr(envs["cur_str_for_fmt"])+"\n"
                            envs["cur_str_for_fmt"]=""
                        envs["state"]=states_starts_map[line]
                elif line==end_mark:
                    if envs["state"]=="fmt_str":
                        envs["cur_str_for_fmt"]+=line+"\n"
                    elif envs["state"]=="env_exec":
                        exec(envs["cur_str_for_exec"],envs)
                        envs["cur_str_for_exec"]=""
                    elif envs["state"]=="py_code":
                        codeOut += envs["cur_str_for_py_code"]
                        envs["cur_str_for_py_code"]=""
                    elif envs["state"]=="comment":
                        pass
                    else:
                        raise Exception("Unkown state\n")
                    envs["state"]="fmt_str"
                else:
                    m = re.match(r'\<=\s*(\d+|\+\+|\-\-|\+\d+|\-\d+)\s*\>',line)
                    if m:# 对indent操作，需要将之前的输出完成
                        if envs["cur_str_for_fmt"]:
                            codeOut += self.genTabs(envs["indent"]) + self.genOutputFmtStr(envs["cur_str_for_fmt"])+"\n"
                            envs["cur_str_for_fmt"]=""
                        if m.group(1)=='++':
                            envs["indent"]=envs["indent"]+1
                        elif m.group(1)=='--':
                            envs["indent"]=envs["indent"]-1
                        elif re.match(r'\d+',m.group(1)):
                            envs["indent"]=int(m.group(1))
                        elif re.match(r'\+\d+',m.group(1)):
                            envs["indent"]=envs["indent"] + int(m.group(1)[1:])
                        elif re.match(r'\-\d+',m.group(1)):
                            envs["indent"]=envs["indent"] - int(m.group(1)[1:])
                    else:
                        # <! incFile>
                        m = re.match(r'^\<\!\s*(\S+)\s*\>$',line)
                        if m:
                            incFile=m.group(1).strip()
                            if incFile in self._includedChain:
                                raise Exception("Cycle inclusion found in file:" + file + ", line " + str(envs["line_no"])+",inclusion file "+incFile)
                            # 递归调用
                            codeOut += self.convertCppyToPySub(incFile, envs)
                        elif re.match(r'^\<\#.*\>$',line):
                            # 行注释
                            pass
                        else:# a normal string
                            if envs["state"]=="py_code":
                                envs["cur_str_for_py_code"] += self.genTabs(envs["indentPyCode"]) + line + "\n"
                            elif envs["state"]=="fmt_str":
                                envs["cur_str_for_fmt"] += self.genTabs(envs["indentFmtStr"]) + line + "\n"
                            elif envs["state"]=="comment":
                                pass
                            elif envs["state"]=="env_exec":
                                envs["cur_str_for_exec"] += envs["cur_str_for_exec"] + line.strip() + ";"
                            else:
                                raise Exception("Unkown state\n")
                envs["line_no"] = envs["line_no"] + 1
            if envs["state"]=="fmt_str":
                if envs["cur_str_for_fmt"]:
                    codeOut += self.genTabs(envs["indent"]) + self.genOutputFmtStr(envs["cur_str_for_fmt"])+"\n"
                    envs["cur_str_for_fmt"]=""
            else:
                raise Exception("unclosed tag at end of line, state="+envs["state"])
        self._includedChain.remove(file)
        return codeOut  
    
    def convertCppyToPy(self,file):
        envs={
            "line_no":1, 
            "indent":0,
            "indentFmtStr":0,
            "indentPyCode":0,
             "state":"fmt_str",
             "cur_str_for_fmt":"",
             "cur_str_for_py_code":"",
             "cur_str_for_exec":"",
        }
        self._includedChain=set()
        return self.convertCppyToPySub(file, envs)
    def genIncludeGuard(self,file_path):
        pass


def generatePythonVersion():
    return ".".join(map(str,
        [sys.version_info.major,sys.version_info.minor,sys.version_info.micro]))
  
def generateContextInfo(commentPrefix):
    s = ["=====Automatically generated by python " + generatePythonVersion(),
         "== working directory: " + os.path.abspath(os.curdir),
         "== " + "  ".join(sys.argv)
         ]
    return "\n".join(map(lambda x: commentPrefix + x,s))

def generateClassFile(inputfile,outfile):
    regDefFile=open(inputfile,"r")
    engine=GenEngine()
    regCode=engine.convertCppyToPy("cppy/Register.cppy")
    local_vars={"reg_defs":[],"includes":[]}
    glbVars={"out":Output()}
    out=glbVars["out"]
    
    exec(regDefFile.read(),glbVars,local_vars)
    reg_defs=canonicalRegDefs(local_vars["reg_defs"])
    includes = local_vars["includes"]
    if not includes:
        includes.append("<def.h>")
    
    out.clear()
    out.writeln(generateContextInfo("//"))
    if outfile:
        guard=genIncludeGuard(outfile)
        out.writeln("#ifndef "+guard)
        out.writeln("#define "+guard)
    out.writeln("\n".join(map(lambda s:"#include " + s, includes)))

    for reg_def in reg_defs:
        exec(regCode,glbVars,reg_def)
    if outfile:
        out.writeln("#endif //"+guard)
    out.print(outfile)
    
def debug():
    engine=GenEngine()
    sysRegCode = engine.convertCppyToPy("cppy/SysRegister.cppy")
    print(sysRegCode)
    reg_def={
        "name":"RegTest",
        "scale_type":"uint64_t",
        "fields":[("A",["RES0,Hex",64]),("B",["RES1,Hex",64])],
        "has_read":True,
        "has_write":True,
        "applies":["A.RES0==0",""],
        "sys_reg_name":"Test",
        "templateArgs":None,
        "templateSpecArgs":None,
        "templateAssert":None,
        "enums":[("",["HALO_A=0"]), ("B",["HALO_B=1"])],
        "extends":"X",
        "in_place_mode":False,
        "out_place_mode":False
    }
    reg_defs=[
    ["RegICC_BPR_EL1_BASE","uint32_t",[["BinaryPoint",3,   "RES0",29]],
     "sys_reg_name","nullptr",
     "no_read",
     "no_write"
     ],
    ["RegICC_BPR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,8,3),
     "extends","RegICC_BPR_EL1_BASE",
     "templateArgs","int grp",
     "templateAssert",["grp==0","group must be 0"]
     ],
    ["RegICC_BPR_EL1","uint32_t",[],
     "sys_reg_name",gccReprRegister(3,0,12,12,3),
     "extends","RegICC_BPR_EL1_BASE",
     "templateArgs","",
     "templateSpecArgs","1",
     ],
    ]
    reg_defs=canonicalRegDefs(reg_defs)
    glbVars={"out":Output()}
    #exec(sysRegCode,glbVars,reg_def)
    for r in reg_defs:
        print(r["sys_reg_name"])
        exec(sysRegCode,glbVars,r)
    glbVars["out"].print()
    input()
    

if __name__=='__main__':
#     debug()
    import sys
    generateClassFile(sys.argv[1],None if len(sys.argv)<3 else sys.argv[2])
#              