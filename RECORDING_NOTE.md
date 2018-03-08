# 2018年3月8日13:50:58
更新了内存管理模块的内容，关于Linux的内存管理机制，参见http://blog.csdn.net/yang_chen_shi_wo/article/details/47024215
commit
# 2018年3月7日10:31:19
更新了MemoryChunk的定义
# 2018年3月6日18:28:43
我们需要贯彻的一个思想是， 开发操作系统和开发软件是相似的
# 2018年3月6日10:14:53
实现一个用户态程序，暂时不实现调度功能。
实现有一个控制台，能够执行echo命令即可。
进程的代码需要加载到RAM中，然后使用TTBR0映射到低地址空间。进程需要自身的内存分配器，但是RAM无论多少都是可供进程分配的，因此操作系统需要维护一个统一的物理内存管理器，并且该管理器必须考虑竞争问题，但是目前我们并不考虑这个问题。
进程需要RAM来加载代码，需要RAM来分配栈，需要RAM来动态分配内存，需要使用RAM来保存自己的页表。内存分配是一个系统调用，而且分配的
加载进程的过程：
	在kernel下，知道进程代码体的大小，申请内存，将进程的代码复制到RAM中，读取进程头部信息{进程应当被加载的基地址(64位，0xfff..f表示位置无关代码),第一条指令的偏移(32位)，进程所需的初始栈大小}，4字节对齐之后就是代码
	根据进程代码体的大小、初始栈的大小申请内存，建立映射页表， 栈的顶端要么位于最高地址，要么位于进程基地址。 代码的映射时只读的，栈的映射是可读写的，使用0-3级页表映射。
	kernel保存上下文，然后使用一条eret指令跳转到进程的 基地址+第一条指令的偏移 处

前提： 内存分配器正常工作
由于引入了虚拟内存，内存分配器必须面向虚拟内存进行分配。内存分配器分配分为两种情况：
1.对kernel进行分配
2.对application进行分配

在kernel下，RAM整体是完全映射的，kernel使用虚拟地址建立内存管理器。对kernel进行分配只需调用分配函数即可。
在application下，分配的内存需要使用地址映射，所以需要在页表中增加一项（当此表中没有时）， 因此最小的分配单位是4KB。
过程： kernel分配出一页（4KB对齐的），得到一个kernel的虚拟地址A，将其转换为物理地址PA,假定此时application至少还有一个页项F，则F.OutputAddr = PA >> 12 即完成映射，返回地址RA=F在表中的位置。
细化：application具有L0Table[],(L1Table*)[],(L2Table**)[],(L3Table***)[],  这些表每个至少占据4KB。 每次分配4KB页。
下面的假设基本上是可行的：
L0Table[508]-L0Table[519] 用于动态内存分配
L0Table[510]-L0Table[511] 用于栈分配

由操作系统管理这些页表项的使用。首次建立页表时，必须将所有的项标记为Invalid。 查找时，从L3Table开始查找第一个Invalid的项,如果所有的项都是valid，则向上查找L2Table。如果在LxTable中查找到第一个Invalid的项，则从LxTable的该项起开始建立多级页表直到L3Table。
在整个过程中，我们必须追踪每级页表的项下标以便形成最终的虚拟地址。

操作系统管理进程需要的结构：
L0Table[0]的虚拟地址,从0-511连续使用,LxTable的物理地址均可从前面的项中推断出来，然而我们需要的还包括页表的虚拟地址。
对于LxTable的虚拟地址，我们使用VAofLxTable来记录，每个表的结构与x有关。 查找时使用线性查找。
如果不能查找到某级页表某项的虚拟地址，证明不存在该项，此时需要申请4KB的页表。

函数原型：
allocSingleTable(x,size)  在x级分配size大小的页表，分配地址必须按size对齐
allocChainedTables(x,size) 从x起开始，到3，每级分配一个size大小的页表，且每个页表的地址必须按size对齐

# 2018年3月5日11:40:29
update:至此，我们得出的一个结论是，在c++中永远不要信任汇编代码
参考stackoverflow问题：https://stackoverflow.com/questions/49103448/aarch64-elf-g-fpic-gives-different-values-for-local-and-global-symbol
在-fPIC选项下，同一地址的局部标号和全局标号的引用值不同。局部标号总是引用成该标号所在的函数的地址值，而全局标号正确引用
如下面的程序：
```c++
void testIfLocalSymWrongs()
{
	kout << "in test, test func address = " << Hex(reinterpret_cast<uint64_t>(testIfLocalSymWrongs)) << "\n";
	extern char local[];
	extern char global[];

	ASM_DEFINE_LOCAL_SYM(local);
	ASM_DEFINE_GLOBAL_SYM(global);
	kout << "local = " << Hex(reinterpret_cast<uint64_t>(local)) << "\n";
	kout << "global = " << Hex(reinterpret_cast<uint64_t>(global)) << "\n";

}
```
local理论上应当和global具有相同的值，而函数的地址也应当与local不同，实际的输出是（一个场景下的例子）：
```
in test, test func address = 3c64
local = 3c64
global = 3cc0
```
查看.got分区：
```
0000000000007808 <_GLOBAL_OFFSET_TABLE_>:
        ...
    7810:       00003c64        .word   0x00003c64
    7814:       00000000        .word   0x00000000
    7818:       40001000        .word   0x40001000
    781c:       00000000        .word   0x00000000
    7820:       40003000        .word   0x40003000
    7824:       00000000        .word   0x00000000
    7828:       00003c64        .word   0x00003c64
    782c:       00000000        .word   0x00000000
    7830:       40003020        .word   0x40003020
    7834:       00000000        .word   0x00000000
    7838:       40002000        .word   0x40002000
    783c:       00000000        .word   0x00000000
    7840:       00007908        .word   0x00007908
    7844:       00000000        .word   0x00000000
    7848:       00003cc0        .word   0x00003cc0
    784c:       00000000        .word   0x00000000
    7850:       40003018        .word   0x40003018
    7854:       00000000        .word   0x00000000
    7858:       00006f64        .word   0x00006f64
    785c:       00000000        .word   0x00000000
    7860:       00007918        .word   0x00007918
```
可能的情况是，.got表并没有为局部标号生成地址引用，因此总是引用到当前函数的地址（或者某个基址）。
在需要引用汇编标号的值时，最好定义全局标号。

# 2018年3月5日11:18:37
分支引起的错误：
下面的代码：
void testIfLocalSymWrongs()
{
	kout << "in test, test func address = " << Hex(reinterpret_cast<uint64_t>(testIfLocalSymWrongs)) << "\n";
	int x=1;
	extern char local[];
	ASM_DEFINE_LOCAL_SYM(local);
	clocal:
	kout << "x = " << x  << "\n";
	kout << "local = " << Hex(reinterpret_cast<uint64_t>(local)) << "\n";
	if(x > 0)
	{
		--x;
		kout << " x = " << x<<"\n";
//		ASM_GOTO(local);
		goto clocal;

	}
}

分别使用汇编指令和C++风格定义了两个符号：local和clocal
两者的地址相同
但是，使用ASM_GOTO的跳转不能正确执行，原因是x没有正确更新
使用goto的语句能够正确执行，x正确更新

其原因可能有点出乎意料，先给个解决方案：如果将clocal:放在ASM\_DEFINE\_LOCAL\_SYM之前，则能够正确执行。
原因在于，ASM\_DEFINE\_LOCAL\_SYM 定义的标号并没有确切的位于我们所看见的位置，在汇编语句中，它位于int x=1;之前。也就是说，在使用汇编语句定义标号是不准确的，是不可靠的，除非强制使用c++标号来强制同步其位置。

因此一个通用的解决方案是，在每个汇编标号之前，强制生成一个C++标号。
即：
`
#define ASM_DEFINE_LOCAL_SYM(sym) __asm__sym__##sym: __asm__ __volatile__(__stringify(sym) ":\n\t")
`
在编译选项中，需要加入 `-Wno-unused-label`或者`-Wno-error=unused-label`


# 2018年3月5日09:55:53
必须讨论位置无关代码对比普通代码的优缺点
1.不能使用绝对地址
2.执行速度可能降低（对比直接使用绝对地址的情况）
需要使用地址的情况（也就是位置无关选项影响的情况）：
跳转
读/写数据

理论显示，可以使用位置无关代码编译内核代码.
如果使用-fPIC选项，则会生成辅助分区.got, .got.plt,.got.*等， 其中.got分区包括`_GLOBAL_OFFSET_TABLE_`表，因此linker必须处理这些表

一个错误：

# 2018年3月4日12:39:53
修正之前的错误，其实代码也可以从read-write的区域执行，但是此时EL0不能访问这些区域。也就是说，合理的AP[2:1]取值为0b00,0b1x
正确地映射了RAM，现在代码能够正常执行到最后。也就是能够通过TTBR1_EL1正确映射。

计划：下午写一个大体的总结，然后开始SD卡的读写问题
# 2018年3月3日13:36:19
今日成功地启用了MMU
之前的错误及其修正：
TTBR的BADDR域必须设置成0级页表地址右移1位
页表的地址域必须设成基本地址右移12位
之前产生了Permission Fault,原因是块描述符或者页描述符的AP域设成了01, 可读写，可从EL0访问。改成1x, 只读，正确。  -- 原因可能与设置了不能从可写的区域执行代码有关 (update: AP=0b00,0b10,0b11均可)

# 2018年3月2日20:32:17
其他有用的参考：https://github.com/PeterLemon/RaspberryPi，https://github.com/LdB-ECM/Raspberry-Pi
包含一些USB和图形等方面的参考

https://github.com/forkachild/NarcOS

# 2018年2月28日19:57:23
编写位置无关的代码及其测试：
1.使用QEMU
	生成系统镜像
	计算其大小size，保证为4的倍数（PC对齐检查）
	复制一份，附加到原镜像的末尾
	在代码的测试部分，增加PC的值为4+size，如果正常跳转到下一条指令到最后，说明PIC成功
缺点：所有的地址访问都是基于PC的，因此RAM也需要复制，麻烦

-pie, --pic-executable      Create a position independent executable
-fpic                       Generate position-independent code if possible

选择使用-fpic


# 2018年2月28日15:24:07
对虚拟内存进行测试，过程如下：
选择EL1 & EL0的非安全模式，只有一个阶段的转换，这将减少实现的复杂度。
系统初始化完成后，首先确定系统支持的转换地址的位数，一般是48位，在QEMU上是40位，然而这个值可以变化，程序有能力保证不同的数值有正确的设置。读取ID\_AA64MMFR0_EL1.PARange的值即可。少于标准48位的，认为其高部分恒为0即可，因此在这些情况下，输入地址仍然是48位的。
确定每级页表的基地址和内容，n级页表的内容由n+1级页表的基地址及其内存属性构成。
确定转换表的粒度：4KB，但是需要确定该粒度是否支持，通过ID\_AA64MMFR0_EL1.TGRAN{4,16,64}==0b0000来确定。
确定映射方案：内核和程序都必须使用RAM，由于EL2/EL3只能使用第一个地址空间，因此为了兼容性考虑，只能将RAM映射到第一个地址空间，此外，当考虑到分配内存时，如果返回一个内核空间的地址，则程序将会无权访问。RAM如果已经存在于程序空间，并且空出的大小合适，则不需要对RAM进行额外的映射。
在启用MMU之后，地址关系已经改变，此时必须重新使用新的全局变量的地址，这些地址不能使用PIC，只能使用绝对地址。因此，内核分为两个部分单独编译，第一部分：PIC  第二部分：启用MMU之后，非PIC选项 -- 弃用
启用MMU之后的一段代码所处的地址必须是直接映射的，一般这段代码的地址空间位于程序空间。设其物理地址是P，虚拟地址是V，
启用MMU之后的一段代码必须进行ISB，然后跳转到高地址空间进行，如果目标跳转函数是A，只需要获取A与原始基地址的偏移，加上高端基地址即可。

决定转换表中内存区域的属性，对于QEMU，前面的内存一部分是Device。 属性主要影响缓存，访问权限，可读可写性

设置转换表：
	flatten映射表： 

设置TCR_EL1.IPS, 它必须小于等于PARange的位数
设置T0SZ,T1SZ, 它们决定输入地址的位数，通过决定具有特殊含义的高位的数目。通常设置为与PARange产生的结果一致即可。VA的所有有特殊意义的位的值必须全部相同。TxSZ其实决定了转换表遍历的起始级别，保存该起始级别的转换表基地址所需的额外位数，这也减少了转换表的大小。

TTBR的基地址受OA的影响，其高出OA的位必须为RES0

4KB转换中，PA[11:0]=VA[11:0]

必须保证启用MMU之后的ISB指令也能被执行，但是启用MMU的指令地址是已知的，因此必须编写位置无关(PIC)的代码。

禁用地址标签，该转换阶段支持两个地址空间，需要分别设置。就一般而言，全1为kernel，全0为user


在非安全状态，NSTable和NS位会被忽略

TLB缓存，如果一个虚拟地址已经被缓存，则其物理地址立即可得。如果修改了某个位置的页表，则程序本身必须负责使用TLB管理指令。
此外，对于转换表中的nG=1的项，当其被加入到TLB中时，会关联一个ASID值，因此不必在上下文切换时使所有的表项失效。


AF=0，则第一次访问时会产生fault

转换过程：
 输入地址VA[47:0]
 级别0：TTBR_EL1[47:12] & VA[47:39] & 0b000 --> 指向VB1
 级别1：VB1[4
 
最后，通过SCTLR_ELx.M=1来启用这个转换阶段

当前情况下，我们只考虑所有的内存都由EL1访问，即高权限的。


如果是在树莓派上，确保关闭了安全扩展（EL3）和虚拟化扩展（EL2），剩下的就是非安全的EL1和EL0.


附：上下文切换需要保存的状态
- 通用寄存器X0~X30
- V0-V31
- 一些状态寄存器
- TTBR0_EL1和TTBR0
- 线程进程标识ID寄存器(TPIDxxx)
- 地址空间ID(ASID)