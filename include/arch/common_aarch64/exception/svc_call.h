/*
 * svc_call.h
 *
 *  Created on: Mar 10, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_EXCEPTION_SVC_CALL_H_
#define INCLUDE_EXCEPTION_SVC_CALL_H_
#include <arch/common_aarch64/exception/exceptions.h>
#include <asm_instructions.h>

// `class` ， 为了避免 与全局定义的符号冲突
enum class SvcFunc{
	                           // prototype:
	puts,                      //  size_t    puts(const char *, size_t n=0)
	allocateBlock,             //  void*     allocateBlock(size_t size,size_t alignment)         // 一般用于分配较大的空间，如4KB的页
	killProcess,               //  void      killProcess(PidType pid, int exitStatus)            // kill进程, pid的取值有特殊含义
};

// ==forward declarations:svc_call
//template 用于提供立即数
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
	FORCE_CODE_COHERENT_WITH_VIEW();
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
	FORCE_CODE_COHERENT_WITH_VIEW();
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
	FORCE_CODE_COHERENT_WITH_VIEW();
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
	FORCE_CODE_COHERENT_WITH_VIEW();
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
	FORCE_CODE_COHERENT_WITH_VIEW();
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
