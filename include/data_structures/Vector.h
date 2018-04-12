/*
 * Vector3.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_VECTOR_H_
#define INCLUDE_DATA_STRUCTURES_VECTOR_H_

// #undef _ARG_DO_GENERATE
// #define _ARG_DO_GENERATE

// #undef _ARG_NAME
// #define _ARG_NAME Vector

// #undef _ARG_GLOBAL
// #define _ARG_GLOBAL
// #include <data_structures/GenerateVector.h>

#include <def.h>
#include <generic/error.h>
#include <initializer_list>
#include <memory/MemoryManager.h>
#include <utility>
#include <io/Output.h>
#include <new>

template <class T>
class Vector{
public:
	enum { MINIMAL_CAPACITY = 8};

	using ValueType = T;
	using SizeType = size_t;
	Vector();
	Vector(size_t initSize,bool setMinCapacity=true);
	Vector(const std::initializer_list<T> &il);
	Vector<T> & operator=(const std::initializer_list<T> &il)=delete;
	Vector(const T *data,size_t n);
	Vector(const Vector<T> & vec);
	Vector<T> & operator=(const Vector<T> & vec);
	Vector(Vector<T> && vec);
	Vector<T>& operator=(Vector<T> && vec);
	~Vector();
	AS_MACRO void rebase(size_t diff) { if(_data){_data=reinterpret_cast<T*>(reinterpret_cast<char*>(_data)+diff);}}


	/*
	 * 调用castMove之后，原来的数组不应当再使用
	 *  可以castMove的原因是Vector<T> Vector<char>占据的空间实际上是同样的。
	 */
	template <class CastType>
	Vector<CastType> && castMove();

	AS_MACRO const T& operator[](size_t i)const { assert(i<_size);return _data[i];}
	AS_MACRO T &operator[](size_t i){assert(i<_size);return _data[i];}
	AS_MACRO const T &first()const { assert(_size>0);return _data[0];}
	AS_MACRO T &first(){ assert(_size>0);return _data[0];}
	AS_MACRO const T &last()const { assert(_size>0);return _data[_size-1];}
	AS_MACRO T &last(){ assert(_size>0);return _data[_size-1];}

	/**
	 * it is your responsiblity to ensure size>0
	 */
	T popBack();
	void pushBack(T t);
	template <class ... Args>
	void emplaceBack(Args && ... args);
	AS_MACRO T *data(){return _data;}
	AS_MACRO const T* data()const{ return _data;}
	AS_MACRO size_t   size()const{return _size;}
	AS_MACRO size_t capacity()const{return _capacity;}
	AS_MACRO bool	empty()const{return _size==0;}
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
	bool  ensureEnoughCapacity(size_t capacity);

	AS_MACRO MemoryManager& memMan(){return mman;}

private:
	bool  resizeCapacity(size_t capacity);
	bool  adjustCapacityForOneMore();
	// afte this,capacity  >= MINIMAL_CAPACITY
	bool  adjustCapacityForOneLess();

	AS_MACRO static size_t getIncrementalSize(size_t curSize){return (curSize==0?MINIMAL_CAPACITY:(curSize * 3 / 2));}
private:
	T *_data;
	size_t _capacity;
	size_t _size;
};


template <class T>
Output & operator<<(Output &out,const Vector<T> & vec);


#include <templates_implementation/data_structures/Vector.h>

#endif /* INCLUDE_DATA_STRUCTURES_VECTOR_H_ */
