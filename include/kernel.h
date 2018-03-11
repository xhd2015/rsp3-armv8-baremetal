/*
 * kernel.h
 *
 *  Created on: Mar 8, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_KERNEL_H_
#define INCLUDE_KERNEL_H_

#include <printk.h>
#include <memory/MemoryManager.h>

// 声明一些全局变量
extern Output kout;

// define a global memory manager
extern MemoryManager mman;



#endif /* INCLUDE_KERNEL_H_ */
