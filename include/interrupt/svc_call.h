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
	allocateBlock,             //  void*     allocateBlock(size_t size,size_t alignment)         // 一般用于分配较大的空间，如4KB的页
	killProcess,               //  void      killProcess(Pid pid, int exitStatus)            // kill进程, pid的取值有特殊含义
	scheduleNext,              //  void      scheduleNext()     // 调度下一个进程，表明当前进程主动或被动放弃其执行权，转入等待状态
	fork,                      //  Pid       fork()             // 复制当前进程，对于父进程，返回其子进程的pid，对于子进程，返回PID_CURRENT;失败返回PID_INVALID。 当前进程将作为新进程的父进程,新进程处于READY状态。
	signal,                    //  void      signal(PidType pid, Signal sig)       // 对目标进程发送信号

};

// ==forward declarations:svc_call
//template 用于提供立即数，提供下面这几种prototype是为了更加高效地传递系统调用的参数
template <SvcFunc func>
AS_MACRO uint64_t svc_call();
template <SvcFunc func>
AS_MACRO uint64_t svc_call(uint64_t arg0);
template <SvcFunc func>
AS_MACRO uint64_t svc_call(uint64_t arg0,uint64_t arg1);
template <SvcFunc func>
AS_MACRO uint64_t svc_call(uint64_t arg0,uint64_t arg1,uint64_t arg2);
template <SvcFunc func>
AS_MACRO uint64_t svc_call(uint64_t arg0,uint64_t arg1,uint64_t arg2,uint64_t arg3);


// ===definitions
template <SvcFunc func>
uint64_t svc_call()
{
	uint64_t res=0;
	__asm__ __volatile__(
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func):"x0");
	return res;
}
template <SvcFunc func>
uint64_t svc_call(uint64_t arg0)
{
	uint64_t res=0;
	__asm__ __volatile__("mov x0, %2 \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func),"r"(arg0):"x0");
	return res;
}
template <SvcFunc func>
uint64_t svc_call(uint64_t arg0,uint64_t arg1)
{
	uint64_t res=0;
	__asm__ __volatile__("mov x0, %2 \n\t"
						"mov  x1, %3  \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func),"r"(arg0),"r"(arg1):"x0","x1");
	return res;
}
template <SvcFunc func>
uint64_t svc_call(uint64_t arg0,uint64_t arg1,uint64_t arg2)
{
	uint64_t res=0;
	__asm__ __volatile__("mov x0, %2 \n\t"
						"mov  x1, %3  \n\t"
						"mov  x2, %4 \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func),"r"(arg0),"r"(arg1),"r"(arg2):"x0","x1","x2");
	return res;
}
template <SvcFunc func>
uint64_t svc_call(uint64_t arg0,uint64_t arg1,uint64_t arg2,uint64_t arg3)
{
	uint64_t res=0;
	__asm__ __volatile__("mov x0, %2 \n\t"
						"mov  x1, %3  \n\t"
						"mov  x2, %4 \n\t"
						"mov  x3, %5  \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func),"r"(arg0),"r"(arg1),"r"(arg2),"r"(arg3):"x0","x1","x2","x3");
	return res;
}



#endif /* INCLUDE_ARCH_COMMON_AARCH64_EXCEPTION_SVC_CALL_H_ */
