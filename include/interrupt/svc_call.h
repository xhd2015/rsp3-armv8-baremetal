/*
 * svc_call.h
 *
 *  Created on: Mar 10, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_EXCEPTION_SVC_CALL_H_
#define INCLUDE_EXCEPTION_SVC_CALL_H_
#include <asm_instructions.h>
#include <interrupt/exception_def.h>



// `class` ， 为了避免 与全局定义的符号冲突
enum class SvcFunc{
	                           // prototype:
	puts,                      //  size_t    puts(const char *, size_t n=0)                 // 打印字符串，非缓冲模式
	gets,                      //  size_t    gets(uint16_t *buffer,size_t maxNum,uint64_t flags) // flags: [0]=return on new line, [1]=blocked or not
	allocateBlock,             //  void*     allocateBlock(size_t size,size_t alignment)         // 一般用于分配较大的空间，如4KB的页
	killProcess,               //  void      killProcess(Pid pid, int exitStatus)            // kill进程, pid的取值有特殊含义
	scheduleNext,              //  void      scheduleNext()     // 调度下一个进程，表明当前进程主动或被动放弃其执行权，转入等待状态
	fork,                      //  Pid       fork()             // 复制当前进程，对于父进程，返回其子进程的pid，对于子进程，返回PID_CURRENT;失败返回PID_INVALID。 当前进程将作为新进程的父进程,新进程处于READY状态。
	signal,                    //  void      signal(PidType pid, Signal sig)       // 对目标进程发送信号
	vfsProxy,                  //  Any       vfsProxy(VFSProxyKernel *instancePtr,VirtualProxyFunction subFunc,Args... additionalArgs)   // 操作VFSProxyKernel
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

// ===definitions
template <SvcFunc func>
uint64_t svc_call(uint64_t arg0,uint64_t arg1,uint64_t arg2,
			uint64_t arg3,uint64_t arg4,uint64_t arg5,uint64_t arg6,uint64_t arg7)
{
	uint64_t res=0;
	__asm__ __volatile__("mov x0, %2 \n\t"
						"mov  x1, %3  \n\t"
						"mov  x2, %4 \n\t"
						"mov  x3, %5  \n\t"
						"mov  x4, %6  \n\t"
			 	 	 	"mov  x5, %7  \n\t"
						"mov  x6, %8  \n\t"
						"mov  x7, %9  \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res)
						:"i"(func), // 立即数
						 "r"(arg0),"r"(arg1),"r"(arg2),"r"(arg3),
						 	 	 "r"(arg4),"r"(arg5),"r"(arg6),"r"(arg7)
						 :"x0","x1","x2","x3","x4","x5","x6","x7");
	return res;
}


#endif /* INCLUDE_ARCH_COMMON_AARCH64_EXCEPTION_SVC_CALL_H_ */
