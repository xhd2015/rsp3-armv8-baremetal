/*
 * GenerateVector.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef _ARG_DO_GENERATE
#define _ARG_NAME Vector
//#define _ARG_GLOBAL
#endif

#ifdef _ARG_GLOBAL
#define _GEN_VAR_MMAN mman
#define _GEN_VAR_MMAN_ARG
#define _GEN_VAR_MMAN_ARG_COMMA
#define _GEN_VAR_MMAN_ARG_PASS
#define _GEN_VAR_MMAN_ARG_PASS_COMMA
#else
#define _GEN_VAR_MMAN (*_mman)
#define _GEN_VAR_MMAN_ARG MemoryManager &mman
#define _GEN_VAR_MMAN_ARG_COMMA MemoryManager &mman,
#define _GEN_VAR_MMAN_ARG_PASS   mman
#define _GEN_VAR_MMAN_ARG_PASS_COMMA mman,
#endif


// ====content
#include <def.h>
#include <generic/error.h>
#include <initializer_list>
#include <memory/MemoryManager.h>
#include <utility>
#include <io/Output.h>
#include <new>

template <class T>
class _ARG_NAME{
public:
	enum { MINIMAL_CAPACITY = 8};

	using ValueType = T;
	using SizeType = size_t;
#ifdef _ARG_GLOBAL
	_ARG_NAME();
	_ARG_NAME(size_t initSize,bool setMinCapacity=true);
#else
	_ARG_NAME(MemoryManager &mman);
	_ARG_NAME(MemoryManager &mman, size_t initSize,bool setMinCapacity=true);
#endif
	_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const std::initializer_list<T> &il);
	_ARG_NAME<T> & operator=(const std::initializer_list<T> &il)=delete;
	_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const T *data,size_t n);
	_ARG_NAME(const _ARG_NAME<T> & vec);
#ifndef _ARG_GLOBAL
	_ARG_NAME(MemoryManager &mman, const _ARG_NAME<T> & vec); //非同源
#endif
	_ARG_NAME<T> & operator=(const _ARG_NAME<T> & vec);
	_ARG_NAME(_ARG_NAME<T> && vec);
	_ARG_NAME<T>& operator=(_ARG_NAME<T> && vec);
	~_ARG_NAME();
	AS_MACRO void rebase(size_t diff) { if(_data){_data=reinterpret_cast<T*>(reinterpret_cast<char*>(_data)+diff);}}


	/*
	 * 调用castMove之后，原来的数组不应当再使用
	 *  可以castMove的原因是_ARG_NAME<T> _ARG_NAME<char>占据的空间实际上是同样的。
	 */
	template <class CastType>
	_ARG_NAME<CastType> && castMove();

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
	_ARG_NAME<T>& append(const _ARG_NAME<T> &vec,size_t len=SIZE_MAX);
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

	MemoryManager& memMan(){return _GEN_VAR_MMAN;}

private:
	bool  resizeCapacity(size_t capacity);
	bool  adjustCapacityForOneMore();
	// afte this,capacity  >= MINIMAL_CAPACITY
	bool  adjustCapacityForOneLess();

	AS_MACRO static size_t getIncrementalSize(size_t curSize){return (curSize==0?MINIMAL_CAPACITY:(curSize * 3 / 2));}
private:
#ifndef _ARG_GLOBAL
	MemoryManager *_mman;
#endif
	T *_data;
	size_t _capacity;
	size_t _size;
};


template <class T>
Output & operator<<(Output &out,const _ARG_NAME<T> & vec);

//===template instantiation
template <class T>
_ARG_NAME<T>::_ARG_NAME(_GEN_VAR_MMAN_ARG)
	:
#ifndef _ARG_GLOBAL
	_mman(&mman),
#endif
	_data(nullptr),
	_capacity(0),
	_size(0)
{}

template <class T>
_ARG_NAME<T>::_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA size_t initSize,bool setMinCapacity)
	:
#ifndef _ARG_GLOBAL
_mman(&mman),
#endif
_data(nullptr),_capacity(0),_size(0)
 {
	if(setMinCapacity)
		_capacity=(initSize <= MINIMAL_CAPACITY ? MINIMAL_CAPACITY : initSize);
	else
		_capacity=initSize;
	if(_capacity>0)
	{
		_data = _GEN_VAR_MMAN.allocateAs<T*>(_capacity*sizeof(T));
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
_ARG_NAME<T>::_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const std::initializer_list<T> &il)
	:_ARG_NAME(_GEN_VAR_MMAN_ARG_PASS)
{
	for(auto & i : il)
		pushBack(i);
}
template <class T>
_ARG_NAME<T>::_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const T *data,size_t n)
	:_ARG_NAME(_GEN_VAR_MMAN_ARG_PASS)
{
	if(resizeCapacity(n))
	{
		for(size_t i=0;i!=n;++i)
			new (_data+i) T(data[i]);
		_size = n;
	}
}
template <class T>
_ARG_NAME<T>::_ARG_NAME(_GEN_VAR_MMAN_ARG_COMMA const _ARG_NAME<T> & vec)
	:
#ifndef _ARG_GLOBAL
	_mman(&mman),
#endif
_data(_GEN_VAR_MMAN.allocateAs<T*>(vec._capacity)),
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
#ifndef _ARG_GLOBAL
template <class T>
_ARG_NAME<T>::_ARG_NAME(const _ARG_NAME<T> & vec)
	:_ARG_NAME(*vec._mman,vec)
{}
#endif

template <class T>
_ARG_NAME<T>& _ARG_NAME<T>::operator=(const _ARG_NAME<T> & vec)
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
_ARG_NAME<T>::_ARG_NAME(_ARG_NAME<T> && vec)
	:
#ifndef _ARG_GLOBAL
_mman(vec._mman),
#endif
_data(vec._data),_capacity(vec._capacity),_size(vec._size)
{
#ifndef _ARG_GLOBAL
	vec._mman=nullptr;
#endif
	vec._data = nullptr;
	vec._capacity = 0;
	vec._size = 0;
}

template <class T>
_ARG_NAME<T>& _ARG_NAME<T>::operator=(_ARG_NAME<T> && vec)
{
#ifndef _ARG_GLOBAL
	_mman=vec._mman;
	vec._mman=nullptr;
#endif
	_data=vec._data;
	_capacity=vec._capacity;
	_size = vec._size;
	vec._data = nullptr;
	vec._capacity = 0;
	vec._size = 0;
	return *this;
}

template <class T>
_ARG_NAME<T>::~_ARG_NAME()
{
	if(_data!=nullptr) // moved or destructed
	{
		for(size_t i=0;i!=_size;++i)
			_data[i].~T();
		_GEN_VAR_MMAN.deallocate(_data);
		_data=nullptr;
		_capacity = 0;
		_size = 0;
	}
}
template <class T>
template <class CastType>
_ARG_NAME<CastType> && _ARG_NAME<T>::castMove()
{
	_capacity /= sizeof(CastType);
	_size /= sizeof(CastType);
	return std::move(*reinterpret_cast<_ARG_NAME<CastType>*>(this));
}
template <class T>
T _ARG_NAME<T>::popBack()
{
	assert(_size > 0);
	adjustCapacityForOneLess();
	return _data[--_size];
}
template <class T>
void _ARG_NAME<T>::pushBack(T t)
{
	if(adjustCapacityForOneMore())
	{
		++_size;
		new (_data + _size - 1) T(t);// 使用复制构造函数
	}
}
template <class T>
template <class ... Args>
void _ARG_NAME<T>::emplaceBack(Args && ... args)
{
	if(adjustCapacityForOneMore())
	{
		++_size;
		new (_data + _size -1) T(std::forward<Args>(args)...);
	}
}

template <class T>
void   _ARG_NAME<T>::clear()
{
	_size = 0;
	resizeCapacity(MINIMAL_CAPACITY);
}
template <class T>
void   _ARG_NAME<T>::erase(size_t i)
{
	if(i<_size && adjustCapacityForOneLess())
	{
		--_size;
		for(size_t j=i;j!=_size;++j)
			_data[j]=_data[j+1];
	}
}

template <class T>
_ARG_NAME<T>& _ARG_NAME<T>::append(const _ARG_NAME<T> &vec,size_t len)
{
	if(len > vec.size() )len=vec.size();
	for(size_t i=0;i!=len;++i)
		pushBack(vec[i]);
	return *this;
}
template <class T>
size_t  _ARG_NAME<T>::insert(size_t i,const T & t)
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
bool  _ARG_NAME<T>::resize(size_t newSize)
{
	size_t desiredCapacity = (newSize < MINIMAL_CAPACITY?MINIMAL_CAPACITY:newSize);
	if(resizeCapacity(desiredCapacity))
		_size=newSize;
	return (_size==newSize && _capacity==desiredCapacity);
}

template <class T>
bool  _ARG_NAME<T>::ensureEnoughCapacity(size_t capacity)
{
	if(capacity > _capacity)
		return resizeCapacity(capacity);
	return true;
}

template <class T>
bool  _ARG_NAME<T>::resizeCapacity(size_t capacity)
{
	if(this->_capacity == capacity)
		return true;
	T *newData=nullptr;
	if(_data)
		newData=_GEN_VAR_MMAN.reallocate(_data, capacity,_size);
	else
		newData=_GEN_VAR_MMAN.allocateAs<T*>(capacity*sizeof(T));
	if(!newData)
		return false;

	// update all relative fields
	_data = newData;
	this->_capacity = capacity;
	return true;
}

template <class T>
bool  _ARG_NAME<T>::adjustCapacityForOneMore()
{
	if(_size+1 > _capacity)
		return resizeCapacity(getIncrementalSize(_capacity));
	return true;
}

template <class T>
bool  _ARG_NAME<T>::adjustCapacityForOneLess()
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
Output & operator<<(Output &out,const _ARG_NAME<T> & vec)
{
	for(size_t i=0;i!=vec.size();++i)
		out << vec[i] << ' ';
	return out;
}

// 所有的宏清空
#undef _GEN_VAR_MMAN
#undef _GEN_VAR_MMAN_ARG
#undef _GEN_VAR_MMAN_ARG_COMMA
#undef _GEN_VAR_MMAN_ARG_PASS
#undef _GEN_VAR_MMAN_ARG_PASS_COMMA
