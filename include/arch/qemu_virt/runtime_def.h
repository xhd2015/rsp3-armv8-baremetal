/*
 * runtime.h
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_QEMU_VIRT_RUNTIME_H_
#define INCLUDE_ARCH_QEMU_VIRT_RUNTIME_H_

#include <interrupt/InterruptHandler.h>
#include <interrupt/InterruptManager.h>
#include <interrupt/BCM2836LocalIntController.h>
#include <driver/uart/PL011.h>
#include <driver/timer/BCM2835SystemTimer.h>
#include <memory/VirtualManager.h>
#include <data/Queue.h>

//interrupt
extern InterruptHandler<InterruptManager>  intHandler;

// io
extern Queue<uint16_t>  inputBuffer;


#endif /* INCLUDE_ARCH_QEMU_VIRT_RUNTIME_DEF_H_ */
