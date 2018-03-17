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
#include <io/Output.h>

using namespace std;
int main()
{
	kout << INFO << "Run test of PidManager\n";
	TestPidManager test;
	RUN_TEST(test.clearAllKeepsInvalidAllocated);
	RUN_TEST(test.allocateInvalidPidAlwaysFailed);
	RUN_TEST(test.allocateReturnContinousPids);
	RUN_TEST(test.deallocatePidSuccessfully);
	kout << INFO << "All test ended\n";

	return 0;
}


