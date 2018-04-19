/*
 * ForwardNode.h
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_FORWARDNODE_H_
#define INCLUDE_DATA_STRUCTURES_FORWARDNODE_H_


#include "ForwardNode_tempdecl.h"
#include <def.h>
#include <utility>

template <class T>
template<class ... Args>
ForwardNode<T>::ForwardNode(ForwardNode* next, Args&&... args)
	:_data(std::forward<Args>(args)...),_next(next)
{
}
template <class T>
ForwardNode<T>::ForwardNode(ForwardNode &&rhs)
	:_data(std::move(rhs._data)),_next(rhs._next)
{
	rhs._next = nullptr;
}
template <class T>
ForwardNode<T> & ForwardNode<T>::operator=(ForwardNode &&rhs)
{
	_data = std::move(rhs._data);
	_next = rhs._next;
	rhs._next = nullptr;
	return *this;
}
template <class T>
ForwardNode<T>::~ForwardNode()
{
	_next=nullptr;
}

template <class T>
template<class ... Args>
inline void ForwardNode<T>::data(Args&&... args)
{
	new (&_data) T(std::forward<Args>(args)...);
}

template <class T>
template <bool IsRef>
typename ReturnTypeSelector<T,IsRef,false>::type   ForwardNode<T>::data()
{
	return _data;
}

template <class T>
template <bool IsRef>
typename ReturnTypeSelector<T,IsRef,true>::type   ForwardNode<T>::data()const
{
	return _data;
}

template<class T>
inline void ForwardNode<T>::next(ForwardNode* node)
{
	_next = node;
}

template<class T>
inline ForwardNode<T>* ForwardNode<T>::next()
{
	return _next;
}

template<class T>
inline const ForwardNode<T>* ForwardNode<T>::next() const
{
	return _next;
}


template<class T>
inline ForwardNode<T>* ForwardNode<T>::last() {
//	return const_cast<ForwardNode *>(reinterpret_cast<const ForwardNode*>(this)->last());
	return CALL_CONST_EQUIV(ForwardNode<T>,ForwardNode<T>*,last());
}

template<class T>
inline const ForwardNode<T>* ForwardNode<T>::last() const {
	auto it=this;
	while(auto itnext= it->_next)
		it=itnext;
	return it;
}

template<class T>
inline ForwardNode<T>* ForwardNode<T>::ahead(size_t n) {
	return CALL_CONST_EQUIV(ForwardNode<T>,ForwardNode<T>*,ahead(n));
}

template<class T>
inline const ForwardNode<T>* ForwardNode<T>::ahead(size_t n) const {
	auto it=this;
	while(n>0 && it)
	{
		--n;
		it=it->_next;
	}
	return it;
}

template<class T>
inline void ForwardNode<T>::insertAfter(ForwardNode* node) {
	node->next(this->next());
	this->next(node);
}
template <class T>
inline ForwardNode<T>*	ForwardNode<T>::removeAfter()
{
	auto res=this->next();
	this->next(res->next());
	res->next(nullptr);
	return res;

}





#endif /* INCLUDE_DATA_STRUCTURES_FORWARDNODE_H_ */
