/*
 * ScalarBase.h
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PROGRAMMING_SCALARBASE_H_
#define INCLUDE_PROGRAMMING_SCALARBASE_H_
#include <def.h>
template <class SubType,class ScaleType>
class ScalarBase
{
public:
	AS_MACRO static SubType     make(ScaleType v) { return *reinterpret_cast<SubType*>(&v);}
	AS_MACRO ScaleType & raw() { return *reinterpret_cast<ScaleType*>(this);}
	AS_MACRO const ScaleType & raw()const{ return *reinterpret_cast<const ScaleType*>(this);}
};



#endif /* INCLUDE_PROGRAMMING_SCALARBASE_H_ */
