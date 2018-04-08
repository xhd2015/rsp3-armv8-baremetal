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


#elif defined(TARGET_ARCH_IS_user_space)
#define _NOT_NEED_InterruptManager
#define _NOT_NEED_PL011
#define _NOT_NEED_ProcessManager
#define _NOT_NEED_PidManager
#define _NOT_NEED_SystemFeatures
#define _NOT_NEED_XilinxUARTPS
#define _NOT_NEED_VirtualFileSystem
#endif



#endif /* INCLUDE_RUNTIME_DEF_H_ */
