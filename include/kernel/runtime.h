/*
 * Runtime.h
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_KERNEL_RUNTIME_H_
#define INCLUDE_KERNEL_RUNTIME_H_

#ifdef TARGET_ARCH_IS_qemu_virt
#include <io/Output.h>
#include <interrupt/InterruptManager.h>
// 定义一个全局的字符串打印变量
extern Output kout;
extern InterruptManager intm;
#endif

//
#ifdef TARGET_ARCH_IS_raspi3

#endif



#endif /* INCLUDE_KERNEL_RUNTIME_H_ */
