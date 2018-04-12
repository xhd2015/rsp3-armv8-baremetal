/*
 * Vector.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTOR_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTOR_H_

#include <data_structures/Vector.h>

template <class T>
Vector<T>::Vector()
	:
	_data(nullptr),
	_capacity(0),
	_size(0)
{}

template <class T>
Vector<T>::Vector(size_t initSize,bool setMinCapacity)
	:
_data(nullptr),_capacity(0),_size(0)
 {
	if(setMinCapacity)
		_capacity=(initSize <= MINIMAL_CAPACITY ? MINIMAL_CAPACITY : initSize);
	else
		_capacity=initSize;
	if(_capacity>0)
	{
		_data = mman.allocateAs<T*>(_capacity*sizeof(T));
		if(_data)
		{
			for(size_t i=0;i!=initSize;++i)
				new (_data+i) T();
			_size = initSize;
		}else{
			_capacity=0;
		}
	}
 }

template <class T>
Vector<T>::Vector( const std::initializer_list<T> &il)
	:Vector()
{
	for(auto & i : il)
		pushBack(i);
}
template <class T>
Vector<T>::Vector(const T *data,size_t n)
	:Vector()
{
	if(resizeCapacity(n))
	{
		for(size_t i=0;i!=n;++i)
			new (_data+i) T(data[i]);
		_size = n;
	}
}
template <class T>
Vector<T>::Vector( const Vector<T> & vec)
	:
_data(mman.allocateAs<T*>(vec._capacity)),
	 _capacity(0),
	 _size(0)
{
	if(_data)
	{
		_capacity = vec._capacity;
		_size = vec._size;
		auto srcData=vec._data;
		for(size_t i=0;i!=_size;++i)
			new (_data+i) T(srcData[i]);
	}
}

template <class T>
Vector<T>& Vector<T>::operator=(const Vector<T> & vec)
{
	if(resize(vec._size))
	{
		auto src=vec._data;
		for(size_t i=0;i!=_size;++i)
			_data[i]=src[i];
	}
	return *this;
}

template <class T>
Vector<T>::Vector(Vector<T> && vec)
	:
_data(vec._data),_capacity(vec._capacity),_size(vec._size)
{
	vec._data = nullptr;
	vec._capacity = 0;
	vec._size = 0;
}

template <class T>
Vector<T>& Vector<T>::operator=(Vector<T> && vec)
{
	_data=vec._data;
	_capacity=vec._capacity;
	_size = vec._size;
	vec._data = nullptr;
	vec._capacity = 0;
	vec._size = 0;
	return *this;
}

template <class T>
Vector<T>::~Vector()
{
	if(_data!=nullptr) // moved or destructed
	{
		for(size_t i=0;i!=_size;++i)
			_data[i].~T();
		memMan().deallocate(_data);
		_data=nullptr;
		_capacity = 0;
		_size = 0;
	}
}
template <class T>
template <class CastType>
Vector<CastType> && Vector<T>::castMove()
{
	_capacity /= sizeof(CastType);
	_size /= sizeof(CastType);
	return std::move(*reinterpret_cast<Vector<CastType>*>(this));
}
template <class T>
T Vector<T>::popBack()
{
	assert(_size > 0);
	adjustCapacityForOneLess();
	return _data[--_size];
}
template <class T>
void Vector<T>::pushBack(T t)
{
	if(adjustCapacityForOneMore())
	{
		++_size;
		new (_data + _size - 1) T(t);// 使用复制构造函数
	}
}
template <class T>
template <class ... Args>
void Vector<T>::emplaceBack(Args && ... args)
{
	if(adjustCapacityForOneMore())
	{
		++_size;
		new (_data + _size -1) T(std::forward<Args>(args)...);
	}
}

template <class T>
void   Vector<T>::clear()
{
	_size = 0;
	resizeCapacity(MINIMAL_CAPACITY);
}
template <class T>
void   Vector<T>::erase(size_t i)
{
	if(i<_size && adjustCapacityForOneLess())
	{
		--_size;
		for(size_t j=i;j!=_size;++j)
			_data[j]=_data[j+1];
	}
}

template <class T>
Vector<T>& Vector<T>::append(const Vector<T> &vec,size_t len)
{
	if(len > vec.size() )len=vec.size();
	for(size_t i=0;i!=len;++i)
		pushBack(vec[i]);
	return *this;
}
template <class T>
size_t  Vector<T>::insert(size_t i,const T & t)
{
	if(i > _size || !adjustCapacityForOneLess())
		return SIZE_MAX;
	++_size;
	for(size_t j = _size-1;j!=i;--j)
		_data[j] = _data[j-1];
	_data[i]=t;
	return i;
}

template <class T>
bool  Vector<T>::resize(size_t newSize)
{
	size_t desiredCapacity = (newSize < MINIMAL_CAPACITY?MINIMAL_CAPACITY:newSize);
	if(resizeCapacity(desiredCapacity))
		_size=newSize;
	return (_size==newSize && _capacity==desiredCapacity);
}

template <class T>
bool  Vector<T>::ensureEnoughCapacity(size_t capacity)
{
	if(capacity > _capacity)
		return resizeCapacity(capacity);
	return true;
}

template <class T>
bool  Vector<T>::resizeCapacity(size_t capacity)
{
	if(this->_capacity == capacity)
		return true;
	void *newData=nullptr;
	if(_data)
		newData=mman.reallocate(_data, capacity * sizeof(T));
	else
		newData=mman.allocate(capacity*sizeof(T));
	if(!newData)
		return false;

	// update all relative fields
	_data = reinterpret_cast<T*>(newData);
	this->_capacity = capacity;
	return true;
}

template <class T>
bool  Vector<T>::adjustCapacityForOneMore()
{
	if(_size+1 > _capacity)
		return resizeCapacity(getIncrementalSize(_capacity));
	return true;
}

template <class T>
bool  Vector<T>::adjustCapacityForOneLess()
{
	//	getIncrementalSize(size-1)==advised  capacity
	// advised capacity < capacity --> do it
	size_t advisedCapacity = (_size==0?MINIMAL_CAPACITY : getIncrementalSize(_size-1) );
	if(advisedCapacity < MINIMAL_CAPACITY)
		advisedCapacity=MINIMAL_CAPACITY;
	if(advisedCapacity < _capacity)
		return resizeCapacity(advisedCapacity);
	return true;

}


template <class T>
Output & operator<<(Output &out,const Vector<T> & vec)
{
	for(size_t i=0;i!=vec.size();++i)
		out << vec[i];
	return out;
}



#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTOR_H_ */
