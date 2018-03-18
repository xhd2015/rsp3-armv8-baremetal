/*
 * traits.h
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_PROGRAMMING_TRAITS_H_
#define INCLUDE_PROGRAMMING_TRAITS_H_
#include <def.h>
#include <type_traits>

// select between reference, value and const reference.
// ref, const
template <class T, bool IsRef = true,bool IsConst = true>
struct ReturnTypeSelector{
	using type = std::add_lvalue_reference_t<std::add_const_t<T>>;
};

// ref, not const
template <class T>
struct ReturnTypeSelector<T,true, false>{
	using type = std::add_lvalue_reference_t<std::remove_const_t<T>>;
};

//  not ref, const or what ever
template <class T,bool IsConst>
struct ReturnTypeSelector<T,false,IsConst>{
	using type = std::remove_const_t<std::remove_reference_t<T>>;
};

template <class This,class ReturnType>
struct RefOrValue{
	using type = typename ReturnTypeSelector<ReturnType,(sizeof(ReturnType)>sizeof(size_t)), std::is_const<This>::value>::type;
};

template <class This,class ReturnType>
using RefOrValue_t =typename RefOrValue<This,ReturnType>::type;




#endif /* INCLUDE_PROGRAMMING_REFORVALUE_H_ */
