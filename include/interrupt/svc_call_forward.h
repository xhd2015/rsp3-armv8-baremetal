/*
 * svc_call_forward.h
 *
 *  Created on: May 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_SVC_CALL_FORWARD_H_
#define INCLUDE_INTERRUPT_SVC_CALL_FORWARD_H_

#include <def.h>
// svc_functions
// `class` ， 为了避免 与全局定义的符号冲突
enum class SvcFunc{
	                           // prototype:
	puts,                      //  size_t    puts(const char *, size_t n=0);
	                           //  输出字符串s的n个字符串， 当n为0时，表明s是以NULL字符结尾的，
	                           // 因此输出直到遇到NULL字符才停止
	                           //  返回实际输出的字符个数
	gets,                      // size_t    gets(size_t maxNum,bool block);
                               // 读取尽量多的字符，如果没有字符，则根据条件阻塞等待
                               // 返回实际读取的字符数量
	allocateBlock,             //  void*     allocateBlock(size_t size,size_t alignment)         // 一般用于分配较大的空间，如4KB的页
	killProcess,               //  void      killProcess(Pid pid, int exitStatus)
							   //              kill进程, pid的取值有特殊含义
	createShell,               //  Pid       createShell(const VectorRef<String> * args
							   //                    ,uint64_t fg_or_bg)
	                           //   fg_or_bg: 0=foreground  1=background
	setProcessArgument,        //  void      setProcessArgument(Pid pid,
							   //                        size_t argc,uint64_t args[][2])
							   //            argc指定参数数量,args[i] [0]=ARG_TYPE [1]=ARG_VALUE
	                           //            ARG_TYPE 参见 Process::Argument/Process::ARG_XXX.
	setInputCatcher,           //  void      setInputCatcher(Pid pid)
	                           //              设置捕获输入的进程  FIXME 这应当是一条特权指令
	sleep,                     //  void      sleep(size_t us)
	ps,                        //  void      ps();
	                           //            显示系统进程信息
	scheduleNext,              //  void      scheduleNext()     // 调度下一个进程，表明当前进程主动或被动放弃其执行权，转入等待状态
	fork,                      //  Pid       fork()             // 复制当前进程，对于父进程，返回其子进程的pid，对于子进程，返回PID_CURRENT;失败返回PID_INVALID。 当前进程将作为新进程的父进程,新进程处于READY状态。
	signal,                    //  void      signal(Pid pid, Signal sig)       // 对目标进程发送信号
	vfsProxy,                  //  Any       vfsProxy(VFSProxyKernel *instancePtr,VirtualProxyFunction subFunc,Args... additionalArgs)   // 操作VFSProxyKernel
	warmReset,
};
enum class SmcFunc{
	warmReset,
};
enum class HvcFunc{
	warmReset,
};


class SvcConfig{
public:
//	enum FLAG{	F_RETURN_ON_NEW_LINE=0,	F_BLOCKED_BIT=1}; //DEPRECATED
};

// ==forward declarations:svc_call
//template 用于提供立即数，提供下面这几种prototype是为了更加高效地传递系统调用的参数
template <SvcFunc func>
AS_MACRO uint64_t svc_call(uint64_t arg0=0,uint64_t arg1=0,
		uint64_t arg2=0,uint64_t arg3=0,uint64_t arg4=0,
		uint64_t arg5=0,uint64_t arg6=0,uint64_t arg7=0);



#endif /* INCLUDE_INTERRUPT_SVC_CALL_FORWARD_H_ */
