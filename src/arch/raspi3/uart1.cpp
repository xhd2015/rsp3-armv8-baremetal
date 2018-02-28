/*
 * uart1.cpp
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#include <def.h>
#include <arch/aarch64/uart1.h>



bool uart1ReadReady()
{
	return ((*AUX_MU_LSR_REG) & 0b1);
}
bool uart1SendReady()
{
	return ((*AUX_MU_LSR_REG) & 0b100000);
}

void uart1Putc(char c)
{
	  while(!uart1SendReady());
	  // '\n' 可能不如预期那样换行
	  *AUX_MU_IO_REG = (c=='\n'?'\r':c);
}

void uart1Puts (const char *s)
{
  while (*s)
    uart1Putc(*s++);
}

int uart1Getc()
{
	while(!uart1ReadReady());
	return (*AUX_MU_IO_REG) & 0xff;
}

int uart1GetcNonBlocked()
{
	if(!uart1ReadReady())
		return EOF;
	return (*AUX_MU_IO_REG) & 0xff;
}

