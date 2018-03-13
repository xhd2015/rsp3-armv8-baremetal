/*
 * main_debug_mman.cpp
 *
 *  Created on: Mar 6, 2018
 *      Author: 13774
 */

#include <iostream>
#include <memory/MemoryChunk.h>
#include <memory/MemoryManager.h>
#include <test/TestMemoryManager.h>
#include <printk.h>
#include <kernel.h>

using namespace std;
int main()
{
	int  size=1024;
	char *base = new char[size];
	MemoryManager mman(base,size);

	char *chr1 = mman.allocateAs<char*>(100);
	char *chr2 = mman.allocateAs<char*>(50,40);


	cout << hex;
	cout << reinterpret_cast<uint64_t>(base) << "\n";
	cout << reinterpret_cast<uint64_t>(chr1) << "\n";
	cout << reinterpret_cast<uint64_t>(chr2) << "\n";

	kout << INFO << "Run test of MemoryManager\n";
	TestMemoryManager tmm;
	RUN_TEST(tmm.memoryChunkMergeCorrectly);
	RUN_TEST(tmm.allocateCorrectly);
	RUN_TEST(tmm.nextChunkCorrectly);
	RUN_TEST(tmm.deallocateCorrectly);
	RUN_TEST(tmm.reallocateInPlaceCollectCorrectly);
	RUN_TEST(tmm.reallocateOutOfPlaceMoveCorrectly);
	RUN_TEST(tmm.reallocateSmallerCorrectly);

	kout << INFO << "All test ended\n";

	return 0;
}


