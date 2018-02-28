
def gen(s):
    res = r'''
class Reg'''+s["reg_name"]+r'''{
public:
'''
    dump_body=""
    for i in range(0,len(s["fields"]),2):
        res+="    "+s["scale_type"]+"        " + s["fields"][i] + ":"+str(s["fields"][i+1])+";\n"
        dump_body += "        << \"" + s["fields"][i]+ " = \" << " + s["fields"][i] + "\n"
    res+=r'''
    void dump()const
    {
        kout << "''' + s["reg_name"] +":\"\n" + dump_body+r'''        << "\n";
    }
}__attribute__((packed));
SETUP_REG_''' + s["setup_type"]+"("+s["reg_name"]+")\n"
    return res
    


if __name__=='__main__':
    x=["ISR","uint64_t","MEM_MAPPED",["NS",1,"RES0_0",2]]
    p=["reg_name","scale_type","setup_type","fields"]
    s=dict(zip(p,x))
    print(s)
    print(gen(s))
