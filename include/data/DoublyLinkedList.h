/*
 * DoublyLinkedList.h
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDLIST_H_
#define INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDLIST_H_

// DOCME the template seperate inclusions to two spaces: declaration VS definition
#include "DoublyLinkedList_tempdecl.h"
#include <data/DoublyLinkedNode.h>


template<class T>
DoublyLinkedList<T>::DoublyLinkedList()
	:_head(nullptr), _tail(nullptr)
{
}
template <class T>
DoublyLinkedList<T>::DoublyLinkedList(DoublyLinkedList &&rhs)
	:_head(rhs._head),_tail(rhs._tail)
{
	rhs._head = rhs._tail = nullptr;
}
template <class T>
DoublyLinkedList<T> & DoublyLinkedList<T>::operator=(DoublyLinkedList &&rhs)
{
	_head = rhs._head;
	_tail = rhs._tail;
	rhs._head = rhs._tail = nullptr;
	return *this;
}
// 必须考虑已经经过移动的状态和已经析构的状态， _head=_tail 在移动过后就是nullptr
template<class T>
DoublyLinkedList<T>::~DoublyLinkedList()
{
	clear();
}

template<class T>
inline typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::head() {
	return _head;
}

template<class T>
inline const typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::head() const {
	return _head;
}

template<class T>
inline typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::tail() {
	return _tail;
}

template<class T>
inline const typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::tail() const {
	return _tail;
}

template<class T>
inline void DoublyLinkedList<T>::traverse(TraverseFunctor func,NextFunctor nextFunc) {
	auto it=_head;
	while(it)
	{
		func(it);
		it = nextFunc(it);
	}
}

template<class T>
inline void DoublyLinkedList<T>::traverse(ConstTraverseFunctor func,ConstNextFunctor nextFunc) const {
	auto it=_head;
	while(it)
	{
		func(it);
		it = nextFunc(it);
	}
}
template <class T>
template <class...Args>
inline typename DoublyLinkedList<T>::NodeType*    DoublyLinkedList<T>::insertHead(Args && ... args)
{
	auto node = new NodeType(nullptr,nullptr,std::forward<Args>(args)...);
	if(node)
		this->insertHead(node);
	return node;
}

template<class T>
inline void DoublyLinkedList<T>::insertHead(NodeType *node) {
	if(_head)
	{
		_head->insertBefore(node);
		_head = node;
	}else{
		_head = _tail = node;
		_head->previous(nullptr);
		_tail->next(nullptr);
	}
}

template <class T>
template <class...Args>
inline typename DoublyLinkedList<T>::NodeType*    DoublyLinkedList<T>::insertTail(Args && ... args)
{
	auto node = new NodeType(nullptr,nullptr,std::forward<Args>(args)...);
	if(node)
		this->insertTail(node);
	return node;
}

template<class T>
inline void DoublyLinkedList<T>::insertTail(NodeType *node) {
	if( _tail )
	{
		_tail->insertAfter(node);
		_tail = node;
	}else{
		_tail = _head = node;
		_tail->next(nullptr);
		_head->previous(nullptr);
	}
}

template<class T>
inline void DoublyLinkedList<T>::insertNodeAfter(NodeType *atnode,NodeType *insnode)
{
	atnode->insertAfter(insnode);
	if(atnode==_tail)
		_tail = insnode;
}

template<class T>
template <class...Args>
inline typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::insertNodeAfter(NodeType *atnode,Args && ...args)
{
	auto node=new NodeType(std::forward<Args>(args)...);
	if(node)
		insertNodeAfter(atnode, node);
	return node;
}

template<class T>
inline void DoublyLinkedList<T>::insertNodeBefore(NodeType *atnode,NodeType *insnode)
{
	atnode->insertBefore(insnode);
	if(atnode==_head)
		_head = insnode;
}

template<class T>
template <class...Args>
inline typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::insertNodeBefore(NodeType *atnode,Args && ...args)
{
	auto node=new NodeType(nullptr,nullptr,std::forward<Args>(args)...);
	if(node)
		insertNodeBefore(atnode, node);
	return node;
}

template<class T>
inline typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::removeHead()
{
	// _head!=nullptr
	if(auto next = _head->next()) // head has next
	{
		_head = next;
		return next->removeBefore();
	}else{ // head has no next --> only head,so _tail==_head
		auto temp = _head;
		_head = _tail = nullptr;
		return temp;
	}
}
template<class T>
inline typename DoublyLinkedList<T>::NodeType* DoublyLinkedList<T>::removeTail()
{
	// _tail != nullptr
	if(auto previous = _tail->previous()) // tail has previos
	{
		_tail = previous;
		return _tail->removeAfter();
	}else{ // _tail has no previous --> only tail,so _tail==_head
		auto temp = _tail;
		_head = _tail = nullptr;
		return temp;
	}
}

template<class T>
inline typename DoublyLinkedList<T>::NodeType*  DoublyLinkedList<T>::removeNode(NodeType *node)
{
	if(node==_head)
		return removeHead();
	else if(node==_tail)
		return removeTail();
	else
		return node->removeSelf();
}
template <class T>
inline void    DoublyLinkedList<T>::clear()
{
	if(_head)
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
inline size_t DoublyLinkedList<T>::size() const {
	size_t n=0;
	auto it=_head;
	while(it)
	{
		++n;
		it = it->next();
	}
	return n;
}

template<class T>
inline bool DoublyLinkedList<T>::empty()const
{
	return _head==nullptr;
}


#endif /* INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDLIST_H_ */
