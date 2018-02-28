/*
 * gpio.h
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_AARCH64_GPIO_H_
#define INCLUDE_ARCH_AARCH64_GPIO_H_


#define MMIO_BASE       0x3F000000

#define GPFSEL0 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200000)
#define GPFSEL1 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200004)
#define GPFSEL2 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200008)
#define GPFSEL3 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x0020000C)
#define GPFSEL4 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200010)
#define GPFSEL5 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200014)
#define GPSET0 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x0020001C)
#define GPSET1 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200020)
#define GPCLR0 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200028)
#define GPLEV0 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200034)
#define GPLEV1 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200038)
#define GPEDS0 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200040)
#define GPEDS1 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200044)
#define GPHEN0 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200064)
#define GPHEN1 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200068)
#define GPPUD reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200094)
#define GPPUDCLK0 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x00200098)
#define GPPUDCLK1 reinterpret_cast<volatile unsigned int*>(MMIO_BASE+0x0020009C)

#define SYSTEM_TIMER_BASE 		MMIO_BASE+0x00003000
#define INT_BASE 				MMIO_BASE+0x0000B000
#define GPU_MAIL_BOX_BASE 		MMIO_BASE+0x0000B880
#define PWR_MGMT_BASE 			MMIO_BASE+0x00100000
#define GPIO_BASE 				MMIO_BASE+0x00200000
#define UART0_BASE 				MMIO_BASE+0x00201000
#define UART1_BASE 				MMIO_BASE+0x00215000
#define USB_CTRL_BASE 			MMIO_BASE+0x00980000


#endif /* INCLUDE_ARCH_AARCH64_GPIO_H_ */
