/*
 * linkedlist.h
 *
 *  Created on: Jan 26, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_LINKEDLIST_H_
#define INCLUDE_DATA_STRUCTURES_LINKEDLIST_H_

#include "ForwardList_tempdecl.h"

#include <memory/MemoryManager.h>


template<class T>
inline ForwardList<T>::ForwardList()
 :_head(nullptr),
  _tail(nullptr)
{
}

template <class T>
ForwardList<T>::ForwardList(ForwardList<T> &&rhs)
	:_head(rhs._head),_tail(rhs._tail)
{
	rhs._head = rhs._tail = nullptr;
}
template <class T>
ForwardList<T> & ForwardList<T>::operator=(ForwardList &&rhs)
{
	_head = rhs._head;
	_tail = rhs._tail;
	rhs._head = rhs._tail = nullptr;
	return *this;
}

template<class T>
ForwardList<T>::~ForwardList()
{
	if(_head && _tail)
	{
		auto it=_head;
		while(it)
		{
			auto temp = it->next();
			delete it; //after this, it->next = it->previous = nullptr
			it=temp;
		}
		_head = _tail = nullptr;
	}
}
template<class T>
inline typename ForwardList<T>::NodeType* ForwardList<T>::head() {
	return _head;
}

template<class T>
inline const typename ForwardList<T>::NodeType* ForwardList<T>::head() const {
	return _head;
}

template<class T>
inline typename ForwardList<T>::NodeType* ForwardList<T>::tail() {
	return _tail;
}

template<class T>
inline const typename ForwardList<T>::NodeType* ForwardList<T>::tail() const {
	return _tail;
}

template<class T>
inline void ForwardList<T>::traverse(TraverseFunctor func,NextFunctor nextFunc) {
	auto it=_head;
	while(it)
	{
		func(it);
		it=nextFunc(it);
	}
}

template<class T>
inline void ForwardList<T>::traverse(ConstTraverseFunctor func,ConstNextFunctor nextFunc) const {
	auto it=_head;
	while(it)
	{
		func(it);
		it=nextFunc(it);
	}
}


template <class T>
template <class...Args>
inline typename ForwardList<T>::NodeType*    ForwardList<T>::insertBeforeHead(Args && ... args)
{
	auto node = new NodeType(nullptr,std::forward<Args>(args)...);
	if(node)
		this->insertBeforeHead(node);
	return node;
}

template<class T>
inline void ForwardList<T>::insertBeforeHead(NodeType* head)
{
	if(!_head)
		_head=_tail=head;
	else
	{
		head->insertNext(_head);
		_head = head;
	}
}

template<class T>
inline void ForwardList<T>::insertAfterTail(NodeType* tail) {

	if(!_tail)//空
		_head=_tail=tail;
	else
	{
		_tail->insertNext(tail);
		_tail = tail;
	}
}
template <class T>
template <class...Args>
inline typename ForwardList<T>::NodeType*    ForwardList<T>::insertAfterTail(Args && ... args)
{
	auto node = new NodeType(nullptr,std::forward<Args>(args)...);
	if(node)
		this->insertAfterTail(node);
	return node;
}


template<class T>
inline typename ForwardList<T>::NodeType* ForwardList<T>::removeHead() {
	// _head!=nullptr
	auto tmp = _head;
	_head = tmp->next();
	tmp->next(nullptr);
	if(!_head)
		_tail=nullptr;
	return tmp;
}

template<class T>
inline typename ForwardList<T>::NodeType* ForwardList<T>::removeTail() {
	// _tail != nullptr
	if(_head==_tail)
	{
		auto temp=_head;
		_head=_tail=nullptr;
		return temp;
	}
	auto it=_head,temp=nullptr;
	while((temp=it->next())!=_tail)
		it=temp;
	// _head will not be changed
	temp = it->removeNext();
	_tail = it;
	return temp;
}
template<class T>
inline size_t       ForwardList<T>::size()const
{
	size_t n=0;
	auto it=_head;
	while(it)
	{
		++n;
		it=it->next();
	}
	return n;
}
template<class T>
inline bool       ForwardList<T>::empty()const
{
	return _head==nullptr;
}




#endif /* INCLUDE_DATA_STRUCTURES_FORWARDLIST_H_ */
