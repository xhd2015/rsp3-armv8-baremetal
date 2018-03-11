/*
 * printk.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <printk.h>

size_t printk(const char *s)
{
	size_t n=0;
	while(*s)
		n+=printk(*s++);
	return n;
}
size_t printk(const char *s,size_t n)
{
	if(n==0)
		return printk(s);
	size_t m=0;
	if(n)
		while(n--)
			m+=printk(*s++);
	return m;
}



