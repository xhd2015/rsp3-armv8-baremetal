/*
 * TestDoublyLinkedList.cpp
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */



#include <utility>
#include <test/TestDoublyLinkedList.h>
#include <io/Output.h>
#include <test/test_base.h>

void TestDoublyLinkedList::run()
{
	TestDoublyLinkedList test;
	kout << INFO << "start TestDoublyLinkedList\n";
	RUN_TEST(test.addAndRemoveCorrectly);
	RUN_TEST(test.removeNodeCorrectly);
	RUN_TEST(test.canBeAppliedStdMove);
	RUN_TEST(test.insertAfterTailCorrectly);
	RUN_TEST(test.insertBeforeHeadCorrectly);
	RUN_TEST(test.keepsCorrectlyAfterClear);
	kout << INFO << "end TestDoublyLinkedList\n";
}

inline bool TestDoublyLinkedList::addAndRemoveCorrectly() {
	DoublyLinkedList<size_t> list;
	list.insertTail(1);
	auto p1 = list.head();
	auto p2 = list.tail();
	bool res = (p1==p2 && p1->data()==1);
	res &= (list.size()==1);

	for(size_t i=0;i!=5;++i)
		list.insertTail(i);
	res &= (list.size()==6);
	for(size_t i=0;i!=5;++i)
	{
		auto p = list.removeTail();
		res &= (p->data() == 4 - i);
		delete p;
	}

	delete list.removeHead();

	res &= (list.head()==list.tail()  && list.head()==nullptr);
	return res;
}

inline bool TestDoublyLinkedList::removeNodeCorrectly() {
	DoublyLinkedList<size_t> list;
	list.insertTail(0);
	list.insertTail(2);

	auto node = list.head()->next();

	list.insertNodeBefore(node, 1);

	bool res=true;
	for(size_t i=0;i!=3;++i)
	{
		res &= (list.removeHead()->data()==i);
	}
	return res;
}

inline bool TestDoublyLinkedList::canBeAppliedStdMove() {
	DoublyLinkedList<size_t> list1;
	for(size_t i=0;i!=10;++i)
		list1.insertHead(i);
	bool res = (list1.size()==10);
	DoublyLinkedList<size_t> list2(std::move(list1));
	res &= (list1.head()==nullptr && list1.tail()==nullptr && list1.size()==0);
	res &= (list2.size()==10);
	return res;
}

inline bool TestDoublyLinkedList::insertBeforeHeadCorrectly() {
	DoublyLinkedList<size_t> list;
	for(size_t i=0;i!=10;++i)
		list.insertHead(i);
	bool res=true;
	for(size_t i=0;i!=10;++i)
		res &= (list.removeTail()->data()==i);
	return res;
}

inline bool TestDoublyLinkedList::insertAfterTailCorrectly() {
	DoublyLinkedList<size_t> list;
	for(size_t i=0;i!=10;++i)
		list.insertTail(i);
	bool res=true;
	for(size_t i=0;i!=10;++i)
		res &= (list.removeHead()->data()==i);
	return res;
}

inline bool TestDoublyLinkedList::keepsCorrectlyAfterClear() {
	DoublyLinkedList<size_t> list;
	for(size_t i=0;i!=10;++i)
		list.insertTail(i);
	auto h = list.head();
	bool res = (h->data()==0);
	list.clear();

	res &= (list.size()==0);
	res &= (list.head()==nullptr && list.tail()==nullptr);
	return res;
}
