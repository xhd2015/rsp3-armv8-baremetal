/*
 * linkedlist.h
 *
 *  Created on: Jan 26, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_LINKEDLIST_H_
#define INCLUDE_DATA_STRUCTURES_LINKEDLIST_H_

#include <data_structures/ForwardNode.h>
#include <functional>

// 必须保证不变式： 当size>=1时， _head,_tail均不为空，size==0时，_head=_tail=nullptr
// 实现必须保证访问nullptr产生异常，程序不对nullptr访问做检查

template <class T>
class ForwardList{
public:
	using NodeType = ForwardNode<T>;
	using NextFunctor = std::function<NodeType*(NodeType *)>;
	using ConstNextFunctor = std::function<const NodeType*(const NodeType *)>;
	using TraverseFunctor = std::function<void(NodeType *)>;
	using ConstTraverseFunctor = std::function<void(const NodeType*)>;

	ForwardList();
	DEFINE_COPY_COSNTRUCTOR(ForwardList)=delete;
	DEFINE_COPY_OPERATOR(ForwardList)=delete;
	DEFINE_MOVE_CONSTRUCTOR(ForwardList);
	DEFINE_MOVE_OPERATOR(ForwardList);
	~ForwardList();

	NodeType *head();
	const NodeType *head()const;

	NodeType *tail();
	const NodeType *tail()const;

	void traverse(TraverseFunctor func,NextFunctor nextFunc);
	void traverse(ConstTraverseFunctor func,ConstNextFunctor nextFunc)const;

	template <class...Args>
	NodeType*    insertBeforeHead(Args && ... args);
	// 必须保证head不为nullptr
	void    insertBeforeHead(NodeType *head);
	template <class...Args>
	NodeType*    insertAfterTail(Args && ... args);
	// 必须保证tail不为nullptr
	void    insertAfterTail(NodeType *tail);

	// unchecked, 必须保证表不为空，否则可能产生错误
	NodeType*    removeHead();
	NodeType*    removeTail();

	size_t       size()const;
	bool		 empty()const;

private:
	NodeType *_head;
	NodeType *_tail;
};

#include <templates_implementation/data_structures/ForwardList.h>


#endif /* INCLUDE_DATA_STRUCTURES_FORWARDLIST_H_ */
