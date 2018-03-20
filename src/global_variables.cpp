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
#include <SystemFeatures.h>
#include <io/uart/PL011.h>
#include <io/Input.h>
#include <io/uart/XilinxUARTPS.h>



char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};
Output kout;

Input kin;

MemoryManager mman(nullptr,0,false);
PidManager pidManager;

#if defined(TARGET_ARCH_IS_qemu_virt) || defined(TARGET_ARCH_IS_raspi3) || defined(TARGET_ARCH_IS_zcu102)
ProcessManager processManager;
SystemFeatures systemFeatures;
#endif

#if defined(TARGET_ARCH_IS_zcu102)
XilinxUARTPS xilinxUART{nullptr};
#endif

#if defined(TARGET_ARCH_IS_qemu_virt) || defined(TARGET_ARCH_IS_raspi3)
PL011 pl011{nullptr};
#endif


// 编译器提供的函数
// 如果不注释下面这一行，该文件可能无法编译
//extern "C" void __static_initialization_and_destruction_0(int,int);

//__dso_handle
//__cxa_atexit
