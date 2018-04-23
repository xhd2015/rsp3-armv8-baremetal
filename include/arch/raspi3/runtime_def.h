/*
 * runtime_def.h
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_RASPI3_RUNTIME_DEF_H_
#define INCLUDE_ARCH_RASPI3_RUNTIME_DEF_H_

#include <driver/uart/BCM2835MiniUART.h>
#include <io/Output.h>
#include <interrupt/GICDefinitions.h>
#include <memory/MemoryManager.h>
#include <interrupt/BCM2835InterruptController.h>
#include <interrupt/BCM2836LocalIntController.h>
#include <driver/gpu/BCM2836MailBox.h>
#include <interrupt/GenericTimer.h>
#include <driver/timer/BCM2835SystemTimer.h>
#include <driver/gpio/GPIO.h>
#include <driver/uart/PL011.h>
// io
#include <io/Input.h>
#include <data/Queue.h> // inputBuffer
#include <memory/VirtualManager.h>
#include <interrupt/InterruptHandler.h>
#include <driver/sd/SDDriverV3.h>
// 进程
#include <schedule/PidManager.h>
#include <schedule/ProcessManager.h>
// 文件系统
#include <filesystem/VirutalFileSystem.h>


extern Queue<uint16_t>  inputBuffer;//512字节大小，通常
extern InterruptHandler<BCM2836LocalIntController>  intHandler;

extern SDDriverV3 sddriver;

#endif /* INCLUDE_ARCH_RASPI3_RUNTIME_H_ */
