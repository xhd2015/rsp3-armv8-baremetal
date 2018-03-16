
/*
 * StringRef.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <data_structures/String.h>
#include <data_structures/StringRef.h>
#include <cstring>
#include "../../include/io/printk.h"


StringRef::StringRef(const void *nullTermStr)
	:VectorRef(reinterpret_cast<const char*>(nullTermStr),std::strlen(reinterpret_cast<const char*>(nullTermStr))){}
StringRef::StringRef(const void *p,size_t len)
	:VectorRef(reinterpret_cast<const char*>(p),len){}

StringRef::StringRef(const String &s)
	:VectorRef(s.getData(),s.getSize()){}

Output & operator<<(Output & out,const StringRef ref)
{
	out.print(ref.getData(), ref.getSize());
	return out;
}
