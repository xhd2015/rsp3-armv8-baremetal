/*
 * generic_util.cpp
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */

#include <generic_util.h>
#include <cstring>
#include <io/Output.h>

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
size_t stoi(const char *src,size_t size,bool *failed)
{
	size_t base=10;
	size_t i=0;
	if(size >= 2 && src[0]=='0')
	{
		if(src[1]=='x')
			base=16;
		else if(src[1]=='b')
			base=2;
		else{
			kout << FATAL << "Unsupported prefix :0" << src[1] << "\n";
			if(failed)
				*failed=true;
			return SIZE_MAX;
		}
		i=2;

	} // no prefix
	size_t v=0;
	for(;i!=size;++i)
	{
		size_t itv=SIZE_MAX;
		if(src[i]>='0' && src[i]<='9')
			itv=src[i]-'0';
		else if(src[i]>='a' && src[i]<='f')
			itv=src[i]-'a' + 10;
		else if(src[i]>='A' && src[i]<='F')
			itv=src[i]-'A' + 10;
		if(itv >= base)
		{
			kout << FATAL << "Bad format, ch=" << src[i] << "\n";
			if(failed)
				*failed=true;
			return SIZE_MAX;
		}
		v*=base;
		v+=itv;
	}
	return v;
}
size_t stoi(const char *src,bool *failed)
{
	return stoi(src,std::strlen(src),failed);
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

size_t gcd(size_t a,size_t b)
{
	return b?gcd(b,a%b):a;
}
size_t lcm(size_t a,size_t b)
{
	return a/gcd(a,b)*b;
}

