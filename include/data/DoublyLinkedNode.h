/*
 * DoublyLinkedNode.h
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDNODE_H_
#define INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDNODE_H_


#include "DoublyLinkedNode_tempdecl.h"
#include <utility>

template <class T>
template <class... Args>
DoublyLinkedNode<T>::DoublyLinkedNode(DoublyLinkedNode *next,DoublyLinkedNode *previous,Args && ... args)
	:
	_data(std::forward<Args>(args)...),
	_next(next),
	_previous(previous)
{}

template <class T>
DoublyLinkedNode<T>::DoublyLinkedNode(DoublyLinkedNode &&rhs)
	:_data(std::move(rhs._data)),_next(rhs._next),_previous(rhs._next)
{
	rhs._next = rhs._previous = nullptr;
}
template <class T>
DoublyLinkedNode<T> & DoublyLinkedNode<T>::operator=(DoublyLinkedNode &&rhs)
{
	_data = std::move(rhs._data);
	_next = rhs._next;
	_previous = rhs._previous;
	rhs._next = rhs._previous = nullptr;
	return *this;
}
template <class T>
DoublyLinkedNode<T>::~DoublyLinkedNode()
{
	_next=_previous=nullptr;
}



template <class T>
template <class... Args>
void        DoublyLinkedNode<T>::data(Args && ... args)
{
	new (&_data) T(std::forward<Args>(args)...);
}

template <class T>
template <bool IsRef>
typename ReturnTypeSelector<T,IsRef,false>::type   DoublyLinkedNode<T>::data()
{
	return _data;
}

template <class T>
template <bool IsRef>
typename ReturnTypeSelector<T,IsRef,true>::type   DoublyLinkedNode<T>::data()const
{
	return _data;
}

template <class T>
inline DoublyLinkedNode<T>* DoublyLinkedNode<T>::next() {
	return _next;
}

template <class T>
inline const DoublyLinkedNode<T>* DoublyLinkedNode<T>::next() const {
	return _next;
}

template <class T>
inline void DoublyLinkedNode<T>::next(DoublyLinkedNode* node) {
	_next = node;
}
template <class T>
inline DoublyLinkedNode<T>* DoublyLinkedNode<T>::previous() {
	return _previous;
}


template <class T>
inline const DoublyLinkedNode<T>* DoublyLinkedNode<T>::previous() const {
	return _previous;
}

template <class T>
inline void DoublyLinkedNode<T>::previous(DoublyLinkedNode* node) {
	_previous = node;
}
template<class T>
inline void DoublyLinkedNode<T>::insertAfter(DoublyLinkedNode* node) {
	node->previous(this);
	node->next(this->next());
	this->next(node);
	if(auto tmp = node->next())
		tmp->previous(node);
}


template<class T>
inline void DoublyLinkedNode<T>::insertBefore(DoublyLinkedNode* node) {
	node->next(this);
	node->previous(this->previous());
	this->previous(node);
	if(auto tmp = node->previous())
		tmp->next(node);
}
template<class T>
inline DoublyLinkedNode<T>* DoublyLinkedNode<T>:: removeAfter()
{
	auto node = this->next();
	if(node)
	{
		this->next(node->next());
		node->next(nullptr);
		node->previous(nullptr);
		if(auto tmp = this->next())
			tmp->previous(this);
	}
	return node;
}
template<class T>
inline DoublyLinkedNode<T>* DoublyLinkedNode<T>::removeBefore()
{
	auto node = this->previous();
	if(node)
	{
		this->previous(node->previous());
		node->previous(nullptr);
		node->next(nullptr);
		if(auto tmp = this->previous())
			tmp->next(this);
	}
	return node;
}
template<class T>
inline DoublyLinkedNode<T>* DoublyLinkedNode<T>::removeSelf()
{
	if(_previous)
		_previous->next(_next);
	if(_next)
		_next->previous(_previous);
	_next=nullptr;
	_previous=nullptr;
	return this;
}



#endif /* INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDNODE_H_ */
