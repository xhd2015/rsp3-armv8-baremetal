
/*
 * StringRef.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <data/String.h>
#include <data/StringRef.h>
#include <cstring>
#include <io/Output.h>
#include <data/String.h>
#include <data/UniversalString.h>
#include <data/VectorRef.h>


StringRef::StringRef(const void *nullTermStr)
	:VectorRef(reinterpret_cast<const char*>(nullTermStr),std::strlen(reinterpret_cast<const char*>(nullTermStr))){}
StringRef::StringRef(const void *p,size_t len)
	:VectorRef(reinterpret_cast<const char*>(p),len){}

StringRef::StringRef(const String &s)
	:VectorRef(s.data(),s.size()){}
StringRef::StringRef(const UniversalString &s)
	:VectorRef(s.data(),s.size()){}

bool      operator==(const StringRef &lhs,const StringRef &rhs)
{
	if(lhs.size()!=rhs.size())
		return false;
	for(size_t i=0; i!=rhs.size();++i)
		if(lhs[i]!=rhs[i])
			return false;
	return true;
}
Output & operator<<(Output & out,const StringRef ref)
{
	out.print(ref.data(), ref.size());
	return out;
}
