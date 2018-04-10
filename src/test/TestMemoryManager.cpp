/*
#include <io/IntegerFormatter.h>

 * testMemoryManager.cpp
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */


#include <memory/MemoryManager.h>
#include <test/test_base.h>
#include <test/TestMemoryManager.h>


void TestMemoryManager::run()
{
	kout << INFO << "start TestMemoryManager\n";
	TestMemoryManager tmm;
	RUN_TEST(tmm.memoryChunkMergeCorrectly);
	RUN_TEST(tmm.allocateCorrectly);
	RUN_TEST(tmm.nextChunkCorrectly);
	RUN_TEST(tmm.deallocateCorrectly);
	RUN_TEST(tmm.reallocateInPlaceCollectCorrectly);
	RUN_TEST(tmm.reallocateOutOfPlaceMoveCorrectly);
	RUN_TEST(tmm.reallocateSmallerCorrectly);

	kout << INFO << "end TestMemoryManager\n";
}

bool TestMemoryManager::memoryChunkMergeCorrectly()
{
	char base[1024];
//	size_t sizes[]={100,7,5,10};// 竟然不能使用？
//	(void)sizes;

	MemoryChunk *baseChunk = reinterpret_cast<MemoryChunk*>(base);
	baseChunk->allocated(false);
	baseChunk->size(100);
	baseChunk->chunkOffset(0);
	baseChunk->end(false);
	MemoryChunk *chunk2 = reinterpret_cast<MemoryChunk*>(base + sizeof(MemoryChunk)+baseChunk->size() );
	chunk2->chunkOffset(7);

	MemoryChunk *chunk3 = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(chunk2) + 7);
	chunk3->chunkOffset(5);

	MemoryChunk *chunk4 = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(chunk3) + 5);
	chunk4->chunkOffset(0);
	chunk4->allocated(false);
	chunk4->size(10);
	chunk4->end(false);

	MemoryChunk *chunk5 = reinterpret_cast<MemoryChunk*>(chunk4->endPtr()); // end Chunk
	chunk5->chunkOffset(0);
	chunk5->end(true);

	size_t sumSize=100+7+5+10;
//	for(auto i:sizes)
//		sumSize += i;
	sumSize += sizeof(MemoryChunk);

	baseChunk->mergeTrailingsUnallocated();
	EXPECT_EXPR_EQUAL(baseChunk->size(), sumSize);

	return baseChunk->size() == sumSize;
}

bool TestMemoryManager::uncontiguousChunkMemoryAllocateCorrectly()
{
	char base[1024];// [0,127]:RAM  [128:511]:hole [512:700]:RAM [700:900]:hole [901:1024]:RAM


	MemoryChunk *baseChunk = reinterpret_cast<MemoryChunk*>(base);
	baseChunk->size(1024 - 1 - sizeof(MemoryChunk));
	baseChunk->chunkOffset(0);
	baseChunk->allocated(false);
	baseChunk->end(false);

	MemoryChunk *endChunk = reinterpret_cast<MemoryChunk*>(baseChunk->endPtr());
	endChunk->end(true);

	MemoryManager man(base,1024,false);
	MemoryManager man2(base,1024,true);

	return true;
}

bool TestMemoryManager::allocateCorrectly()
{
	char base[1024];

	MemoryChunk *baseChunk = reinterpret_cast<MemoryChunk*>(base);
	baseChunk->size(1024 - 1 - sizeof(MemoryChunk));
	baseChunk->chunkOffset(0);
	baseChunk->allocated(false);
	baseChunk->end(false);

	MemoryChunk *endChunk = reinterpret_cast<MemoryChunk*>(baseChunk->endPtr());
	endChunk->end(true);

	MemoryManager man(base,1024,false);

	auto p1=man.allocateAs<char*>(500);
	auto p2=man.allocateAs<char*>(100);
	auto p3=man.allocateAs<char*>(30);
	auto p4=man.allocateAs<char*>(400);
	auto p5=man.allocateAs<char*>(1000);
	(void)p1;
	(void)p2;
	(void)p3;
//	kout << Hex(reinterpret_cast<uint64_t>(p1)) << ","
//			<< Hex(reinterpret_cast<uint64_t>(p2)) << ","
//			<< Hex(reinterpret_cast<uint64_t>(p3)) << ","
//			<< Hex(reinterpret_cast<uint64_t>(p4)) << ","
//			<< Hex(reinterpret_cast<uint64_t>(p5)) << "\n";

	return p4==nullptr && p5==nullptr;
}
bool TestMemoryManager::deallocateCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	auto p1=man.allocateAs<char*>(100);
	auto chunk1=reinterpret_cast<MemoryChunk*>(p1- sizeof(MemoryChunk));
	bool res = (chunk1->allocated()==true && chunk1->size()==100);
	man.deallocate(p1);

	res &= chunk1->allocated()==false;
	return res;

}


bool TestMemoryManager::reallocateSmallerCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	auto p1=man.allocateAs<char*>(100);
	MemoryChunk *p1Chunk = reinterpret_cast<MemoryChunk*>(p1 - sizeof(MemoryChunk));


	auto rp1 = man.reallocateAs<char*>(p1, 80);
	return (rp1 == p1 && p1Chunk->size()==80);
}
bool TestMemoryManager::reallocateInPlaceCollectCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	auto p1=man.allocateAs<char*>(100);
	MemoryChunk *p1Chunk = MemoryChunk::chunkPtrOfDataPtr(p1);
	MemoryChunk *freeChunk1 = reinterpret_cast<MemoryChunk*>(p1 + 100);
	freeChunk1->moveAhead(100);//+100


	auto rp1 = man.reallocateAs<char*>(p1, 200);

	return (rp1==p1 && p1Chunk->size()==200);
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
	return p1Chunk->allocated()==false && reinterpret_cast<MemoryChunk*>(rp1-sizeof(MemoryChunk))->allocated()==true&& rp1[0]=='A' && rp1[1]=='b' ;


}
bool TestMemoryManager::nextChunkCorrectly()
{
	char base[1024];
	MemoryManager man(base,1024);
	MemoryChunk * baseChunk = reinterpret_cast<MemoryChunk*>(base);
	return ( baseChunk->nextContineous()->endChunk() && baseChunk->nextContineous()->nextContineous()==nullptr);
}
