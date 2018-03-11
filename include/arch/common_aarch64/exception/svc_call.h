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

// AS_MACRO is needed, as `func` must be utilized to immediate operand
AS_MACRO uint64_t svc_call(SvcFunc func);
AS_MACRO uint64_t svc_call(SvcFunc func,uint64_t arg0);
AS_MACRO uint64_t svc_call(SvcFunc func,uint64_t arg0,uint64_t arg1);
AS_MACRO uint64_t svc_call(SvcFunc func,uint64_t arg0,uint64_t arg1,uint64_t arg2);
AS_MACRO uint64_t svc_call(SvcFunc func,uint64_t arg0,uint64_t arg1,uint64_t arg2,uint64_t arg3);


// ===definitions
uint64_t svc_call(SvcFunc func)
{
	uint64_t res=0;
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__ __volatile__(
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func):"x0");
	return res;
}
uint64_t svc_call(SvcFunc func,uint64_t arg0)
{
	uint64_t res=0;
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__ __volatile__("mov x0, %2 \n\t"
						"svc %1 \n\t"
						"str x0,%0 \n\t"
						:"=m"(res):"i"(func),"r"(arg0):"x0");
	return res;
}
uint64_t svc_call(SvcFunc func,uint64_t arg0,uint64_t arg1)
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
uint64_t svc_call(SvcFunc func,uint64_t arg0,uint64_t arg1,uint64_t arg2)
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
uint64_t svc_call(SvcFunc func,uint64_t arg0,uint64_t arg1,uint64_t arg2,uint64_t arg3)
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
