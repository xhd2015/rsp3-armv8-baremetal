/*
 * printk_zcu102.cpp
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */




#include <io/uart/XilinxUARTPS.h>
#include <io/printk.h>

size_t printk(char ch)
{
//	*reinterpret_cast<volatile unsigned int *>( UART_BASE ) = ch;
	xilinxUART.write(ch);
	return 1;
}

void flush()
{
}
