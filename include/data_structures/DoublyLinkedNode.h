/*
 * DoublyLinkedNode.h
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDNODE_H_
#define INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDNODE_H_


#include <new>
#include <type_traits>
#include <programming/ReturnTypeSelector.h>
#include <programming/define_members.h>


template <class T>
class DoublyLinkedNode{
public:
	template <class...Args>
	DoublyLinkedNode(DoublyLinkedNode *next,DoublyLinkedNode *previous,Args && ... args);
	DEFINE_COPY_COSNTRUCTOR(DoublyLinkedNode)=delete;
	DEFINE_COPY_OPERATOR(DoublyLinkedNode)=delete;
	DEFINE_MOVE_CONSTRUCTOR(DoublyLinkedNode);
	DEFINE_MOVE_OPERATOR(DoublyLinkedNode);
	~DoublyLinkedNode();


	template <class...Args>
	void        data(Args && ... args);

	// 对于size <= sizeof(size_t)的简单类型，返回值即可
	// 但是用户可以选择对于值较小的类型仍然返回引用
	// 其他类型需要返回const引用
	template <bool IsRef=(sizeof(T)>sizeof(size_t))>
	typename ReturnTypeSelector<T,IsRef,false>::type   data();
	template <bool IsRef= (sizeof(T)>sizeof(size_t))>
	typename ReturnTypeSelector<T,IsRef,true>::type   data()const;

	DoublyLinkedNode* next();
	const DoublyLinkedNode* next() const;
	void next(DoublyLinkedNode* node);

	DoublyLinkedNode* previous();
	const DoublyLinkedNode* previous() const;
	void previous(DoublyLinkedNode* node);

	// no check
	void insertAfter(DoublyLinkedNode *node);
	// no check
	void insertBefore(DoublyLinkedNode *node);

	DoublyLinkedNode * removeAfter();
	DoublyLinkedNode * removeBefore();
	DoublyLinkedNode * removeSelf();

private:
	T				  _data;
	DoublyLinkedNode *_next;
	DoublyLinkedNode *_previous;
};



#include <templates_implementation/data_structures/DoublyLinkedNode.h>


#endif /* INCLUDE_DATA_STRUCTURES_DOUBLYLINKEDNODE_H_ */
