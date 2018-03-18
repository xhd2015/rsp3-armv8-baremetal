/*
 * TestMemoryManager.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEST_TESTMEMORYMANAGER_H_
#define INCLUDE_TEST_TESTMEMORYMANAGER_H_

#include <test/test_base.h>

class TestMemoryManager
//		: private MemoryChunk, private MemoryManager
{
public:
	TestMemoryManager()=default;
	static void run();
	bool memoryChunkMergeCorrectly();
	bool memoryChunkSpiltCorrectly();
	bool uncontiguousChunkMemoryAllocateCorrectly();
	bool allocateCorrectly();
	bool alignedAllocateCorrectly();
	bool deallocateCorrectly();
	bool reallocateSmallerCorrectly();
	bool reallocateInPlaceCollectCorrectly();
	bool reallocateOutOfPlaceMoveCorrectly();
	bool criticalConditionsStillCorrectly();
	bool nextChunkCorrectly();
};




#endif /* INCLUDE_TEST_TESTMEMORYMANAGER_H_ */
