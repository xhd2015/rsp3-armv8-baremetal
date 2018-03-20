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

// alignPrevious : 0是所有对齐的起点,0也是对齐的终点，会发生循环，即达到最大值附近后增加到0
uint64_t alignNext(uint64_t d,uint64_t alignment);
uint64_t alignPrevious(uint64_t d,uint64_t alignment);


// string部分

// 颠倒字符串的前size个字符
void reverse(char *str,size_t size);
/*
 * 字符串偏移，如果偏移超出了字符串的所有字节，即在所有字节之后，包括NULL_CHAR，则返回空字符串，该字符串总是唯一的。
 */
const char *strOffset(const char *p,size_t offset);





//==MACROS
template <uint8_t bit>
AS_MACRO uint64_t bitMask()
{
	return (1u << bit);
}
AS_MACRO uint64_t bitMask(uint8_t bit)
{
	return (1u << bit);
}
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
AS_MACRO uint64_t middleMaskBits(uint64_t lowerBound,uint64_t upperBound)
{
	// clear lowerBound and then clear upperBound
	return HEX64(ffff,ffff,ffff,ffff) >> lowerBound << (64 - upperBound - 1 + lowerBound) >> (64-upperBound -1);
}

// no check, set bits[lowerBound,upperBound]=v, others keep unchanged
template <class Type,class ValueType>
AS_MACRO void setBits(Type & i, uint8_t lowerBound,uint8_t upperBound,ValueType v)
{
	// clear middle, and validate v, shift v to proper position, concate i,v together
	i = (i & (~middleMaskBits(lowerBound, upperBound))) |((v & lowerMaskBits(upperBound - lowerBound + 1))<<lowerBound );
}
AS_MACRO uint64_t getBits(uint64_t i, uint8_t lowerBound,uint8_t upperBound)
{
	return (i>>lowerBound)&lowerMaskBits(upperBound - lowerBound + 1);
}
template <class Type,class ValueType>
AS_MACRO void     setBit(Type & i,uint8_t index,ValueType v)
{
	setBits(i,index,index,v);
}
AS_MACRO uint64_t getBit(uint64_t i,uint8_t index)
{
	return getBits(i,index,index);
}






#endif /* INCLUDE_GENERIC_UTIL_H_ */
