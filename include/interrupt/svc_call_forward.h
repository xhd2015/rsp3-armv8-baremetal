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
	puts,                      //  size_t    puts(const char *, size_t n=0)                 // 打印字符串，非缓冲模式
	gets,                      //  size_t    gets(uint16_t *buffer,size_t maxNum,uint64_t flags) // flags: [0]=return on new line, [1]=blocked or not
	allocateBlock,             //  void*     allocateBlock(size_t size,size_t alignment)         // 一般用于分配较大的空间，如4KB的页
	killProcess,               //  void      killProcess(Pid pid, int exitStatus)
							   //              kill进程, pid的取值有特殊含义
	createShell,               //  Pid       createShell(const VectorRef<String> * args)

	scheduleNext,              //  void      scheduleNext()     // 调度下一个进程，表明当前进程主动或被动放弃其执行权，转入等待状态
	fork,                      //  Pid       fork()             // 复制当前进程，对于父进程，返回其子进程的pid，对于子进程，返回PID_CURRENT;失败返回PID_INVALID。 当前进程将作为新进程的父进程,新进程处于READY状态。
	signal,                    //  void      signal(PidType pid, Signal sig)       // 对目标进程发送信号
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
	enum FLAG{	F_RETURN_ON_NEW_LINE=0,	F_BLOCKED_BIT=1};
};

// ==forward declarations:svc_call
//template 用于提供立即数，提供下面这几种prototype是为了更加高效地传递系统调用的参数
template <SvcFunc func>
AS_MACRO uint64_t svc_call(uint64_t arg0=0,uint64_t arg1=0,
		uint64_t arg2=0,uint64_t arg3=0,uint64_t arg4=0,
		uint64_t arg5=0,uint64_t arg6=0,uint64_t arg7=0);



#endif /* INCLUDE_INTERRUPT_SVC_CALL_FORWARD_H_ */
