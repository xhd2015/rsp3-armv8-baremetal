


# 准则
在内核中，避免使用全局变量
实际上可以专门使用一个初始化所有需要定义的全局变量
那些变量使用方便不过是因为它们在编译期已经分配好了空间。如果一定要使用，在定义处定义一次，同时在初始化函数中重新定义一次。
# Makefile
如果更改了工程的配置，必须重新开启新的命令行，因为所有的eclipse环境都会被导出。

# 模板工程
# eclipse issues
Linked Source与Configuration无关。# rsp3-armv8-baremetal
