/*
 * Vector_tempdecl.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_VECTOR_TEMPDECL_H_
#define INCLUDE_DATA_VECTOR_TEMPDECL_H_


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
#include <data/VectorRef_tempdecl.h>

template <class T>
class Vector{
public:
//	enum { MINIMAL_CAPACITY = 8}; // UPDATE:2018年5月16日09:45:18 不再强制使用最小容量

	using ValueType = T;
	using SizeType = size_t;
	Vector();
	Vector(size_t initSize);
	Vector(const std::initializer_list<T> &il);
	Vector<T> & operator=(const std::initializer_list<T> &il)=delete;
	Vector(const T *data,size_t n);
	Vector(const Vector<T> & vec):Vector(VectorRef<T>(vec)){}
	Vector<T> & operator=(const Vector<T> & vec){ return *this=VectorRef<T>(vec);}
	Vector(const VectorRef<T> & vec);
	Vector<T> & operator=(const VectorRef<T> & vec);
	Vector(Vector<T> && vec);
	Vector<T>& operator=(Vector<T> && vec);
	~Vector();
	AS_MACRO void rebase(size_t diff) { _data=pointerInc(_data, diff);}

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

	/**
	 * 将_size和_capacity同时设置为newSize,如果增加，增加部分进行默认构造；如果减少，减少部分进行析构
	 * @param newSize
	 * @return
	 */
	bool  resize(size_t newSize);
	bool  ensureEnoughCapacity(size_t capacity);
	void  removeLast();

	AS_MACRO MemoryManager& memMan(){return mman;}

private:
	/**
	 * 改变容量；如果存在已有元素减少的情况，则对这些元素进行析构。
	 * @param capacity
	 * @return
	 */
	bool  resizeCapacity(size_t capacity);
	bool  adjustCapacityForOneMore();
	//  _size>=0
	/**
	 * 注意，在调用该函数之前，必须保证最后一个元素不再使用。
	 * 因为该函数默认假定最后一个元素会被销毁。
	 * @return
	 */
	bool  adjustCapacityForOneLess();

	AS_MACRO static size_t getIncrementalCapacity(size_t curSize){return (curSize * 3 / 2)+1;}
	AS_MACRO static size_t getDecrementalCapacity(size_t curSize){return (curSize>0)?(curSize-1)*2/3:0;}
private:
	T *_data;
	size_t _capacity;
	size_t _size;
};


template <class T>
Output & operator<<(Output &out,const Vector<T> & vec);




#endif /* INCLUDE_DATA_VECTOR_TEMPDECL_H_ */
