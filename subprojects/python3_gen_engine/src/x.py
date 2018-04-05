# -*-encoding:utf8-*-
from support import *

hasMultiFields = (len(fields)>1)
ori_fields=fields
fields=processedFields(ori_fields)
qualScaleType = scale_type
qualTemplateSpecArgs=""
qualTemplateAssert=""
if templateSpecArgs is not None:
    qualTemplateSpecArgs="<"+templateSpecArgs+">"
if templateArgs is not None:
    out.write('''template <{templateArgs}>
'''.format(**locals()))
out.write('''
class {name} {qualTemplateSpecArgs} 
'''.format(**locals()))
if extends is not None:
    out.write('''    :public {extends}
'''.format(**locals()))
out.write('''{{
public:
'''.format(**locals()))
if templateAssert is not None:
    cond=templateAssert[0]
    err=templateAssert[1]
    out.write('''    static_assert({cond},"{err}");
'''.format(**locals()))
out.write('''    using ScaleType={scale_type};
'''.format(**locals()))
for enumName,enumVal in enums:
    out.write('''    enum {enumName} {{
'''.format(**locals()))
    for val in enumVal:
        out.write('''        {val},
'''.format(**locals()))
    out.write('''    }};
'''.format(**locals()))
if hasMultiFields:
    out.write('''    union {{
'''.format(**locals()))
for struct_name,field in fields:
    if hasMultiFields:
        out.write('''        struct {{
'''.format(**locals()))
    for i in range(0,len(field),2):
        fd=field[i]
        bits=str(field[i+1])
        out.write('''            {qualScaleType}  {fd}:{bits};
'''.format(**locals()))
    if hasMultiFields:
        out.write('''        }}__attribute__((packed)) {struct_name};
'''.format(**locals()))
if hasMultiFields:
    out.write('''    }}; //union
'''.format(**locals()))
out.write('''
'''.format(**locals()))
qualName = name
out.write('''    AS_MACRO {name}({scale_type} v)            {{set(v);}}
    AS_MACRO {name}& operator=({scale_type} v) {{set(v);return *this;}}
    AS_MACRO void set({scale_type} v) {{ *reinterpret_cast<{scale_type}*>(this)=v;}}
    AS_MACRO {scale_type}  get()const 
    {{
        return *reinterpret_cast<{scale_type}*>(this);
    }}
'''.format(**locals()))
if has_read:
    out.write('''    AS_MACRO void dump()const
    {{
        kout << "{name}: ";
'''.format(**locals()))
    applyIndex=-1
    for struct_name,field in fields:
        applyIndex+=1
        if hasMultiFields:
            if applies[applyIndex]:
                ifCond = "if("+applies[applyIndex]+")"
            else:
                ifCond = "else"
            out.write('''        {ifCond}
        {{
'''.format(**locals()))
        out.write('''            kout
'''.format(**locals()))
        for i in range(0,len(field),2):
            fd=field[i]
            if hasMultiFields:
                fd=struct_name+"."+fd
            features=ori_fields[applyIndex][1][i].split(",")
            if len(features)>1:
                features=features[1:]
                if len(features)>1:
                    raise Exception("Currently Unsupported Feature Number more than 1\n")
                transferedFd = features[0].strip()+"("+fd+")"
            else:
                transferedFd = fd    
            out.write('''                << "{fd} = " << {transferedFd} << ", "
'''.format(**locals()))
        out.write('''                << "\\n";
'''.format(**locals()))
        if hasMultiFields:
            out.write('''        }}
'''.format(**locals()))
    out.write('''    }}
'''.format(**locals()))
if has_read:
    out.write('''    AS_MACRO static {name} read()
    {{ 
        {name} res;
        __asm__ __volatile__("mrs %0,{sys_reg_name}\\n\\t":"=r"(res));
        return res;
    }}
    AS_MACRO {name} & update()
    {{
        __asm__ __volatile__("mrs %0,{sys_reg_name}\\n\\t":"=r"(*this));
        return *this;
    }}
'''.format(**locals()))
if has_write and not hasMultiFields:
    out.write('''    AS_MACRO {qualName} & setMandatoryFields()
    {{
'''.format(**locals()))
    for i in range(0,len(field),2):
        fd=field[i]
        v = resValue(ori_fields[0][1][i])
        if v==1:
            value=1
        else:
            value=0
        out.write('''        {fd} = {value};
'''.format(**locals()))
    out.write('''        return *this;
    }}
'''.format(**locals()))
if has_write:
    out.write('''    AS_MACRO void write()const
    {{
        __asm__ __volatile__("msr {sys_reg_name},%0\\n\\t"::"r"(*this));
    }}
'''.format(**locals()))
out.write('''}}__attribute__((packed));

'''.format(**locals()))

nullptr
s3_0_c12_8_3
