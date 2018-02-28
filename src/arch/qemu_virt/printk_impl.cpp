/*
 * printk.cpp
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */


#include <printk.h>

size_t printk(char ch)
{
	*reinterpret_cast<volatile unsigned int *>( UART_BASE ) = ch;
	return 1;
}
