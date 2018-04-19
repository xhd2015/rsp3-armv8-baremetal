/*
 * DoublyLinkedNode_tmpdecl.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_DOUBLYLINKEDNODE_TEMPDECL_H_
#define INCLUDE_DATA_DOUBLYLINKEDNODE_TEMPDECL_H_



#include <new>
#include <type_traits>
#include <programming/ReturnTypeSelector.h>
#include <programming/define_members.h>


template <class T>
class DoublyLinkedNode{
public:
	template <class...Args>
	DoublyLinkedNode(DoublyLinkedNode *next,DoublyLinkedNode *previous,Args && ... args);
	DEFINE_COPY_CONSTRUCTOR(DoublyLinkedNode)=delete;
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





#endif /* INCLUDE_DATA_DOUBLYLINKEDNODE_TEMPDECL_H_ */
