/*
 * UniversalStrings.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_UNIVERSALSTRING_H_
#define INCLUDE_DATA_STRUCTURES_UNIVERSALSTRING_H_

/**
 * 通用： 与全局环境无关，只与代码的编译方式有关。
 * 如果对一个对象A，A的方法、成员在两个编译环境下的偏移值是相同的，则A是可通用访问的；
 * 如果A的任何一个方法都没有引用全局变量， 则A是可通用调用的。
 * 如果A是可通用访问和可通用调用的，则称A是通用的。
 * 保证可通用访问的关键是使用通用的编译条件
 * 保证可通用调用的关键是递归地保证任何一个方法，以及任何一个方法调用的方法，都是可通用调用的。
 */

#include <data/UniversalVector.h>

#undef _ARG_DO_GENERATE
#define _ARG_DO_GENERATE

#undef _ARG_GEN_DEFINITION
//#define _ARG_GEN_DEFINITION

#undef _ARG_GEN_DECL
#define _ARG_GEN_DECL

#undef _ARG_NAME
#define _ARG_NAME UniversalString

#undef _ARG_GLOBAL

#undef _ARG_BASE_TYPE
#define _ARG_BASE_TYPE UniversalVector
#include <data/GenerateString.h>


#endif /* INCLUDE_DATA_STRUCTURES_UNIVERSALSTRING_H_ */
