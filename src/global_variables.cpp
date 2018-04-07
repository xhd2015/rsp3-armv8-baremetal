/*
 * global_variables.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <runtime_def.h>

#ifndef _NOT_NEED_InterruptManager
#include <interrupt/InterruptManager.h>
InterruptManager intm(nullptr,nullptr);
#endif

#ifndef _NOT_NEED_Output
#include <io/Output.h>
char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};
Output kout;
#endif

#ifndef _NOT_NEED_Input
#include <io/Input.h>
Input kin;
#endif

#ifndef _NOT_NEED_MemoryManager
#include <memory/MemoryManager.h>
MemoryManager mman(nullptr,0,false);
#endif

#ifndef _NOT_NEED_PidManager
#include <schedule/PidManager.h>
PidManager pidManager;
#endif

#ifndef _NOT_NEED_ProcessManager
#include <schedule/ProcessManager.h>
ProcessManager processManager;
#endif

#ifndef _NOT_NEED_SystemFeatures
#include <SystemFeatures.h>
SystemFeatures systemFeatures;
#endif

#ifndef _NOT_NEED_XilinxUARTPS
#include <io/uart/XilinxUARTPS.h>
XilinxUARTPS xilinxUART{nullptr};
#endif

#ifndef _NOT_NEED_PL011
#include <io/uart/PL011.h>
PL011 pl011{nullptr};
#endif

#ifndef _NOT_NEED_GenericTimer
#include <interrupt/GenericTimer.h>
GenericTimer ktimer;
#endif

#ifndef _NOT_NEED_InterruptHandler
#include <interrupt/InterruptHandler.h>
InterruptHandler intHandler;
#endif

#ifndef _NOT_NEED_VirtualManager
#include <memory/VirtualManager.h>
VirtualManager  virtman;
#endif

// 编译器提供的函数
// 如果不注释下面这一行，该文件可能无法编译
//extern "C" void __static_initialization_and_destruction_0(int,int);

//__dso_handle
//__cxa_atexit
