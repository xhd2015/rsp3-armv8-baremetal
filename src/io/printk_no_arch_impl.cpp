/*
 * printk.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */
// 与架构无关的printk实现
#include <io/printk.h>


size_t printk(const char *s)
{
	size_t n=0;
	while(*s)
		n+=printk(*s++);
	return n;
}
size_t printk(const char *s,size_t n)
{
	if(n==0) // 打印，直到遇到'\0'
		return printk(s);
	size_t m=0;
	while(n--)
		m+=printk(*s++);
	return m;
}



