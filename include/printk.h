/*
 * printk.h
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PRINTK_H_
#define INCLUDE_PRINTK_H_

#include <def.h>

// we need provide this
size_t printk(char ch);

// we define it ourselves,we have our default implementation
size_t printk(const char *s);
// if n==0,then n is ignored
size_t printk(const char *s,size_t n);

class Output{
public:
	size_t print(const char *s,size_t len);
	size_t print(const char *s);
	Output & operator<<(char ch);
	// 为什么引入16,32的？为了避免歧义
	Output & operator<<(uint8_t u);
	Output & operator<<(uint16_t u);
	Output & operator<<(uint32_t u);
	Output & operator<<(bool i);
	Output & operator<<(short i);
	Output & operator<<(int i);
	Output & operator<<(double d);
	Output & operator<<(const char *s);
	Output & operator<<(size_t i);
	Output & operator<<(const void *p);
	Output & operator<<(const volatile void *p);
};



// template
#include <templates_implementation/printk.h>

#endif /* INCLUDE_PRINTK_H_ */
