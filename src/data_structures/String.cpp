/*
 * String.cpp
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */


#include <data_structures/String.h>
#include <utility>
#include <generic_util.h>
#include <cstring>



String::String(size_t initSize)
	:Vector(initSize){}

String::String(const char *s)
	:Vector()
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
			getData()[i]=s[i];
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
