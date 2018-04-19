/*
 * StringRef.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_STRINGREF_H_
#define INCLUDE_DATA_STRUCTURES_STRINGREF_H_

#include <data/forward_decl.h>
#include <io/Output.h>
#include <data/VectorRef_tempdecl.h>

// ref of str
class StringRef
	:public VectorRef<char>
{
public:
	StringRef(const void *nullTermStr);
	StringRef(const void *p,size_t len);
	StringRef(const String &s);
	StringRef(const UniversalString &s);

};
bool      operator==(const StringRef &lhs,const StringRef &rhs);
Output & operator<<(Output & out,const StringRef ref);

#endif /* INCLUDE_DATA_STRUCTURES_STRINGREF_H_ */
