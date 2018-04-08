/*
 * VectorRef.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_
#include <data_structures/VectorRef.h>



template <class T>
VectorRef<T>::VectorRef(const T *data,size_t len)
	:data(data),size(len){}

template <class T>
VectorRef<T>::VectorRef(const Vector<T>& vec,size_t len,size_t offset)
	:data(vec.data() + offset),size(len==SIZE_MAX?vec.size():len) {}

template <class T>
const T * VectorRef<T>::getData()const
{
	return data;
}

template <class T>
size_t    VectorRef<T>::getSize()const
{
	return size;
}


template <class T>
void	 VectorRef<T>::setData(const T * data)
{
	this->data = data;
}
template <class T>
void	 VectorRef<T>::setSize(size_t size)
{
	this->size = size;
}

template <class T>
const T&  VectorRef<T>::operator[](size_t i)const
{
	return data[i];
}



template <class T>
Output & operator<<(Output & out,const VectorRef<T> &ref)
{
	for(size_t i=0;i!=ref.getSize();++i)
		out << ref[i];
	return out;
}
#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_ */
