/*
 * main_debug_mman.cpp
 *
 *  Created on: Mar 6, 2018
 *      Author: 13774
 */

#include <iostream>
#include <memory/MemoryChunk.h>
#include <memory/MemoryManager.h>
#include <test/test_base.h>
#include <test/TestPidManager.h>
#include <test/TestDoublyLinkedList.h>
#include <test/TestMemoryManager.h>
#include <io/Output.h>

using namespace std;
int main()
{
	TestDoublyLinkedList::run();
	TestMemoryManager::run();
	TestPidManager::run();

	return 0;
}


