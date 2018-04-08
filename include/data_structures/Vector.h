/*
 * Vector.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_VECTOR_H_
#define INCLUDE_VECTOR_H_

#include <def.h>
#include <initializer_list>
#include <io/SectorReader.h>
#include <io/Output.h>
#include <utility>


template <class T>
class Vector{
public:
	enum { MINIMAL_CAPACITY = 8};
	using ValueType = T;
	using SizeType = size_t;

	Vector(size_t initSize=0);
	Vector(const std::initializer_list<T> &il);
	Vector<T> & operator=(const std::initializer_list<T> &il)=delete;
	Vector(const Vector<T> & vec);
	Vector<T> & operator=(const Vector<T> & vec);
	Vector(Vector<T> && vec);
	Vector<T>& operator=(Vector<T> && vec);
	~Vector();

	/*
	 * 调用castMove之后，原来的数组不应当再使用
	 *  可以castMove的原因是Vector<T> Vector<char>占据的空间实际上是同样的。
	 */
	template <class CastType>
	AS_MACRO Vector<CastType> && castMove()
	{
		_capacity /= sizeof(CastType);
		_size /= sizeof(CastType);
		return std::move(*reinterpret_cast<Vector<CastType>*>(this));
	}

	const T& operator[](size_t i)const;
	T &operator[](size_t i);

	/**
	 * it is your responsiblity to ensure size>0
	 */
	T popBack();
	void pushBack(T t);
	T *data();
	const T* data()const;
	size_t   size()const;
	size_t capacity()const;
	bool	empty()const;
	void   clear();
	void  erase(size_t i);
	Vector<T>& append(const Vector<T> &vec,size_t len=SIZE_MAX);
	/**
	 * @param i  valid index [0,size]
	 */
	//return the index, on failed,return SIZE_MAX
	size_t  insert(size_t i,const T & t);

	// this is very useful to avoid waste,because after this
	// size==newSize,   capacity==newSize or capacity==MINIMAL_CAPACITY
	// afte this,capacity  >= MINIMAL_CAPACITY
	bool  resize(size_t newSize);

private:
	bool  resizeCapacity(size_t capacity);
	bool  adjustCapacityForOneMore();
	// afte this,capacity  >= MINIMAL_CAPACITY
	bool  adjustCapacityForOneLess();

	static size_t getIncrementalSize(size_t curSize);
private:
	T *_data;
	size_t _capacity;
	size_t _size;
};


template <class T>
Output & operator<<(Output &out,const Vector<T> & vec);




#include <templates_implementation/data_structures/Vector.h>

#endif /* INCLUDE_VECTOR_H_ */
