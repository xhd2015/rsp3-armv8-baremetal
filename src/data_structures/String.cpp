/*
 * String2.cpp
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#include <data_structures/String.h>
#include <data_structures/StringRef.h>

//#undef _ARG_DO_GENERATE
//#define _ARG_DO_GENERATE
//
//#undef _ARG_GEN_DEFINITION
//#define _ARG_GEN_DEFINITION
//
//#undef _ARG_GEN_DECL
////#define _ARG_GEN_DECL
//
//#undef _ARG_NAME
//#define _ARG_NAME String
//
//#undef _ARG_BASE_TYPE
//#define _ARG_BASE_TYPE Vector
//
//#undef _ARG_GLOBAL
//#define _ARG_GLOBAL
//#include <data_structures/GenerateString.h>


#include <cstring>
String::String(const char *s)
	:BaseType()
{
	while(*s)
		pushBack(*s++);
}
String &String::operator=(const char *s)
{
	size_t len=std::strlen(s);
	if(resize(len))
	{
		for(size_t i=0;i!=len;++i)
			data()[i]=s[i];
	}
	return *this;
}
String & String::append(const char* s,size_t len)
{
	size_t left=len;
	while(*s && left)
	{
		pushBack(*s++);
		--left;
	}
	return *this;
}

String & String::append(const char *s)
{
	while(auto ch = *s++)
		pushBack(ch);
	return *this;
}
size_t   String::findFirst(size_t start,const String &s)const
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
Vector<String> String::split(const String & s)const
{
	Vector<String> res;
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
String String::subString(size_t i,size_t len)const
{
	if(i>=size()) i=size()-1;
	if(i+len >= size()) len=size()-i;
	String s;
	for(size_t j=0;j!=len;++j)
		s.pushBack((*this)[j+i]);
	return s;
}


bool   operator==(const String &lhs,const String &rhs)
{
	return StringRef(lhs) == StringRef(rhs);
}
