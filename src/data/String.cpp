/*
 * String2.cpp
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#include <data/String.h>
#include <data/StringRef.h>
#include <cstring>

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
	while(left && *s)
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
	for(size_t i=start;i!=size();++i)
	{
		auto subStr = s.subString(i, s.size());
		if(subStr == s)
			return i;
	}
	return SIZE_MAX;
}
size_t   String::findFirst(size_t start,char ch)const
{
	for(size_t i=start;i!=size();++i)
	{
		if((*this)[i]==ch)
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
Vector<String> String::split(SplitSkipDetermine  shouldSkip)const
{
	Vector<String> res;
	const String &line=*this;
	size_t i=0;
	// 每次循环，查找一个应当被加入到最后一个字符串的字符
	// 但是，当遇到应当skip的字符时，最后一个
	// 对于字符串，shouldSkip通过比较
	while(true)
	{
		bool hasNewWord=false; // 何时产生newWord， 何时跳过正在遍历的字符
		while(i<line.size() && shouldSkip(line,i))// 遇到空白符，必然增加word
		{
			++i; // 跳过所有的空白符
			hasNewWord=true;
		}
		// 这里，i或者是line.size(),或者是应当被加入到最后一个字符串的尾部
		if(i==line.size())break;
		if(hasNewWord || res.size()==0)//如果是首次，则必须增加空间
			res.emplaceBack();
		res.last().pushBack(line[i++]);
	}
	return std::move(res);
}
Vector<String> String::splitByChars(const String & chars)const
{
	return std::move(split([&chars](const String &line,size_t i)
			{
				return chars.hasChar(line[i]);
			}
	));
}
Vector<String> String::splitByString(const String & str)const
{
	//TODO 完成
	return {};
}

bool       String::hasChar(char ch)const
{
	for(size_t i=0;i!=size();++i)
		if((*this)[i]==ch)
			return true;
	return false;
}

bool    String::startswith(const String &str)const
{
	for(size_t i=0;i!=str.size();++i)
	{
		if(i>=size() || str[i]!=(*this)[i])
			return false;
	}
	return true;
}
String String::subString(size_t i,size_t len)const
{
	if(size()==0)return std::move(String());
	if(i>=size()) i=size()-1;
	if(i+len >= size()) len=size()-i;
	String s;
	for(size_t j=0;j!=len;++j)
		s.pushBack((*this)[j+i]);
	return std::move(s);
}


bool   operator==(const String &lhs,const String &rhs)
{
	return StringRef(lhs) == StringRef(rhs);
}
