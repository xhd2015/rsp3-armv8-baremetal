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


template <class T>
class Vector{
public:
	enum { MINIMAL_CAPACITY = 8};
	using ValueType = T;
	using SizeType = size_t;

	Vector(size_t initSize=0);
	Vector(const std::initializer_list<T> &il);
	Vector<T> & operator=(const std::initializer_list<T> &il)=delete;
	Vector(const Vector<T> & vec)=delete;
	Vector<T> & operator=(const Vector<T> & vec)=delete;
	Vector(Vector<T> && vec);
	Vector<T>& operator=(Vector<T> && vec);
	~Vector();

	const T& operator[](size_t i)const;
	T &operator[](size_t i);

	/**
	 * it is your responsiblity to ensure size>0
	 */
	T popBack();
	void pushBack(T t);
	T *getData();
	const T* getData()const;
	size_t   getSize()const;
	size_t getCapacity()const;
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
	T *data;
	size_t capacity;
	size_t size;
};


template <class T>
Output & operator<<(Output &out,const Vector<T> & vec);




#include <templates_implementation/data_structures/Vector.h>

#endif /* INCLUDE_VECTOR_H_ */
