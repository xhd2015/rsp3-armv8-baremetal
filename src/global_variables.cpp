/*
 * global_variables.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <def.h>
#include <memory/MemoryManager.h>
#include <io/Output.h>
#include <memory/mem_config.h>
#include <new>
#include <schedule/PidManager.h>
#include <schedule/ProcessManager.h>



char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};
Output kout;

MemoryManager mman{RAM_START,RAM_SIZE};
PidManager pidManager;

#if defined(TARGET_ARCH_IS_qemu_virt) || defined(TARGET_ARCH_IS_raspi3)
ProcessManager processManager;
#endif


// 编译器提供的函数
// 如果不注释下面这一行，该文件可能无法编译
//extern "C" void __static_initialization_and_destruction_0(int,int);

//__dso_handle
//__cxa_atexit
