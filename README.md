# rsp3-armv8-baremetal
基于`树莓派3`和`ARMv8-AArch64`架构，实现一个微型操作系统内核。
# 测试该工程
此工程基于`eclipse` (`version` >= `4.6.3`), 在编译时，你需要使用合适的`eclipse`版本，在`Windows`,`Linux`或者`MacOS`上，选择 `File` -> `Open Projects from File System` -> 点击`Directory`,选择该工程所在的目录，打开 -> `Finish` 即可

整个工程共有3个配置，名称分别为：`Debug-host`,`Debug-qemu_virt`, `Debug-raspi3`

这3个配置分别对应的开发环境是：基于宿主主机操作系统的开发（主要用于测试内存管理和其他架构无关的功能），基于QEMU的模拟的开发（用于测试虚拟内存、中断等），基于树莓派3的开发（用于综合验证）。

每个配置有一个专门的生成文件夹，该文件夹名称与配置名称相同，编译时产生的所有文件均生成于此。

工程配置了一些特殊的构建目标。参见工程的`Build Targets`。


# 准则
在内核中，避免使用全局变量
实际上可以专门使用一个初始化所有需要定义的全局变量
那些变量使用方便不过是因为它们在编译期已经分配好了空间。如果一定要使用，在定义处定义一次，同时在初始化函数中重新定义一次。
# Makefile
如果更改了工程的配置，必须重新开启新的命令行，因为所有的eclipse环境都会被导出。


# 其他参考
工程进度总览参考 [Progress_Current.md](./Progress_Current.md)

工程记录参考 [RECORDING_NOTE.md](./RECORDING_NOTE.md)

# Copyright

In Progress