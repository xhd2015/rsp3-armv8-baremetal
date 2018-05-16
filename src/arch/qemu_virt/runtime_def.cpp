/*
 * runtime.cpp
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#include <runtime_def.h>
#include <io/Output.h>
#include <interrupt/InterruptManager.h>
#include <io/Input.h>
#include <io/char/MiniUARTCharacterReaderWriter.h>
#include <driver/uart/BCM2835MiniUART.h>
#include <interrupt/GICDefinitions.h>
#include <memory/MemoryManager.h>
#include <schedule/PidManager.h>
#include <schedule/ProcessManager.h>
#include <SystemFeatures.h>
#include <driver/uart/PL011.h>
#include <interrupt/GenericTimer.h>
#include <interrupt/InterruptHandler.h>
#include <memory/VirtualManager.h>
#include <filesystem/VirutalFileSystem.h>
#include <memory/MemoryManager.h>
#include <data/Queue.h>

ExceptionLevel exceptionLevel=ExceptionLevel::EL0;
SecurityState securityState=SecurityState::S_NS_1S;

char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};
BCM2835MiniUART  miniUARTDriver{nullptr};
MiniUARTCharacterReaderWriter miniUARTReader{nullptr};
Output kout{nullptr};
Input kin{nullptr};

MemoryManager mman(nullptr,0,false);
MemAbort m_abort;

PidManager pidManager;

ProcessManager processManager;

SystemFeatures systemFeatures;

PL011 pl011{nullptr};

GenericTimer ktimer;

InterruptManager                   intm {nullptr,nullptr};
InterruptHandler<InterruptManager> intHandler {&intm};

VirtualManager  virtman;

VirtualFileSystem vfs;

Queue<uint16_t>  inputBuffer(512);//512字节大小，通常

// TODO 解释
// 编译器提供的函数
// 如果不注释下面这一行，该文件可能无法编译
//extern "C" void __static_initialization_and_destruction_0(int,int);

//__dso_handle
//__cxa_atexit


