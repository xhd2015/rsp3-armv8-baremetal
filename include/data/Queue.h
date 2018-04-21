/*
 * Queue.h
 *
 *  Created on: Apr 12, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_QUEUE_H_
#define INCLUDE_DATA_STRUCTURES_QUEUE_H_

#include "Queue_tempdecl.h"
#include <memory/MemoryManager.h>
#include <utility>

template<class T>
Queue<T>::Queue(size_t len)
	:_data(new (m_abort) T[len]),
	 _len(len),
	 _curLen(0),
	 _indexAdd(0),
	 _indexRemove(0)
{ }

template <class T>
Queue<T>::Queue(Queue &&rhs)
:_data(rhs._data),
 _len(rhs._len),
 _curLen(rhs._curLen),
 _indexAdd(rhs._indexAdd),
 _indexRemove(rhs._indexRemove)
{
	rhs._data=nullptr;
}
template <class T>
Queue<T>& Queue<T>::operator=(Queue &&rhs)
{
	_data =rhs._data;
	_len =rhs._len;
	_curLen =rhs._curLen;
	_indexAdd = rhs._indexAdd;
	_indexRemove = rhs._indexRemove;
	rhs._data=nullptr;
	return *this;
}
template <class T>
Queue<T>::~Queue()
{
	if(_data)
	{
		delete [] _data;
		_data=nullptr;
	}
}
template<typename T>
T Queue<T>::remove()
{
	assert(!empty());
	T &res=_data[_indexRemove++];
	--_curLen;
	if(_indexRemove==_len)
		_indexRemove=0;
	return std::move(res);
}
template <typename T>
template <class ... Args>
void Queue<T>::emplacePut(Args && ... args)
{
	assert(!full());
	new (_data + (_indexAdd++) ) T(std::forward<Args>(args)...);
	++_curLen;
	if(_indexAdd==_len)
		_indexAdd=0;
}

#endif /* INCLUDE_DATA_STRUCTURES_QUEUE_H_ */
