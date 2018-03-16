/*
 * printk.h
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_PRINTK_H_
#define INCLUDE_IO_PRINTK_H_

#include <def.h>

// we need provide this
size_t printk(char ch);

// we define it ourselves,we have our default implementation
size_t printk(const char *s);
// if n==0,then n is ignored
size_t printk(const char *s,size_t n);

// 如果使用了缓冲区，将所有的输出立即刷新
void flush();



// template
#include <templates_implementation/printk.h>

#endif /* INCLUDE_IO_PRINTK_H_ */
