/*
 * svc_call.h
 *
 *  Created on: May 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_SVC_CALL_H_
#define INCLUDE_INTERRUPT_SVC_CALL_H_

#include <interrupt/svc_call_forward.h>

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


#endif /* INCLUDE_INTERRUPT_SVC_CALL_H_ */
