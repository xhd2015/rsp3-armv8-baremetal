/*
 * generic-util.h
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_UTIL_H_
#define INCLUDE_GENERIC_UTIL_H_

#include <def.h>
#include <type_traits>

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
size_t stoi(const char *src,size_t size,bool *failed=nullptr);
size_t stoi(const char *src,bool *failed=nullptr);

// alignPrevious : 0是所有对齐的起点,0也是对齐的终点，会发生循环，即达到最大值附近后增加到0
uint64_t alignAhead(uint64_t d,uint64_t alignment);
uint64_t alignBackward(uint64_t d,uint64_t alignment);


// string部分

// 颠倒字符串的前size个字符
void reverse(char *str,size_t size);
/*
 * 字符串偏移，如果偏移超出了字符串的所有字节，即在所有字节之后，包括NULL_CHAR，则返回空字符串，该字符串总是唯一的。
 */
const char *strOffset(const char *p,size_t offset);

namespace{

	template <size_t bit,size_t ... bits>
	struct BitMaskStruct{
		static constexpr size_t value= BitMaskStruct<bit>::value|BitMaskStruct<bits...>::value;
	};
	template <size_t bit>
	struct BitMaskStruct<bit>{
		static constexpr size_t value=(1u<<bit);
	};

}



//==MACROS
template <uint8_t...bit>
AS_MACRO size_t bitMask()
{
	return BitMaskStruct<bit...>::value;
}

// 保留为1的位
template <size_t ... bit>
AS_MACRO constexpr size_t bitOnes()
{
	return BitMaskStruct<bit...>::value;
}
// 保留为0的位
template <size_t ...bit>
AS_MACRO constexpr size_t bitZeros()
{
	return ~(BitMaskStruct<bit...>::value);
}
// 设置目标位为1，其他位不变
template <size_t ...bit,class T>
AS_MACRO T bitsSet(T t)
{
	return t | bitOnes<bit...>();
}
// 设置目标位为0,其他位不变
template <size_t ...bit,class T>
AS_MACRO T bitsClear(T t)
{
	return (t &  bitZeros<bit...>());
}
// 保留目标位，其他位为0
// 可用如下的语句检测目标位是否设置： if(bitsKept<16>(t))...
template <size_t ...bit,class T>
AS_MACRO T bitsKept(T t)
{
	return (t & bitOnes<bit...>());
}
template <size_t ...bit,class T>
AS_MACRO bool bitsAnySet(T t)
{
	return bitsKept<bit...>(t);
}
template <size_t ...bit,class T>
AS_MACRO bool bitsNonSet(T t)
{
	return !bitsAnySet<bit...>(t);
}

// bitsMix<0,3, void, 3,4,bool leftAsOne>
// 处理0的情况
template <size_t ...bitsAsOne,class VoidT,size_t ...bitsAsZero>
AS_MACRO size_t bitsMix0()
{
	return bitsClear<bitsAsZero...>(bitsSet<bitsAsOne...>(static_cast<size_t>(0)));
}
// 处理1的情况
template <size_t ...bitsAsOne,class VoidT,size_t ...bitsAsZero>
AS_MACRO size_t bitsMix1()
{
	return bitsClear<bitsAsZero...>(bitsSet<bitsAsOne...>(static_cast<size_t>(SIZE_MAX)));
}

AS_MACRO uint64_t bitMask(uint8_t bit)
{
	return (1u << bit);
}
template <uint64_t i>
AS_MACRO uint64_t upperMaskBits()
{
	return HEX64(ffff,ffff,ffff,ffff) >> (64-i) << (64-i);
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
template <uint8_t lowerBits>
constexpr uint64_t lowerMaskBits()
{
	static_assert(lowerBits<=63,"");
	return HEX64(ffff,ffff,ffff,ffff) << (64-lowerBits) >>(64-lowerBits);
}
AS_MACRO uint64_t middleMaskBits(uint64_t lowerBound,uint64_t upperBound)
{
	// clear lowerBound and then clear upperBound
	return HEX64(ffff,ffff,ffff,ffff) >> lowerBound << (64 - upperBound - 1 + lowerBound) >> (64-upperBound -1);
}
template <uint8_t lowerBound,uint8_t upperBound>
constexpr uint64_t middleMaskBits()
{
	static_assert(lowerBound<=upperBound && upperBound<=63,"");
	return HEX64(ffff,ffff,ffff,ffff) >> lowerBound << (64 - upperBound - 1 + lowerBound) >> (64-upperBound -1);
}

// no check, set bits[lowerBound,upperBound]=v, others keep unchanged
template <class Type>
AS_MACRO void setBits(Type & i, uint8_t lowerBound,uint8_t upperBound,uint64_t v)
{
	// clear middle, and validate v, shift v to proper position, concate i,v together
	i = (i & (~middleMaskBits(lowerBound, upperBound))) |((v & lowerMaskBits(upperBound - lowerBound + 1))<<lowerBound );
}
template <class Tp, uint8_t lowerBound,uint8_t upperBound,uint64_t v>
constexpr Tp makeBits(Tp val)
{
	// clear middle, and validate v, shift v to proper position, concate i,v together
	return (val & (~middleMaskBits<lowerBound, upperBound>())) |((v & lowerMaskBits<upperBound - lowerBound + 1>())<<lowerBound );
}
AS_MACRO uint64_t getBits(uint64_t i, uint8_t lowerBound,uint8_t upperBound)
{
	return (i>>lowerBound)&lowerMaskBits(upperBound - lowerBound + 1);
}
//template <class _BaseType>
//uint64_t getBits(const _BaseType *p,size_t lowerBound,size_t upperBound,int baseOff=0)
//{
//	const uint8_t *p8=reinterpret_cast<const uint8_t*>(p);
//	lowerBound += baseOff;
//	upperBound += baseOff;
//
//	return
//}
//template <class _BaseType>
//void    setBits(_BaseType *p,size_t lowerBound,size_t upperBound,size_t value,int baseOff=0)
//{
//
//}

template <class Type,class ValueType>
AS_MACRO void     setBit(Type & i,uint8_t index,ValueType v)
{
	setBits(i,index,index,v);
}
AS_MACRO uint64_t getBit(uint64_t i,uint8_t index)
{
	return getBits(i,index,index);
}

template <class T=uint64_t>
AS_MACRO bool   isMax(T t)
{
	return t==UINT64_MAX;
}
AS_MACRO bool   isMax(uint32_t t)
{
	return t==UINT32_MAX;
}
AS_MACRO bool   isMax(uint16_t t)
{
	return t==UINT16_MAX;
}
AS_MACRO bool   isMax(uint8_t t)
{
	return t==UINT8_MAX;
}


// template, must be implemented in-place
template <class T>
uint8_t         findFirstSet(T i)
{
	static_assert(std::is_unsigned<T>::value,"");
	uint8_t index=0;
	while(index<(sizeof(T)*8) && !(i& 0b1) )
	{
		i >>= 1;
		++index;
	}
	if(index==sizeof(T)*8)
		return 0xffu;
	else
		return index;
}


// math
// gcd:最大公约数
size_t gcd(size_t a,size_t b);
// lcm:最小公倍数
size_t lcm(size_t a,size_t b);


// memory

template <class T>
void rebase(T *start,T *end,T rebaseValue)
{
	T *p=start;
	while(p<end)
	{
		if(*p) // 仅当不为nullptr时增加
			*p += rebaseValue;
		++p;
	}
}
template <class T>
void  rebasePointer(T * &p,ptrdiff_t diff)
{
	p=reinterpret_cast<T*>(reinterpret_cast<char*>(p)+diff);
}
template <class T>
T* pointerInc(T *p,ptrdiff_t rebaseValue)
{
	return p ? reinterpret_cast<T*>(reinterpret_cast<char*>(p)+rebaseValue):
			   nullptr;
}
template <class T>
const T* pointerInc(const T *p,ptrdiff_t rebaseValue)
{
	return p ? reinterpret_cast<const T*>(reinterpret_cast<const char*>(p)+rebaseValue):
			nullptr;
}

#endif /* INCLUDE_GENERIC_UTIL_H_ */
