/*
 * memory.h
 *
 *  Created on: Apr 20, 2018
 *      Author: 13774
 */

#include <type_traits>
template <class T>
void destruct(T t,size_t n);


//=== template
template <class T>
void destruct(T t,size_t n)
{
	static_assert(std::is_pointer<T>::value,"");
	using V = typename std::remove_pointer<T>::type;
	if(!t)return;
	for(size_t i=0;i!=n;++i)
			t[i].~V();
}
