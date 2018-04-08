/*
 * macros.h
 *
 *  Created on: Mar 26, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PROGRAMMING_MACROS_H_
#define INCLUDE_PROGRAMMING_MACROS_H_
#include <type_traits>

// 不推荐使用
#define for_range(var,start,end) for(decltype(end) var=(start),tmp=(end);var!=end;++var)

// 下面这个宏用于在某些情况下，比如packed的struct,不能直接获取引用的时候
#define referenceof(var,field) *reinterpret_cast<decltype((var)->field)*>(reinterpret_cast<char*>(var)+offsetof(std::remove_reference_t<decltype(*(var))>,field))

#define referenceof_const(var,field) *reinterpret_cast<decltype((var)->field)*>(reinterpret_cast<const char*>(var)+offsetof(std::remove_reference_t<decltype(*(var))>,field))

#endif /* INCLUDE_PROGRAMMING_MACROS_H_ */
