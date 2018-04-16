# 关于
此文件描述GPIO模块，基于BCM2835

# 概述
54个GPIO线分为两组。所有的GPIO引脚至少有两个功能（function）。

# 寄存器布局
有41个寄存器，bus基地址是0x7E20_0000, pi3中的物理地址是0x3F00_0000。

偏移 0~0x14为GPFSEL0~GPFSEL5, 每个GPFSEL能够设置10个Pin的功能。每三位一个功能。至多60个Pin。但是注意，GPFSEL5只有4个配置，因此最大值是FSEL53.

FSEL0对应的位为：GPFSEL0[0:2], 取值如下：
000 - Input
001 -Output
100 - alt0,  101 - alt1 ,  110 - alt2 , 111 - atl3, 011 - alt4, 010 - alt5

## 设置1和0，读取
通过GPSET0/1 以及 GPCLR0/1来完成。
前一个写1设置，写0无影响。当作为Input时无影响。
后一个写1清除，写0无影响。

通过GPLEV0/1来读取相应的位。该寄存器也是可写的。

# 
The Alternate function table also has the pull state which is applied after a power down