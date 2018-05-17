/*
 * Vector3.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_VECTOR_H_
#define INCLUDE_DATA_STRUCTURES_VECTOR_H_

// 注意，该文件不应当由头文件引入，头文件只应当使用templated_decl
// 这种分离实现可以避免：当函数体中包含了另一个依赖于此文件的文件引入时，产生的环形依赖问题
// 另一个问题，也与环形依赖相关，可以通过forward_decl来解决。

#include <data/Vector_tempdecl.h>
#include <data/VectorRef.h>


template <class T>
Vector<T>::Vector()
	:
	_data(nullptr),
	_capacity(0),
	_size(0)
{}

template <class T>
Vector<T>::Vector(size_t initSize)
	:
_data(nullptr),_capacity(initSize),_size(0)
 {
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
	:Vector(n)
{
	if(data && _data)
	{
		for(size_t i=0;i!=n;++i)
			new (_data+i) T(data[i]);
	}
}
template <class T>
Vector<T>::Vector( const VectorRef<T> & vec)
	: Vector(vec.size())
{
	if(_data && vec.data())
	{
		auto srcData=vec.data();
		for(size_t i=0;i!=_size;++i)
			new (_data+i) T(srcData[i]);
	}
}

template <class T>
Vector<T>& Vector<T>::operator=(const VectorRef<T> & vec)
{
	if(resize(vec.size()))
	{
		auto src=vec.data();
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
	auto v=std::move(_data[_size - 1]);
	adjustCapacityForOneLess();
	--_size;
	return std::move(v);
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
	resize(0);
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
// FIXED 调用默认的构造函数
template <class T>
bool  Vector<T>::resize(size_t newSize)
{
	if(resizeCapacity(newSize))
	{
		if(_size < newSize) //newSize - _size大于0的情况下，需要进行默认构造
			for(size_t i=_size;i!=newSize;++i)
				new (_data + i) T();
		_size=newSize;
		return true;
	}
	return false;
}

template <class T>
bool  Vector<T>::ensureEnoughCapacity(size_t capacity)
{
	if(capacity > _capacity)
		return resizeCapacity(capacity);
	return true;
}
template <class T>
void   Vector<T>::removeLast()
{
	if(_size>0)
		resize(_size - 1);
}
template <class T>
bool  Vector<T>::resizeCapacity(size_t capacity)
{
	if(this->_capacity == capacity)
		return true;
	T *newData=nullptr;
	if(_data)// 必须告诉reallocate真实的对象数目
		newData=mman.reallocate(_data, capacity ,_size);//有类型的
	else
		newData=mman.allocateAs<T*>(capacity*sizeof(T));

	if(capacity!=0 && !newData) // capacity=0时返回nullptr是正确的行为
		return false;

	// update all relative fields
	_data = newData;
	this->_capacity = capacity;
	return true;
}

template <class T>
bool  Vector<T>::adjustCapacityForOneMore()
{
	if(_size+1 > _capacity)
		return resizeCapacity(getIncrementalCapacity(_capacity));
	return true;
}

template <class T>
bool  Vector<T>::adjustCapacityForOneLess()
{
	size_t advisedCapacity = getDecrementalCapacity(_capacity);
	if( _size <= advisedCapacity + 1) // 如果减小1个元素之后，新的容量仍然能够容纳，就采用新的容量。
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

#endif /* INCLUDE_DATA_STRUCTURES_VECTOR_H_ */
