# 关于
该文件夹包括工程的所有子工程，每一个子工程具有如下的基本结构：

1.对`overview`工程的引用

2.根目录下的3个makefile文件，引入`overview`工程根目录下的makefiles文件夹下的同名文件

每个子工程均可作为模板拷贝生成一个新的工程，新的工程只需要配置自己的构建环境变量、编译工具链（交叉编译还是native编译）以及手动生成配置相关的文件即可。

# 多数工程都定义的环境变量

|名称|                含义|  通常值|   配置该变量的工程  |
|-  |  -                | -     | -              |
|TARGET_ARCH|   构建的目标架构或目标场景 | 与工程名称相同| *|
|EXPORT\_CXX_MACROS| 需要从配置的环境变量中导出到C++的宏| 一个变量名列表，以空格分隔| *|
|EXPORT\_LINKER_FLAGS|需要从配置的环境变量中导出到链接脚本的符号|同EXPORT_CXX_MACROS|*|
|EXPORT_VARIABLES| 需要从eclipse配置的环境变量中导出到其他构建系统的环境变量|同EXPORT_CXX_MACROS| *|
|TOOLCHAIN_ROOT|  交叉编译工具链的根目录| * | |
|TOOLCHAIN_PREFIX|交叉编译工具链的前缀| aarch64-elf- |
|TOOLCHAIN\_CXX   |C++交叉编译器的路径| ${TOOLCHAIN_ROOT}/${TOOLCHAIN_PREFIX}g++|
|TOOLCHAIN\_CC    |C交叉编译器的路径| ${TOOLCHAIN_ROOT}/${TOOLCHAIN_PREFIX}gcc|
|TOOLCHAIN_LD    |链接器的路径
|KERNEL_ADDRESS  |内核被加载的起始地址|0,0x8000| raspi3,qemu_virt|
|

# 多数工程都定义的Build Targets
|名称|                  含义|  操作系统 |   前提| 
| - |                   - | -     |   -  |
|${USER_ALL}|  工程构建的主要目标   | * | * |
|${USER_CLEAN}| 指定清除工程所执行的动作| * |*|
|debug-info|  打印当前构建系统的调试信息，主要用于查看是各个变量的值是否如预期|*|*|
|open-cygwin|  在当前构建目录下，打开cygwin命令行|Windows|安装了cygwin|
|open-vscode|  打开Visual Code编辑器 |*|  安装了VSCode |
|show-in-explorer| 打开windows的explorer |Windows|在其他操作系统中可能以文件管理器的形式打开| 
|update-all-config-related-files| 从eclipse配置的环境变量中，导出所有需要导出的变量 | *| 使用make作为构建工具|

# 多数工程的基本配置
多数工程都配置为使用交叉编译器




