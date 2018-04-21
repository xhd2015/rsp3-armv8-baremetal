/*
 * runtime_def.h
 *
 *  Created on: Apr 5, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_RUNTIME_DEF_H_
#define INCLUDE_RUNTIME_DEF_H_
// DOCME including this file solves everything, only if you are using it in
//       source file, please do not use it in header file.
//#define REQUIRES(A,name)
// DOCME 所有的提供资源的头文件形成了互斥关系
/**
 * 注意：如果一个文件打算提供一个全局变量，那么它最好不要引入runtime_def.h.
 * 但是这条规则并不是硬性的，只要能通过编译就是最低限度上允许的（虽然不推荐那样做）
 *
 * 我们推荐：只有源文件（不包括模板文件）可以安全地引用runtime_def.h
 */

#ifdef TARGET_ARCH_IS_qemu_virt
#include <arch/qemu_virt/runtime_def.h>

#elif defined(TARGET_ARCH_IS_raspi3)
#include <arch/raspi3/runtime_def.h>
#elif defined(TARGET_ARCH_IS_user_space)
#include <arch/user_space/runtime_def.h>
#endif



#endif /* INCLUDE_RUNTIME_H_ */
