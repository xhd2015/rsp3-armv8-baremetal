/*
 * runtime_def.h
 *
 *  Created on: Apr 5, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_RUNTIME_DEF_H_
#define INCLUDE_RUNTIME_DEF_H_

//#define REQUIRES(A,name)


#ifdef TARGET_ARCH_IS_qemu_virt
#include <arch/qemu_virt/runtime_def.h>

#elif defined(TARGET_ARCH_IS_raspi3)
#include <arch/raspi3/runtime_def.h>
#elif defined(TARGET_ARCH_IS_user_space)
#include <arch/user_space/runtime.h>
#endif



#endif /* INCLUDE_RUNTIME_H_ */
