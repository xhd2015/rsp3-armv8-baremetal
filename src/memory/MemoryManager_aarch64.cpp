/*
 * MemoryManager.cpp
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#include <memory/MemoryManager.h>
#include <new>
#include <cstring>
#include <algorithm>
#include <io/Output.h>
#include <generic_util.h>

MemoryManager::MemoryManager(void *base,size_t size,bool initChunks)
	:
	_headChunk(reinterpret_cast<MemoryChunk*>(base)),// set headChunk
	 _base(reinterpret_cast<char*>(base)),
	 _size(size)
{
	if(initChunks)
	{
		if(size <= sizeof(MemoryChunk))
			_headChunk->end(true);
		else
		{
			// size需要减去1个字节，该字节用于设置end标记
			new (_headChunk) MemoryChunk(0,false,false,size - sizeof(MemoryChunk) - 1);
			reinterpret_cast<MemoryChunk*>(_headChunk->endPtr())->end(true); // end
		}
	}
}

size_t MemoryManager::normalizeAllocSize(size_t n)
{
	if(n < MINIMAL_ALLOC_SIZE)
		n = MINIMAL_ALLOC_SIZE;
	if( n % MINIMAL_ALIGNMENT != 0)
		n += (MINIMAL_ALIGNMENT - n%MINIMAL_ALIGNMENT); // n=k*ALIGNMENT + n%ALIGNMENT, 若n%ALIGNMENT!=0,n应当是(k+1)*ALIGNMENT,(k+1)*ALIGNMENT = k*ALIGNMENT + n%ALIGNMENT - n%ALIGNMENT + ALIGNMENT = n + (ALIGNMENT - n%ALIGNMENT)
	return n;
}
void* MemoryManager::allocate(size_t n)
{
	return allocate(n, MINIMAL_ALIGNMENT);
}
void  *MemoryManager::allocate(size_t n,size_t alignment)
{
	if(!n)return nullptr;
	alignment = properAlignment(alignment);// 保证所有的分配都是按照最小进行对齐的，并且对齐只能是MINIMAL_ALIGNMENT的整数倍。
	size_t moveOffset=SIZE_MAX;
	auto foundChunk = _headChunk->findAllocable(n, alignment, moveOffset);
	if(!foundChunk)
		return  nullptr;
	MemoryChunk * movedChunk = foundChunk->moveAhead(moveOffset);
	movedChunk->split(n);
	movedChunk->allocated(true);
	return movedChunk->dataPtr();
}
void  MemoryManager::deallocate(void *p)
{
	auto chunkPtr= MemoryChunk::chunkPtrOfDataPtr(p);
	if(chunkPtr && chunkPtr->validChunk() &&chunkPtr->allocated())
	{
		chunkPtr->allocated(false);
		chunkPtr->mergeTrailingsUnallocated();
	}
}
size_t    MemoryManager::properAlignment(size_t alignment)const
{
	return lcm(alignment,MINIMAL_ALIGNMENT);
}

bool  MemoryManager::tryIncrease(void *origin,size_t incSize)
{
	return false;
}
bool  MemoryManager::tryDecrease(void *origin,size_t decSize)
{
	return false;
}

size_t MemoryManager::getAllocatedLength(void *origin)const
{
	auto ptr= MemoryChunk::chunkPtrOfDataPtr(origin);
	if(ptr && ptr->validChunk() && ptr->allocated())
		return ptr->size();
	return SIZE_MAX;
}






