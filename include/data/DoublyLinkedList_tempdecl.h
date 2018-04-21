/*
 * DoublyLinkedList_tempdecl.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_DOUBLYLINKEDLIST_TEMPDECL_H_
#define INCLUDE_DATA_DOUBLYLINKEDLIST_TEMPDECL_H_



#include <data/forward_decl.h>
#include <data/DoublyLinkedNode_tempdecl.h>
#include <programming/ReturnTypeSelector.h>
#include <functional>
#include <programming/define_members.h>

// 不变式： 任何时刻， 如果含有至少一个元素, 则 _head,_tail必不为nullptr; 如果不含元素，则_head,_tail必须同时为空
// 保证: _head->previous=nullptr, _tail->next=nullptr
template <class T>
class DoublyLinkedList{
public:
	using NodeType = DoublyLinkedNode<T>;
	using NextFunctor = std::function<NodeType*(NodeType *)>;
	using ConstNextFunctor = std::function<const NodeType*(const NodeType *)>;
	using TraverseFunctor = std::function<void(NodeType *)>;
	using ConstTraverseFunctor = std::function<void(const NodeType*)>;

	DoublyLinkedList();
	// pointer members requires copy constructor/operator --> effective c++
	DEFINE_COPY_CONSTRUCTOR(DoublyLinkedList)=delete;
	DEFINE_COPY_OPERATOR(DoublyLinkedList)=delete;
	DEFINE_MOVE_CONSTRUCTOR(DoublyLinkedList);
	DEFINE_MOVE_OPERATOR(DoublyLinkedList);
	~DoublyLinkedList();

	NodeType * head();
	const NodeType * head()const;

	NodeType * tail();
	const NodeType *tail()const;

	void traverse(TraverseFunctor func,NextFunctor nextFunc);
	void traverse(ConstTraverseFunctor func,ConstNextFunctor nextFunc)const;

	template <class...Args>
	NodeType*    insertHead(Args && ... args);
	void insertHead(NodeType *node);

	template <class...Args>
	NodeType*    insertTail(Args && ... args);
	void insertTail(NodeType *node);

	// 要求: atnode必须是list的一部分。因此也就意味着_head,_tail不为nullptr
	void insertNodeAfter(NodeType *atnode,NodeType *insnode);
	template <class...Args>
	NodeType* insertNodeAfter(NodeType *atnode,Args && ...args);

	void insertNodeBefore(NodeType *atnode,NodeType *insnode);
	template <class...Args>
	NodeType* insertNodeBefore(NodeType *atnode,Args && ...args);

	// no check: 不检查 head,tail或node必须不为nullptr且在list中才能调用
	NodeType* removeHead();
	NodeType* removeTail();
	NodeType* removeNode(NodeType *node);

	void    clear();
	size_t size()const;
	bool   empty()const;

private:
	NodeType *_head;
	NodeType *_tail;
};




#endif /* INCLUDE_DATA_DOUBLYLINKEDLIST_TEMPDECL_H_ */
