/*
 * GenerateString.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef _ARG_DO_GENERATE
#define _ARG_NAME String
#define _ARG_BASE_TYPE Vector
#define _ARG_GEN_DECL
#define _ARG_GEN_DEFINITION
#define _ARG_GLOBAL
#endif

#ifdef _ARG_GLOBAL
#define _GEN_VAR_MMAN mman
#define _GEN_VAR_MMAN_ARG
#define _GEN_VAR_MMAN_ARG_COMMA
#define _GEN_VAR_MMAN_ARG_PASS
#define _GEN_VAR_MMAN_ARG_PASS_COMMA
#else
#define _GEN_VAR_MMAN (*_mman)
#define _GEN_VAR_MMAN_ARG MemoryManager &mman
#define _GEN_VAR_MMAN_ARG_COMMA MemoryManager &mman,
#define _GEN_VAR_MMAN_ARG_PASS   mman
#define _GEN_VAR_MMAN_ARG_PASS_COMMA mman,
#endif


//===for decal
#ifdef _ARG_GEN_DECL
#include <def.h>

class _ARG_NAME
	:public _ARG_BASE_TYPE<char>
{
public:
	using BaseType = _ARG_BASE_TYPE<char>;

	using BaseType::operator=;
	using BaseType::append;
#ifdef _ARG_GLOBAL
	AS_MACRO _ARG_NAME():BaseType(){}
	AS_MACRO _ARG_NAME(size_t initSize,bool setMinCapacity=true):BaseType(initSize,setMinCapacity){}
#else
	AS_MACRO _ARG_NAME(MemoryManager &mman):BaseType(mman){}
	AS_MACRO _ARG_NAME(MemoryManager &mman,size_t initSize,bool setMinCapacity=true):BaseType(mman,initSize,setMinCapacity){}
#endif

	AS_MACRO _ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const char *data,size_t n):BaseType(_GEN_VAR_MMAN_ARG_PASS_COMMA data,n){}
#ifdef _ARG_GLOBAL
	AS_MACRO _ARG_NAME(const _ARG_NAME &s):BaseType(s){}
#else
	AS_MACRO _ARG_NAME(MemoryManager &mman,const _ARG_NAME &s):BaseType(mman,s){}
	AS_MACRO _ARG_NAME(const _ARG_NAME &s):BaseType(s){}
#endif
	_ARG_NAME & operator=(const _ARG_NAME &s){BaseType::operator =(s);return *this;}
	_ARG_NAME(_ARG_NAME &&s):BaseType(std::move(s)){}
	_ARG_NAME & operator=(_ARG_NAME &&s){ BaseType::operator =(std::move(s));return *this;}

	_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const char *s);
	_ARG_NAME &operator=(const char *s);


	_ARG_NAME & append(const char* s,size_t len);
	_ARG_NAME & append(const char *s);

	size_t   findFirst(size_t start,const _ARG_NAME &s)const;
	_ARG_BASE_TYPE<_ARG_NAME> split(const _ARG_NAME & s)const;

	_ARG_NAME subString(size_t i,size_t len)const;

};

bool   operator==(const _ARG_NAME &lhs,const _ARG_NAME &rhs);

#endif


//==========for src
#ifdef _ARG_GEN_DEFINITION
#include <cstring>
_ARG_NAME::_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const char *s)
	:BaseType(_GEN_VAR_MMAN_ARG_PASS_COMMA 0)
{
	while(*s)
		pushBack(*s++);
}
_ARG_NAME &_ARG_NAME::operator=(const char *s)
{
	size_t len=std::strlen(s);
	if(resize(len))
	{
		for(size_t i=0;i!=len;++i)
			data()[i]=s[i];
	}
	return *this;
}
_ARG_NAME & _ARG_NAME::append(const char* s,size_t len)
{
	size_t left=len;
	while(*s && left)
	{
		pushBack(*s++);
		--left;
	}
	return *this;
}

_ARG_NAME & _ARG_NAME::append(const char *s)
{
	while(auto ch = *s++)
		pushBack(ch);
	return *this;
}
size_t   _ARG_NAME::findFirst(size_t start,const _ARG_NAME &s)const
{
	StringRef strRef(s);
	for(size_t i=start;i!=size();++i)
	{
		auto subStr = s.subString(i, s.size());
		if(subStr == strRef)
			return i;
	}
	return SIZE_MAX;
}
_ARG_BASE_TYPE<_ARG_NAME> _ARG_NAME::split(const _ARG_NAME & s)const
{
#ifdef _ARG_GLOBAL
	_ARG_BASE_TYPE<_ARG_NAME> res;
#else
	_ARG_BASE_TYPE<_ARG_NAME> res(s.memMan());
#endif
	size_t pos=0;
	while(pos < size())
	{
		size_t fpos=findFirst(pos, s);
		if(fpos==SIZE_MAX)
			fpos=size();
		res.pushBack(subString(pos,fpos - pos));
		pos=fpos+s.size();
	}
	return std::move(res);
}
_ARG_NAME _ARG_NAME::subString(size_t i,size_t len)const
{
	if(i>=size()) i=size()-1;
	if(i+len >= size()) len=size()-i;
	_ARG_NAME s;
	for(size_t j=0;j!=len;++j)
		s.pushBack((*this)[j+i]);
	return s;
}


bool   operator==(const _ARG_NAME &lhs,const _ARG_NAME &rhs)
{
	return StringRef(lhs) == StringRef(rhs);
}
#endif

// 所有的宏清空
#undef _GEN_VAR_MMAN
#undef _GEN_VAR_MMAN_ARG
#undef _GEN_VAR_MMAN_ARG_COMMA
#undef _GEN_VAR_MMAN_ARG_PASS
#undef _GEN_VAR_MMAN_ARG_PASS_COMMA
