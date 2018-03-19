/*
 * printk_user_space.cpp
 *
 *  Created on: Mar 15, 2018
 *      Author: 13774
 */


#include <io/printk.h>
#include <arch/common_aarch64/exception/svc_call.h>

// 必须确保下面的变量生成的引用是未知无关的
// 使用buffer进行缓冲
static constexpr size_t bufferSize=100;
static char buffer[bufferSize];
static size_t curSize=0;

size_t printk(char ch)
{
	if(curSize == bufferSize)
		flush();
	buffer[curSize++]=ch;
	return 1;
}

void flush()
{
	if(curSize > 0)
	{
		svc_call<SvcFunc::puts>( reinterpret_cast<uint64_t>(buffer),curSize);
		curSize = 0;
	}
}
