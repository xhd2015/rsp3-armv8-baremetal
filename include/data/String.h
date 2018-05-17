/*
 * String2.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_STRING_H_
#define INCLUDE_DATA_STRUCTURES_STRING_H_

#include <data/Vector.h>
#include <functional>
#include <data/StringRef.h>

//#undef _ARG_DO_GENERATE
//#define _ARG_DO_GENERATE
//
//#undef _ARG_GEN_DEFINITIONS
//#define _ARG_GEN_DECL
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

class String
	:public Vector<char>
{
public:
	using BaseType = Vector<char>;

	using BaseType::operator=;
	using BaseType::append;

	AS_MACRO String():BaseType(){}
	AS_MACRO String(size_t initSize):BaseType(initSize){}

	AS_MACRO String(const char *data,size_t n):BaseType(data,n){}
	AS_MACRO String(const String &s):BaseType(s){}
	String & operator=(const String &s){BaseType::operator =(s);return *this;}
	AS_MACRO String(const StringRef &s):BaseType(s){}
	String & operator=(const StringRef &s) { BaseType::operator =(s);return *this;}
	String(String &&s):BaseType(std::move(s)){}
	String & operator=(String &&s){ BaseType::operator =(std::move(s));return *this;}

	String( const char *s);
	String &operator=(const char *s);


	String & append(const char* s,size_t len);
	String & append(const char *s);

	size_t   findFirst(size_t start,const String &s)const;
	size_t   findFirst(size_t start,char ch)const;
	Vector<String> split(const String & s)const;

	// split核心操作：  去除一段字符串，继续检测下一个。
	// 保证index<size
	using  SplitSkipDetermine = std::function<bool(const String &line, size_t index)>;
	Vector<String> split(SplitSkipDetermine  shouldSkip)const;
	Vector<String> splitByChars(const String & chars)const;
	Vector<String> splitByString(const String & str)const;

	bool           hasChar(char ch)const;
	bool           startswith(const String &str)const;
	bool           startswith(char ch)const{ return size()>0 && (*this)[0]==ch;}

	String subString(size_t i,size_t len)const;

};

bool   operator==(const String &lhs,const String &rhs);



#endif /* INCLUDE_DATA_STRUCTURES_STRING_H_ */
