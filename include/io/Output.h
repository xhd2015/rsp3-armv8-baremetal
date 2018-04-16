/*
 * Output.h
 *
 *  Created on: Mar 15, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_OUTPUT_H_
#define INCLUDE_IO_OUTPUT_H_

#include <io/printk.h>

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
	Output & flush();
};

#ifndef _NOT_NEED_Output
// 定义一个全局的字符串打印变量
extern Output kout;

// 声明用于kout的缓冲区
constexpr size_t koutBufSize = 65; // for max 64-bits,a NULL_CHAR
extern char koutBuf[koutBufSize];
#endif

#endif /* INCLUDE_IO_OUTPUT_H_ */
