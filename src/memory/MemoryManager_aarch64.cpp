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

MemoryManager::MemoryManager(void *base,size_t size,bool initChunks)
	:
	_headChunk(reinterpret_cast<MemoryChunk*>(base)),// set headChunk
	 _base(reinterpret_cast<const char*>(base)),
	 _size(size)
{
	if(initChunks)
	{
		if(size <= sizeof(MemoryChunk))
			_headChunk->setEnd(true);
		else
		{
			// size需要减去1个字节，该字节用于设置end标记
			new (_headChunk) MemoryChunk(size - sizeof(MemoryChunk) - 1,false,0,false,0);
			reinterpret_cast<MemoryChunk*>(_headChunk->getDataEnd())->setEnd(true); // end
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
	size_t moveOffset=SIZE_MAX;
	auto foundChunk = _headChunk->findAllocable(n, alignment, moveOffset);
	if(!foundChunk)
		return  nullptr;
	MemoryChunk * movedChunk = foundChunk->moveAhead(moveOffset);
	movedChunk->split(n);
	movedChunk->setAllocated(true);
	return movedChunk->getDataPtr();
}
void  MemoryManager::deallocate(void *p)
{
	if(p && reinterpret_cast<size_t>(p) > CHUNK_SIZE )
	{
		MemoryChunk *chunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(p) - CHUNK_SIZE);
		if(chunk->isAllocated())
		{
			chunk->setAllocated(false);
			chunk->mergeTrailingsUnallocated();
		}

	}
}


bool  MemoryManager::tryIncrease(void *origin,size_t incSize)
{
	return false;
}
bool  MemoryManager::tryDecrease(void *origin,size_t decSize)
{
	return false;
}
void* MemoryManager::reallocate(void *origin,size_t newSize,size_t oldSize)
{
	if(!origin)
		return nullptr;
	if(newSize==0)
	{
		deallocate(origin);
		return nullptr;
	}
	if(oldSize==SIZE_MAX)
		oldSize = getAllocatedLength(origin);
	if(oldSize==SIZE_MAX) // still can not retrive the original size
		return nullptr;
	if(oldSize==newSize)
		return origin;
	MemoryChunk *chunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(origin) - sizeof(MemoryChunk));

	//try to collect unallocated,must be tested
	chunk->setAllocated(false);
	chunk->mergeTrailingsUnallocated();
	if(chunk->getSize() >= newSize)
	{
		chunk->split(newSize);
		chunk->setAllocated(true);
		return origin;
	}else{ //need to be moved to another place , newSize > oldSize
		chunk->setAllocated(true);
		char *ptr = this->allocateAs<char*>(newSize);
		if(!ptr) // failed
			return nullptr;
		std::memcpy(ptr,origin,oldSize);
		chunk->setAllocated(false);
		return ptr;
	}
}
size_t MemoryManager::getAllocatedLength(void *origin)const
{
	if(origin && reinterpret_cast<uint64_t>(origin) > sizeof(MemoryChunk))
	{
		MemoryChunk* chunk=reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(origin) - sizeof(MemoryChunk));
		if(chunk->getNextValidChunkOffset()==0 && !chunk->isEnd() && chunk->isAllocated())
			return chunk->getSize();
	}
	return SIZE_MAX;
}






