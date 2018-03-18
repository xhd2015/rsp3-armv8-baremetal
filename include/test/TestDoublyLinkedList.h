/*
 * TestDoublyLinkedList.h
 *
 *  Created on: Mar 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEST_TESTDOUBLYLINKEDLIST_H_
#define INCLUDE_TEST_TESTDOUBLYLINKEDLIST_H_

#include <data_structures/DoublyLinkedList.h>

class TestDoublyLinkedList{
public:
	static void run();
	bool addAndRemoveCorrectly();
	bool removeNodeCorrectly();
	bool canBeAppliedStdMove();
	bool insertBeforeHeadCorrectly();
	bool insertAfterTailCorrectly();
	bool keepsCorrectlyAfterClear();
};


#endif /* INCLUDE_TEST_TESTDOUBLYLINKEDLIST_H_ */
