/*
 * generic-util.h
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_UTIL_H_
#define INCLUDE_GENERIC_UTIL_H_

#include <def.h>

// 实现与arch相关的
void delayCPU(size_t i);
void delayCPU(size_t i,size_t j);
void haltCPU();

// 实现与arch无关的

// math 部分
// 声明一个数字映射
extern const char digitsMap[];
// 如果size == 0 则什么也不做
// 如果size > 0 则保证 dst[size-1]='\0',即使size不足以保存
// 返回产生的字符串实际占用的长度，不包括'\0'
size_t itob(size_t i,char *dst,size_t size);
size_t itod(size_t i,char *dst,size_t size);
size_t itox(size_t i,char *dst,size_t size);

size_t itos(size_t i,unsigned int base,char *dst,size_t size);


// string部分

// 颠倒字符串的前size个字符
void reverse(char *str,size_t size);
/*
 * 字符串偏移，如果偏移超出了字符串的所有字节，即在所有字节之后，包括NULL_CHAR，则返回空字符串，该字符串总是唯一的。
 */
const char *strOffset(const char *p,size_t offset);



// example: upperMaskBits(4) = 0xf000 0000 0000 0000, meaning that, the upper 4 bits are all 1,others are all 0
AS_MACRO uint64_t upperMaskBits(uint64_t i)
{
	return HEX64(ffff,ffff,ffff,ffff) >> (64-i) << (64-i);
}
// example:lowerMaskBits(4) = 0x0000 0000 0000 000f
AS_MACRO uint64_t lowerMaskBits(uint64_t i)
{
	return HEX64(ffff,ffff,ffff,ffff) << (64-i) >> (64-i);
}





#endif /* INCLUDE_GENERIC_UTIL_H_ */
