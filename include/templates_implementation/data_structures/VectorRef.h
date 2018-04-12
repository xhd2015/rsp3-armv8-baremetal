/*
 * VectorRef.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_
#include <data_structures/VectorRef.h>
#include <data_structures/Vector.h>


template <class T>
VectorRef<T>::VectorRef(const T *data,size_t len)
	:_data(data),_size(len){}

template <class T>
VectorRef<T>::VectorRef(const Vector<T>& vec,size_t len,size_t offset)
	:_data(vec.data() + offset),_size(len==SIZE_MAX?vec.size():len) {}

template <class T>
Output & operator<<(Output & out,const VectorRef<T> &ref)
{
	for(size_t i=0;i!=ref.getSize();++i)
		out << ref[i];
	return out;
}
#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_ */
