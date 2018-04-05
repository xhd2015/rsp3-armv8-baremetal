# 帮助
使用方法： 首先定义reg_defs.py文件，该文件格式参见后面的章节。
然后，cd到src目录，运行： python3 GenEngine.py reg_defs.py output.h
即可根据Registers.cppy模板文件生成output.h文件。
# cppy文件的格式
cppy使用<...>来标记一个块，下面是一个简单的例子：
```
<```
# -*-encoding:utf8-*-
# this will be python code
>
This will be varbatim
<```
from support import *

hasMultiFields = (len(fields)>1)
if hasMultiFields:
>
<=  ++>
something goes here  if hasMultiFields True
<=  -->
<```
else:
    if hasNoFields:
>
<=      +2>
something goest here if not hasMultiFields and hasNoFields
<=      -2>
```
生成的python文件格式如下：
```python
out.writeln('''# -*-encoding:utf8-*-
# this will be python code
'''.format(**locals())
from support import *

hasMultiFields = (len(fields)>1)
```

语法标记：

<```
python代码
>

<#
多行注释
>

<#    单行注释  >

<=
环境设置代码，可设置的环境包括line_no, indent, indentFmtStr,indentPyCode
不推荐设置的环境： state, cur_str_for_fmt,...
>

下面是<=...>块的简写：
<=N>  将indent设置为N
<=++> indent++
<=--> indent--
<=+N> indent=indent+N
<=-N> indent=indent-N

注意，<= ... > 允许空格，因此可以用空格来表明对齐：
```
<```
    if hasMultiFields:
>
<# 下面的++表明后面的输出的对齐开始 >
<=      ++>
    }}
    
<# --将其恢复 >
<=  -->
```


<! 引入文件 > 



# reg_defs.py的格式
```python
reg_defs=[
    {
        "name":"RegTestSingle",
        "fields":[("F0",["A",1, "RES0",40,"RES1",2,"RES0",20,"ignored",1]),
                  ("F1",["RES1",64])
                  ],
         "scale_type":"uint64_t",
         "applies":["F0.A==0",""],
         "has_read":False,
         "has_write":False,
         "sys_reg_name":"SPSel",# 如果该项存在，则说明是sys_reg,其他的含义均不相同,
         "in_place_mode":True,
         "out_place_mode":False,
         "read_needs_isb":False,
    },
]
```

scale_type的取值可以是：`uint64_t`,`uint32_t`,`uint16_t`,`uint8_t`
sys_reg_name表明该项是一个系统寄存器，并且指定名称。 如果不是系统寄存器，需要设置为None.

