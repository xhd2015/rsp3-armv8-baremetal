/*
 * testMemoryManager.cpp
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */


#include <MemoryManager.h>
#include <mem_config.h>
#include <printk.h>
#include <IntegerFormatter.h>
#include <test/test_base.h>
#include <test/TestMemoryManager.h>



bool TestMemoryManager::memoryChunkMergeCorrectly()
{
	char base[1024];
	size_t sizes[]={100,7,5,10};

	MemoryChunk *baseChunk = reinterpret_cast<MemoryChunk*>(base);
	baseChunk->setAllocated(false);
	baseChunk->setNextBaseFromEnd(0);
	baseChunk->setSize(sizes[0]);
	baseChunk->setNextValidChunkOffset(0);
	baseChunk->setEnd(false);
	MemoryChunk *chunk2 = reinterpret_cast<MemoryChunk*>(base + sizeof(MemoryChunk)+baseChunk->getSize() + baseChunk->getNextBaseFromEnd());
	chunk2->setNextValidChunkOffset(sizes[1]);

	MemoryChunk *chunk3 = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(chunk2) + sizes[1]);
	chunk3->setNextValidChunkOffset(sizes[2]);

	MemoryChunk *chunk4 = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(chunk3) + sizes[2]);
	chunk4->setNextValidChunkOffset(0);
	chunk4->setAllocated(false);
	chunk4->setNextBaseFromEnd(0);
	chunk4->setSize(sizes[3]);
	chunk4->setEnd(false);

	MemoryChunk *chunk5 = reinterpret_cast<MemoryChunk*>(chunk4->getDataEnd()); // end Chunk
	chunk5->setNextValidChunkOffset(0);
	chunk5->setEnd(true);

	size_t sumSize=0;
	for(auto i:sizes)
		sumSize += i;
	sumSize += sizeof(MemoryChunk);

	baseChunk->mergeTrailingsUnallocated();
	EXPECT_EXPR_EQUAL(baseChunk->getSize(), sumSize);

	return baseChunk->getSize() == sumSize;
}

bool TestMemoryManager::uncontiguousChunkMemoryAllocateCorrectly()
{
	char base[1024];// [0,127]:RAM  [128:511]:hole [512:700]:RAM [700:900]:hole [901:1024]:RAM


	MemoryChunk *baseChunk = reinterpret_cast<MemoryChunk*>(base);
	baseChunk->setSize(1024 - 1 - sizeof(MemoryChunk));
	baseChunk->setNextBaseFromEnd(0);
	baseChunk->setNextValidChunkOffset(0);
	baseChunk->setAllocated(false);
	baseChunk->setEnd(false);

	MemoryChunk *endChunk = reinterpret_cast<MemoryChunk*>(baseChunk->getDataEnd());
	endChunk->setEnd(true);

	MemoryManager man(base,1024,false);
	MemoryManager man2(base,1024,true);

	return true;
}

bool TestMemoryManager::allocateCorrectly()
{
	char base[1024];

	MemoryChunk *baseChunk = reinterpret_cast<MemoryChunk*>(base);
	baseChunk->setSize(1024 - 1 - sizeof(MemoryChunk));
	baseChunk->setNextBaseFromEnd(0);
	baseChunk->setNextValidChunkOffset(0);
	baseChunk->setAllocated(false);
	baseChunk->setEnd(false);

	MemoryChunk *endChunk = reinterpret_cast<MemoryChunk*>(baseChunk->getDataEnd());
	endChunk->setEnd(true);

	MemoryManager man(base,1024,false);

	auto p1=man.allocateAs<char*>(500);
	auto p2=man.allocateAs<char*>(100);
	auto p3=man.allocateAs<char*>(30);
	auto p4=man.allocateAs<char*>(400);
	auto p5=man.allocateAs<char*>(1000);
	kout << Hex(reinterpret_cast<uint64_t>(p1)) << ","
			<< Hex(reinterpret_cast<uint64_t>(p2)) << ","
			<< Hex(reinterpret_cast<uint64_t>(p3)) << ","
			<< Hex(reinterpret_cast<uint64_t>(p4)) << ","
			<< Hex(reinterpret_cast<uint64_t>(p5)) << "\n";

	return p4==nullptr && p5==nullptr;
}
bool TestMemoryManager::deallocateCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	auto p1=man.allocateAs<char*>(100);
	auto chunk1=reinterpret_cast<MemoryChunk*>(p1- sizeof(MemoryChunk));
	bool res = (chunk1->isAllocated()==true && chunk1->getSize()==100);
	man.deallocate(p1);

	res &= chunk1->isAllocated()==false;
	return res;

}


bool TestMemoryManager::reallocateSmallerCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	auto p1=man.allocateAs<char*>(100);
	MemoryChunk *p1Chunk = reinterpret_cast<MemoryChunk*>(p1 - sizeof(MemoryChunk));


	auto rp1 = man.reallocateAs<char*>(p1, 80);
	return (rp1 == p1 && p1Chunk->getSize()==80);
}
bool TestMemoryManager::reallocateInPlaceCollectCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	auto p1=man.allocateAs<char*>(100);
	MemoryChunk *p1Chunk = reinterpret_cast<MemoryChunk*>(p1 - sizeof(MemoryChunk));
	MemoryChunk *freeChunk1 = reinterpret_cast<MemoryChunk*>(p1 + 100);
	freeChunk1->moveAhead(100);//+100


	auto rp1 = man.reallocateAs<char*>(p1, 200);

	return (rp1==p1 && p1Chunk->getSize()==200);
}

bool TestMemoryManager::reallocateOutOfPlaceMoveCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	auto p1=man.allocateAs<char*>(100);
	MemoryChunk *p1Chunk = reinterpret_cast<MemoryChunk*>(p1 - sizeof(MemoryChunk));
	auto p2=man.allocateAs<char*>(100);
	(void)p2;

	p1[0]='A';
	p1[1]='b';

	auto rp1 = man.reallocateAs<char*>(p1, 150);
	return p1Chunk->isAllocated()==false && reinterpret_cast<MemoryChunk*>(rp1-sizeof(MemoryChunk))->isAllocated()==true&& rp1[0]=='A' && rp1[1]=='b' ;


}


bool TestMemoryManager::nextChunkCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	MemoryChunk * baseChunk = reinterpret_cast<MemoryChunk*>(base);
	return ( baseChunk->getNext()->isEnd() && baseChunk->getNext()->getNext()==nullptr);
}
