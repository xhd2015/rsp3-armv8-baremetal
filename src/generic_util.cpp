/*
 * generic_util.cpp
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */

#include <generic_util.h>
#include <cstring>

extern const char digitsMap[]={'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};


size_t itob(size_t i,char *dst,size_t size)
{
	return itos(i,2,dst,size);
}
size_t itod(size_t i,char *dst,size_t size)
{
	return itos(i,10,dst,size);
}
size_t itox(size_t i,char *dst,size_t size)
{
	return itos(i,16,dst,size);
}

size_t itos(size_t i,unsigned int base,char *dst,size_t size)
{
	// 检查base是否是允许的值
	if(base==0 || base > 16)
		return 0;
	if(size == 0)
		return 0;

	size_t index=0;
	if(i==0)
		dst[index++]='0';
	else{
		while(i && (index+1) < size)
		{
			dst[index++]=digitsMap[i % base];
			i /= base;
		}
	}
	dst[index]='\0';
	reverse(dst, index);
	return index;
}

uint64_t alignAhead(uint64_t d,uint64_t alignment)
{
	auto left=d%alignment;//
	return left?(d + alignment - left):d;
}
uint64_t alignBackward(uint64_t d,uint64_t alignment)
{
	auto left=d%alignment;
	return left?(d - left):d;
}
void reverse(char *str,size_t size)
{
	if(size > 1)
		for(size_t i=0,j=size-1;i<j;++i,--j)
		{
			char temp=str[i];
			str[i]=str[j];
			str[j]=temp;
		}
}


const char *strOffset(const char *p,size_t offset)
{
	if(p==EMPTY_STR || offset> std::strlen(p))
		return EMPTY_STR;
	return (p+offset);
}

