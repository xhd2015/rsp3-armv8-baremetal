# 2018年3月19日15:08:25
【commit point】【milestone】 进程相关的函数已经完成：killProcess, fork, scheduleNext。

根据反馈，在.gitignore文件中增加了Debug目录的排除

使用参见[user_main_fork_process.cpp](../src/arch/user_space/user_main_fork_process.cpp)
# 2018年3月19日13:31:13
【acknowledged】 析构函数的几个原则： 1.可被重复调用  2.std::move之后仍可调用 
# 2018年3月19日13:28:07
【acknowledged】 对于类定义
```c++
#include <iostream>

using namespace std;


class Process{
public:
	Process() // 总是先设置默认值
	{
		_priority = 21;
	}

	Process(int pid) // 仅仅设置_priority的默认值
		:_pid(pid)
	{}

	Process(const Process &p) //总是先设置默认值
	{
		_pid = p._pid + 1;
		_priority = p._priority;
	}

	void dump()const
	{
		cout << "_pid = " << _pid << ", _priority = " << _priority << "\n";
	}

private:
	int _pid {0};
	int _priority { 10 };
};

int main()
{
	Process p1;
	p1.dump();
	Process p2(2);
	p2.dump();

	Process p3(p2);
	p3.dump();
}
```

则对Process进行初始化，其各个域如何设置？

从效率的角度来考虑，其实 `int _pid {0}`就相当于初始化列表中的默认值，如果没有提供就会使用，如果提供了，就不使用。因此，初始化列表在赋值上具有更高的优先级。

特别是成员中有类时，更应该使用初始化列表。

使用初始化列表的两个理由：1.覆盖默认值  2.避免重复，提供效率。
# 2018年3月19日10:44:56
【todo】 实现fork，探索copy on write的实现。
# 2018年3月19日10:24:37
【acknowledged】 命名：Pid要比PidType好许多，   PID_INVALID,PID_CURRENT,PID_PARENT要比INVALID_PID,CURRENT_PID,PARENT_PID好。 因为统一的前缀表明了某种关系，约束了命名空间。
# 2018年3月19日00:54:59
【commit point】测试了DoublyLinkedList, 完善了ProcessManager,进程现在可被调度。
# 2018年3月19日00:49:21
【acknowledged】 在EL1下执行`msr sp_el1,x0`产生异常。根据armv8的文档,sp_el1仅能在EL2,EL3访问。然而当SPSel=1时，通过sp也能访问。
```c++
	__asm__ __volatile__(
		"cbz %1, 1f \n\t" // if savedSpEL1==nullptr, branch
		"msr  sp_el1,  %1 \n\t" // else set sp=savedSpEL1
		"1: \n\t"
		"mov  x30, %0 \n\t"
		RESTORE_REGS_ASM_INSTR_X30_BASE
		"eret \n\t"
		::"r"(_registers),"r"(savedSpEL1)
		:"sp"
	);
```

# 2018年3月18日19:45:19
修改了ARCH_IS_{TARGET_ARCH}为 TARGET_ARCH_IS_{TARGET_ARCH}

【bug】 观察到ProcessManager的list被非预期性地改变，可能内存分配仍然存在错误。调试方法：内存观察。 【bugfix】 是由于EL1的栈指针没有正确设置。因为在还原寄存器时，使用了sp作为基址寄存器，sp指向了_registers变量地址。  目前采用x30作为基址寄存器，完美解决了这个问题。

# 2018年3月18日17:51:28
【bug】 DoublyLinkedList错误：_head,_tail没有保持不变式约束。
# 2018年3月18日16:27:49
【acknowledged】 声明下面的函数会导致所在的源文件无法编译成对象文件。
```c++
// 如果不注释下面这一行，该文件可能无法编译
extern "C" void __static_initialization_and_destruction_0(int,int);
```

# 2018年3月18日14:29:08
完成了DoublyLinkedNode,DoublyLinkedNode, ForwardList,ForwardNode的定义，但是尚未测试。

它们可以用作通用的数据结构。

【acknowledged】 当定义了__dso_handle, __cxa_atexit之后， 定义extern void exit(int errCode)会出现编译错误。
# 2018年3月18日12:34:11
【acknowledged】在未定义`__cxa_atexit`和`__dso_handle`的情况下，编译出现下面的错误，这两个函数在`__static_initialization_and_destruction_0(int, int)`中引用
```c++
./src/global_variables.o: In function `__static_initialization_and_destruction_0(int, int)':
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp:24: undefined reference to `__dso_handle'
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp:24: undefined reference to `__dso_handle'
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp:24: undefined reference to `__cxa_atexit'
d:/installed/gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf/bin/../lib/gcc/aarch64-elf/7.2.1/../../../../aarch64-elf/bin/ld.exe: qemu_virt.elf: hidden symbol `__dso_handle' isn't defined
d:/installed/gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf/bin/../lib/gcc/aarch64-elf/7.2.1/../../../../aarch64-elf/bin/ld.exe: final link failed: Bad value
collect2.exe: error: ld returned 1 exit status
```
【todo】 查阅文档，弄清楚上面函数的声明和定义，以及它们的作用。
# 2018年3月18日11:48:44
【acknowledged】 
```c++
template<class T>
inline const ForwardNode* ForwardNode<T>::next() const
{
	return _next;
}
```
产生编译错误，  在返回参数中不能够省略参数列表。

# 2018年3月18日10:03:32
operator new和new operator
前者即 operator new的形式，后者即 new 或者::new的形式

new 调用 operator new, operator new 只负责分配空间。

::new 调用对应的 ::operator new
# 2018年3月18日09:57:57
【acknowledged】 现在我们将讨论一点，哪些情况下声明和定义必须被放在一起、将声明和定义捆绑在一起有什么缺点以及如何克服这种缺陷？

1.在声明template和内联函数时，其实现必须也可见

2.声明和定义捆绑将会导致声明无法重用，比如头文件<new>定义了new的声明和实现，这样我们根本无法在其他地方重新实现。

3.多数情况下这种缺陷并不引起问题，解决方法是将实现文分离出来，然后声明文件引入，这种方式减小了耦合性。

# 2018年3月17日23:54:48
【todo】 完善ForwardNode的分配函数，编写ForwardList的测试，完善基于对象的分配（new操作符）
【todo】 完成ProcessManager::scheduleNextProcess(), Process:saveContext(), Process::restoreContext()
【todo】 查看c语言处理异常的方式
# 2018年3月17日18:21:45
【commit point】 修正了svc_call的定义，现在它使用模板参数。新增了Process类的定义，参见 [Process.h](../include/schedule/Process.h), [main_run_process.cpp](../src/arch/qemu_virt/main_run_process.cpp)
# 2018年3月17日17:35:04
【acknowledged】 如果一个函数中含有内联汇编，且内联汇编声明输入列表中有一个立即数，该立即数来自参数，则能否编译出相应的代码？

以svc指令及其调用为例：
```c++
uint64_t svc_call(int func,uint64_t arg0,uint64_t arg1)
{
	uint64_t res=0;
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__ __volatile__("mov x0, %2 \n\t"
						"mov  x1, %3  \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func),"r"(arg0),"r"(arg1):"x0","x1");
	return res;
}
#define FUNC_PUTS 0
int main()
{
	svc_call(FUNC_PUTS,"Hello SVC\n");
	return 0;
}
```
上面的函数试图通过通过函数svc_call来产生一个系统调用。然而编译会产生asm操作数限制符不匹配的问题。

其原因在于， 从svc_call的角度来看, func是一个变量而不是常量（立即数），因此 "i"(func)是不可能成立的。

然而通过设置适合的编译器编译参数，可以实现其正确调用，但是不能避免错误的调用。解决方案就是内联函数和优化选项。

为svc_call增加声明
```c++
inline __attribute__((always_inline)) uint64_t svc_call(int func,uint64_t arg0,uint64_t arg1);
... // 原来的代码
```

并且选定编译选项 `-O1`(已经测试)， 或者仅仅指定调用者的优化级别：
```c++
__attribute__((optimize("O1")))
int main()
{
	...
}
```
能够生成正确编译。

然而我们已经说了这种方式实际上是非常不准确的，其不可靠性在于需要依赖优化选项，当`-O0`时提示错误。而且，如果一个调用是
```c++
int main()
{
	int a=ramdom();
	svc_call(a,...); // 使用变量而不是立即数
}
```
则立即产生错误，这种代码无论如何不能编译通过。

我们给出的解决方案是利用模板参数，因为模板参数允许常量，改写svc_call函数如下:
```c++
template <int func>
uint64_t svc_call(uint64_t arg0,uint64_t arg1)
{
	uint64_t res=0;
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__ __volatile__("mov x0, %2 \n\t"
						"mov  x1, %3  \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func),"r"(arg0),"r"(arg1):"x0","x1");
	return res;
}
#define FUNC_PUTS 0
int main()
{
	svc_call<FUNC_PUTS>("Hello SVC\n");
	return 0;
}
```
该方案不仅不依赖于优化选项，也能够避免错误的调用。



# 2018年3月17日10:08:03
我们确定了一个原则，就是在何时才在头文件中声明一个全局变量， 那就是当系统中确实只需要一个时。

这条原则的简写就是：全局且唯一。

根据这条原则， MemoryManager, Output, PidManager都将只有一个。
# 2018年3月17日09:39:00
【acknowledged】 在使用调试器时，其他工程的调试配置可能被用于当前的工程，从而产生错误。因为eclipse在调试时尝试在一个不存在的源文件处设置断点，或者在一个非法的地址处设置断点，从而导致调试器发出错误。 解决方法就是清除所有的断点。
# 2018年3月16日09:48:25
修复了一个调试相关的问题：在EL0下不能查看0x0处的代码，需要修改页表的AP属性为0b11

定义了一个新的调试用户空间代码的方法：通过调试user_space.elf即可。（注意，不能将.debug_*分区丢弃）

【bugfix】修复了flush的typo：bufferSize -> buffer

【unkown bug】：仍然不知道为什么在有的情况下elf文件的代码和binary文件的代码不对应，但是解决方法就是clean+build(==rebuild)

定义一系列的note标签，将来可通过字符串处理将这些标签提取出来。目前的标签包括bugfix, commit,todo,unkown bug,commit point, acknowledged

【commit point】 通过简单的适配，重用了内核空间的内存管理类和输出类，并进行了简单的测试（参见当前commit下的[user_main_hello_kernel.cpp](../src/arch/user_space/user_main_hello_kernel.cpp))。用户空间的功能逐步完善。
# 2018年3月16日00:01:41
目前正在测试如何在user_space下重用Output的代码。
# 2018年3月15日23:00:55
修复了一个typo:  文件夹名称 subporjects->subprojects
+教程： 引入overview工程之后，选择subprojects的子工程，选择import as project即可
+Indexer设置： 选择不要索引排除在外的文件

发现了一个bug：bin文件和elf文件的代码位置不匹配。【尚未发现原因】

UPDATE:

将kernel.h中的类相关变量（包括使用的static型变量）还原到其原始的类文件中。

将printk.h拆分为printk.h和Output.h两个文件

增加overview工程的交叉编译属性，Enviornment增加下面几项：
```c++
TOOLCHAIN_CXX = ${TOOLCHIAN_ROOT}\${TOOLCHAIN_PREFIX}g++
TOOLCHAIN_PREFIX = aarch64-elf-
TOOLCHAIN_ROOT = D:\installed\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\bin
```
`Path & Symbols`增加`include`的引入

`Toolchain Editor`改写`cross settings`

将printk拆分，分出Output类
# 2018年3月13日15:05:14
关于用户态内存分配，使用一个可扩展的MemoryManager。起始地址位于4KB边界，大小总是按照4KB的倍数。对于这些4KB的页，
4KB页面意味着两方面的事情：1.内核分配的页面总是4KB对齐的    2.转换表映射时也将这些页面映射到4KB边界。

两个在用户空间连续的页面在内核空间并不连续，如果某次申请的内存跨越了多个连续的页面，这样的内存在回收时

为了找出哪些页面是空闲的，可以被回收给操作系统，需要记录这样的碎片。

在申请内存页面时，尝试将多个连续的内存页放到满足条件的碎片之中。

用户态的RAM地址空间必定是可以连续的。

一个类，标记虚拟化内存的页面是否可用

A A A A B B A A A A END

1.用于小内存的分配  // 32字节及以下的空间总是分成多个8字节进行分配
2.中型内存的分配    // 32字节以上的空间
3.大型内存的分配    // 超过4KB的，向上取整为多个


# 2018年3月13日13:39:20
eclipse workspace工作记录：
添加cygwin-win的路径映射
设置host编译器和调试器
设置c++的编译选项： Miscellaneous一项中，other flags中的-c是原有的

一个潜在的可能： host下的调试不能使用run to line, 可能与编译选项有关， 尝试去掉-Og试试
# 2018年3月12日22:59:08
更新了工程的组织方式，不再使用Configuration来区分各个子工程
采用Configuration的方式不能够解决依赖问题
现在采用 overview+subporjects的架构
后面的工作： 删除旧式的工程，增加eclipse workspace的注释， 对新的开发架构进行说明，完成之前的子工程的移植工作。【完成】
# 2018年3月12日15:38:17
更新了eclipse workspace
workspace的组成： .metedata文件构成了eclipse workspace的配置
workspace的配置：设置

本工程使用的workspace设置：
explorer

python interpreter的路径设置
输入设置
gdb路径


# 2018年3月11日20:04:52
产生绝对地址的情况：
```c++
size_t printk(char ch)
{
	*reinterpret_cast<volatile unsigned int *>( UART_BASE ) = ch;
	return 1;
}
```
这种代码是不可重定位的

通过extern char uart_base[]重新定义即可。

第二种情况： -pie + 全局变量（非extern）
```c++
const char digitsMap[]={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
```
上面的代码对digitsMap的所有引用都是通过.got分区进行的
而下面的代码通过pc相对引用进行。
```c++
extern const char digitsMap[]={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
```



# 2018年3月11日16:18:17
修复了之前的问题，问题的原因在于-pie和-fPIC两个选项之间的区别。
-fPIC选项时，使用extern引用局部变量和全局变量有区别， 但是通过使用__attribute__((weak))可以解决局部变量和全局变量之间的差异。

```c++
// 标号定义
__asm__ __volatile__(
		".text \n\t"
		".global label1,label2,label3 \n\t" // 使他们的值可见
		".align 12 \n\t"
		"local_label1:\n\t"
		"label1: \n\t"
		". = . + 0xc \n\t"
		"local_label2:\n\t"
		"label2: \n\t"
		".align 12 \n\t"
		". = . + 0xc \n\t"
		"local_label3:\n\t"
		"label3: \n\t"
		".4byte 0 \n\t");
```

```c++
// 在-fPIC选项下，使用weak符号, 如果不使用weak，则全局符号和局部符号不相同
// 并且这些extern符号都必须放在.got表中。 位置相关。
extern volatile char label1[] __attribute__((weak));
extern volatile char label2[] __attribute__((weak));
extern volatile char label3[]__attribute__((weak));
extern volatile char local_label1[] __attribute__((weak));
extern volatile char local_label2[] __attribute__((weak));
extern volatile char local_label3[] __attribute__((weak));
```

```c++
// 使用-pie选项，所有的事情如期发生，即extern符号仍然通过相对引用发生，位置无关。
extern volatile char label1[];
extern volatile char label2[];
extern volatile char label3[];
extern volatile char local_label1[];
extern volatile char local_label2[];
extern volatile char local_label3[];
```



# 2018年3月11日13:53:04
关于elf中的weak symbol, https://en.wikipedia.org/wiki/Weak_symbol

__attribute__((weak)) 解决全局变量和局部变量的差异
weak的介绍：The weak attribute causes the declaration to be emitted as a weak symbol rather than a global. This is primarily useful in defining library functions that can be overridden in user code, though it can also be used with non-function declarations. Weak symbols are supported for ELF targets, and also for a.out targets when using the GNU assembler and linker.

符号分为strong和weak两种， weak符号可以只含有声明而没有定义。

现在，通过将extern变量声明为weak的，则局部符号可以有正确的got偏移值。


# 2018年3月11日13:52:59
关于volatile的一个用法
https://stackoverflow.com/questions/2219829/how-to-prevent-gcc-optimizing-some-statements-in-c
使gcc不要优化掉看似没有意义的写操作。
# 2018年3月11日12:38:19
关于got表，参见：https://docs.oracle.com/cd/E19082-01/819-0690/chapter6-74186/index.html

got表的作用是引用绝对地址。

所有extern指定的变量名都是全局的绝对地址。因此实际上所有extern声明的变量都是位置相关的。
也许extern的作用也正在这里。

关于extern的作用，参见：http://en.cppreference.com/w/c/language/extern

下面的c++代码与对应的汇编代码证明了extern是绝对地址的，因此位置相关的代码不适合使用extern声明
```c++
37                	kout << "good";
000000000000602c:   adrp    x20, 0x8000 <Vector<int>::pushBack(int)+28>
0000000000006030:   ldr     x20, [x20, #4064]
0000000000006034:   adrp    x1, 0x9000
0000000000006038:   add     x1, x1, #0x910
000000000000603c:   mov     x0, x20
```
代码首先找到got表所在的4KB页基址，然后加上kout的地址在该4KB页面的偏移，最终从该地址处读取预先设置好的数值。显然，该数值是绝对地址。
解决方法：在代码移动后，对got表的所有项进行偏移增加，从而得到新的有效地址。但是这样就失去了got表与位置无关的意义。
第二种解决方案是不要使用extern声明（然而已经定义的变量就是extern的）。 那么我们可以看看到底哪些地方的变量会被加入到got表中。
对got表必须具有写权限。got表是位置无关的，但是若使用extern则其位置也固定了。

在程序的位置改变后，使用一般的方法获取到.got表所在的位置(我们知道4KB页面的基址)
# 2018年3月11日01:49:22
发现了用户程序的一个潜在问题

	编译器可能生成 adrp Xt, label指令，该指令总是在当前pc的基础上, 加上/减去lable的偏移值形成的地址中，向下与4KB对齐的一个地址值。 
	这就要求，代码也必须放在4KB对齐的地方（尽管是位置无关代码）

	adrp指令的描述：
	从一个4KB页的地址上加上一个左移12位的偏移，最后形成的地址其低12位为0.最终地址是一个4KB基地址。
	其作用就是获取label所在的4KB页面的基址。
	adrp的流程：
	integer d = UInt(Rd);
	bits(64) imm;
	imm = SignExtend(immhi:immlo:Zeros(12), 64);	
	bits(64) base = PC[];
	base<11:0> = Zeros(12);
	X[d] = base + imm;

	即 base是PC向下取的4KB页面（也就是当前PC所在的4KB页面base), imm和label的关系。 由于label总是一个4KB偏移值，因此在gdb的反汇编中只有恰好某些label正好处于这些4KB对齐地址处时，才能恰好显示。  该指令所要达到的效果其实就是计算label所在的4KB基地址，之后再通过一个偏移值来获取该label所在的地址。
# 2018年3月11日00:49:07
现在修改了eclipse工程中的一些定义：
修改了MASTERY_BINARY_BINARY为MASTERY_BINARY, MASTERY_ELF_BINARY为MASTERY_ELF
增加了MASTERY_GEN， 用于指向MASTERY_ELF和MASTERY_BINARY其中的一个

eclipse的build artifact 总是 $(MASTERY_ELF) (注意这一项，不能使用eclipse自身的变量替换，应当使用makefile变量替换)

请注意使用eclipse的注意事项：
在配置完成后，必须更新所有的生成文件，否则可能出现难以调试的bug

# 2018年3月10日12:57:21
在链接脚本中，如果将*(.note.gnu.build-id)放到/DISCARD/分区，则产生下面的警告
`d:/installed/gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf/bin/../lib/gcc/aarch64-elf/7.2.1/../../../../aarch64-elf/bin/ld.exe: warning: .note.gnu.build-id section discarded, --build-id ignored.`

# 2018年3月10日10:31:30
ASM中"=m" 和 "m"的区别
比较下面两组函数：
```c++
AS_MACRO uint64_t svc_call1(SvcFunc func)
{
	uint64_t res=0;
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__ __volatile__(
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func):"x0");
	return res;
}
```

```c++
AS_MACRO uint64_t svc_call2(SvcFunc func)
{
	uint64_t res=0;
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__ __volatile__(
						"svc %0 \n\t"
						"str x0,%1 \n\t"
						:"i"(func):"m"(res):"x0");
	return res;
}
```
在g++的优化中svc_call2的返回值直接被优化为0，而svc_call1工作正常，这是为什么？
差别就在于两者的汇编限制符不同。 "=m"是内存输出限制符，表明该内存会被修改，因此在svc_call1中编译器不能假定res的值不变。而在svc_call2中，编译器没有“看到”res在哪里被修改，因此认为其值不变，所以产生了其值为0的优化。	



# 2018年3月9日20:06:40
用户态内存管理的设想
内核的内存管理器总是按页分配内存，而用户程序可能总是申请小尺寸的内存。
用户程序可以使用一个通用的内存管理组件，要求是：当其内存不足时，就向系统申请一个页。
当多个页(>=1)空闲时， 将额外的空闲页回收给系统即可。
程序通过这个组件来申请和释放内存。

# 2018年3月9日20:02:43
记录一个错误：
如果有分区定义.section .text.vector
在链接脚本中, 定义 
` 
....
*(.text.*)
...
. = ALIGN(0x800)
*(.text.vector)
...
`
则.text.vector的内容可能没有正常放置，这可能是因为*(.text.*)已经包含了该分区，提前放置了分区内容。通过将.text.vector提前到*(.text.*)的前面可能修正该错误。【未验证】


# 2018年3月9日16:10:16
未定义的指令异常： mrs x0, sp_el1 错误（能够编译，运行时异常）
# 2018年3月9日08:58:27
测试如何进入EL0异常级别并完成一个系统调用

为了安全性，SPSel必须设置为 各个异常级别使用自己对应的SP。 应当将SPSel的值置为1
SP对齐检查：必须16字节对齐

内存管理方面，内核可以将RAM整体映射到另一个空间。 因为内存块信息中所有的域都是位置无关的，所以这种映射一定能够实现。
需要占用用户地址空间的一段RAM大小的地址空间。
用户程序必须预先告知应当映射的RAM的位置，以便进行全局变量的地址分配。
为了设置SP，首先申请

中断屏蔽位

中断返回的过程： ELR作为返回地址,SPSR_ELx作为PSTATE的还原值返回

# 2018年3月8日13:50:58
更新了内存管理模块的内容，关于Linux的内存管理机制，参见http://blog.csdn.net/yang_chen_shi_wo/article/details/47024215

我们将在某个文档中讨论内存管理所使用的技术
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
L0Table[510]-L0Table[511] 用于动态内存分配
L0Table[508]-L0Table[519] 用于栈分配

由操作系统管理这些页表项的使用。首次建立页表时，必须将所有的项标记为Invalid。 查找时，从L3Table开始查找第一个Invalid的项,如果所有的项都是valid，则向上查找L2Table。如果在LxTable中查找到第一个Invalid的项，则从LxTable的该项起开始建立多级页表直到L3Table。
在整个过程中，我们必须追踪每级页表的项下标以便形成最终的虚拟地址。

操作系统管理进程需要的结构：
L0Table[0]的虚拟地址,从0-511连续使用,LxTable的物理地址均可从前面的项中推断出来，然而我们需要的还包括页表的虚拟地址。
对于LxTable的虚拟地址，我们使用VAofLxTable来记录，每个表的结构与x有关。 查找时使用线性查找。
VAofLxTable记录下标与虚拟地址的映射关系，同时记录该表已用的项数。
查找一个页表时，总是从VAofL3Table开始查找具有空闲的一项。如果存在这么一项，就使用。
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

主要是已知存在的bug： g++ 能够对got表进行生成，但是对所有的local_symbol，其生成的引用总是指向表的第一个有效项（因此所有的local_symbol具有相同的值）， 而对于global_symbol,能够生成正确的引用偏移。
【bug】

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