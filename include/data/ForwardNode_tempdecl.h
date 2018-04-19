/*
 * ForwardNode_tempdecl.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_FORWARDNODE_TEMPDECL_H_
#define INCLUDE_DATA_FORWARDNODE_TEMPDECL_H_


#include <def.h>
#include <programming/ReturnTypeSelector.h>
#include <programming/define_members.h>

template <class T>
class ForwardNode{
public:
	template <class ... Args>
	ForwardNode(ForwardNode *next,Args && ... args);
	DEFINE_COPY_CONSTRUCTOR(ForwardNode)=delete;
	DEFINE_COPY_OPERATOR(ForwardNode)=delete;
	DEFINE_MOVE_CONSTRUCTOR(ForwardNode);
	DEFINE_MOVE_OPERATOR(ForwardNode);
	~ForwardNode();

	template <class ... Args>
	void data(Args &&... args);

	template <bool IsRef=(sizeof(T)>sizeof(size_t))>
	typename ReturnTypeSelector<T,IsRef,false>::type   data();
	template <bool IsRef= (sizeof(T)>sizeof(size_t))>
	typename ReturnTypeSelector<T,IsRef,true>::type   data()const;

	// 不检查 node是否为空
	void         next(ForwardNode *node);
	ForwardNode *next();
	const ForwardNode *next()const;


	ForwardNode *last();
	const ForwardNode *last()const;


	ForwardNode *ahead(size_t n);
	const ForwardNode *ahead(size_t n)const;

	void        insertAfter(ForwardNode *node);
	ForwardNode *removeAfter();
private:
		T           _data;
		ForwardNode *_next;
};



#endif /* INCLUDE_DATA_FORWARDNODE_TEMPDECL_H_ */
