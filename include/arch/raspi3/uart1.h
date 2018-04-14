/*
 * uart1.h
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_AARCH64_UART1_H_
#define INCLUDE_ARCH_AARCH64_UART1_H_

#include <arch/raspi3/gpio.h>

#define AUX_IRQ reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x0)
#define AUX_ENABLES reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x4)
#define AUX_MU_IO_REG reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x40)
#define AUX_MU_BAUD_REG reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x68)
#define AUX_MU_CNTL_REG reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x60)
#define AUX_MU_IIR_REG reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x44)
#define AUX_MU_LCR_REG reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x4c)
#define AUX_MU_LSR_REG reinterpret_cast<volatile unsigned int*>(UART1_BASE+0x54)

bool uart1ReadReady();
bool uart1SendReady();
void uart1Putc(char c);
void uart1Puts (const char *s);
int uart1Getc();
int uart1GetcNonBlocked();



#endif /* INCLUDE_ARCH_AARCH64_UART1_H_ */
