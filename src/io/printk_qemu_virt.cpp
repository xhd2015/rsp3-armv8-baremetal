/*
 * printk.cpp
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */


#include <io/printk.h>
extern char uart_base[];
size_t printk(char ch)
{
//	*reinterpret_cast<volatile unsigned int *>( UART_BASE ) = ch;
	uart_base[0]=ch;
	return 1;
}

void flush()
{

}

