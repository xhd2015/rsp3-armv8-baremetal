/*
 * Vector_template.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */
#ifndef INCLUDE_DATA_STRUCTURES_VECTOR_TEMPLATE_H_
#define INCLUDE_DATA_STRUCTURES_VECTOR_TEMPLATE_H_
#include <def.h>
#include <data_structures/Vector.h>
#include <kernel.h>
#include <printk.h>

template <class T>
Vector<T>::Vector(size_t initSize)
	:data(nullptr),capacity(0),size(0)
 {
	if(resizeCapacity(initSize <= MINIMAL_CAPACITY ? MINIMAL_CAPACITY : initSize))
	{
		size = initSize;
	}
 }
template <class T>
Vector<T>::Vector(const std::initializer_list<T> &il)
	:Vector()
{
	for(auto & i : il)
		pushBack(i);
}

template <class T>
Vector<T>::Vector(Vector<T> && vec)
	:data(vec.data),capacity(vec.capacity),size(vec.size)
{
	vec.data = nullptr;
	vec.capacity = 0;
	vec.size = 0;
}

template <class T>
Vector<T>& Vector<T>::operator=(Vector<T> && vec)
{
	data=vec.data;
	capacity=vec.capacity;
	size = vec.size;
	vec.data = nullptr;
	vec.capacity = 0;
	vec.size = 0;
	return *this;
}

template <class T>
Vector<T>::~Vector()
{
	if(data!=nullptr) // moved or destructed
	{
		mman.deallocate(data);
		data=nullptr;
	}
}

template <class T>
const T& Vector<T>::operator[](size_t i)const
{
	return data[i];
}
template <class T>
T &Vector<T>::operator[](size_t i)
{
	return data[i];
}
template <class T>
T Vector<T>::popBack()
{
	if(adjustCapacityForOneLess())
		if(size>0)
			return data[--size];
	return data[0];
}
template <class T>
void Vector<T>::pushBack(T t)
{
	if(adjustCapacityForOneMore())
	{
		++size;
		data[size-1]=t;
	}
}

template <class T>
T *Vector<T>::getData()
{
	return data;
}

template <class T>
const T* Vector<T>::getData()const
{
	return data;
}

template <class T>
size_t   Vector<T>::getSize()const
{
	return size;
}

template <class T>
size_t Vector<T>::getCapacity()const
{
	return capacity;
}

template <class T>
bool	Vector<T>::empty()const
{
	return size==0;
}

template <class T>
void   Vector<T>::clear()
{
	size = 0;
	resize(MINIMAL_CAPACITY);
}
template <class T>
void   Vector<T>::erase(size_t i)
{
	if(i<size && adjustCapacityForOneLess())
	{
		--size;
		for(size_t j=i;j!=size;++j)
			data[j]=data[j+1];
	}
}

template <class T>
Vector<T>& Vector<T>::append(const Vector<T> &vec,size_t len)
{
	if(len > vec.getSize() )len=vec.getSize();
	for(size_t i=0;i!=vec.getSize();++i)
		pushBack(vec[i]);
	return *this;
}
template <class T>
size_t  Vector<T>::insert(size_t i,const T & t)
{
	if(i > size || !adjustCapacityForOneLess())
		return SIZE_MAX;
	++size;
	for(size_t j = size-1;j!=i;--j)
		data[j] = data[j-1];
	data[i]=t;
	return i;
}

template <class T>
bool  Vector<T>::resize(size_t newSize)
{
	size_t desiredCapacity = (newSize < MINIMAL_CAPACITY?MINIMAL_CAPACITY:newSize);
	if(resizeCapacity(desiredCapacity))
		size=newSize;
	return (size==newSize && capacity==desiredCapacity);
}

template <class T>
bool  Vector<T>::resizeCapacity(size_t capacity)
{
	if(this->capacity == capacity)
		return true;
	mman.reallocate(data, capacity * sizeof(T));
	T *newData = mman.allocateAs<T*>(capacity * sizeof(T));
	if(!newData)
		return false;

	for(size_t i=0;i!=size;++i)
		newData[i]=data[i];
	mman.deallocate(data);

	// update all relative fields
	data = newData;
	this->capacity = capacity;
	return true;
}

template <class T>
bool  Vector<T>::adjustCapacityForOneMore()
{
	if(size+1 > capacity)
		return resizeCapacity(getIncrementalSize(capacity));
	return true;
}

template <class T>
bool  Vector<T>::adjustCapacityForOneLess()
{
	//	getIncrementalSize(size-1)==advised  capacity
	// advised capacity < capacity --> do it
	size_t advisedCapacity = (size==0?MINIMAL_CAPACITY : getIncrementalSize(size-1) );
	if(advisedCapacity < MINIMAL_CAPACITY)
		advisedCapacity=MINIMAL_CAPACITY;
	if(advisedCapacity < capacity)
		return resizeCapacity(advisedCapacity);
	return true;

}

template <class T>
size_t  Vector<T>::getIncrementalSize(size_t curSize)
{
	return (curSize * 3 / 2);
}

template <class T>
Output & operator<<(Output &out,const Vector<T> & vec)
{
	for(size_t i=0;i!=vec.getSize();++i)
		out << vec[i];
	return out;
}

#endif /* INCLUDE_DATA_STRUCTURES_VECTOR_TEMPLATE_H_ */
