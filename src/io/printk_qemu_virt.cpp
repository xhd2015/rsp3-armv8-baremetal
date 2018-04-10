/*
 * printk.cpp
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */


#include <io/printk.h>
#include <io/uart/PL011.h>
size_t printk(char ch)
{
//	*reinterpret_cast<volatile unsigned int *>( UART_BASE ) = ch;
	if(!ch)
		return 0;
	pl011.writeData(ch);
	return 1;
}
void flush()
{

}

