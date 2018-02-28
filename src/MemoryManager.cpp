/*
 * MemoryManager.cpp
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#include <MemoryManager.h>
#include <new>
#include <cstring>
#include <algorithm>

MemoryManager::MemoryManager(void *base,size_t size)
	:headChunk(reinterpret_cast<MemoryChunk*>(base)),// set headChunk
	 base(reinterpret_cast<const char*>(base)),size(size)
{
	new (headChunk) MemoryChunk(nullptr,size,false);
}
size_t MemoryManager::normalizeAllocSize(size_t n)
{
	if(n < MINIMAL_ALLOC_SIZE)
		n = MINIMAL_ALLOC_SIZE;
	n += n % ALIGNMENT;
	return n;
}
void* MemoryManager::allocate(size_t n)
{
	MemoryChunk *foundChunk=headChunk;
	n = normalizeAllocSize(n);
	size_t allocSize = n + CHUNK_SIZE;
	while(foundChunk && !foundChunk->isAllocated() && foundChunk->getSize() < allocSize)
		foundChunk=foundChunk->getNext();
	if(!foundChunk)
		return nullptr;
	// not allocated & enough
	foundChunk->setAllocated(true);
	size_t leftSize = foundChunk->getSize() - allocSize;
	if(leftSize >= CHUNK_SIZE + MINIMAL_ALLOC_SIZE) //可能重新用于分配，需要分裂出新的节点
	{
		MemoryChunk *nextChunk =
				reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(this)+allocSize);
		new (nextChunk) MemoryChunk(foundChunk->getNext(),leftSize,false);
		foundChunk->setNext(nextChunk);
		foundChunk->setSize(allocSize);
	}
	return foundChunk->getDataPtr();
}
void  MemoryManager::deallocate(void *p)
{
	if(p && reinterpret_cast<size_t>(p) > CHUNK_SIZE )
	{
		MemoryChunk *chunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(p) - CHUNK_SIZE);
		if(chunk->isAllocated())
		{
			chunk->setAllocated(false);
			MemoryChunk *nextChunk = chunk->getNext();
			if(nextChunk->isAllocated())return;
			//可以合并没有分配的chunk
			char *end=reinterpret_cast<char*>(chunk)+chunk->getSize();
			if(reinterpret_cast<char*>(nextChunk) == end )//can be combined
			{
				chunk->setNext(nextChunk->getNext());
				chunk->setSize(chunk->getSize() + nextChunk->getSize());
			}
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
void* MemoryManager::reallocate(void *origin,size_t newSize)
{
	if(!origin)
		return nullptr;
	if(newSize==0)
	{
		deallocate(origin);
		return nullptr;
	}

	char *ptr = mman.allocateAs<char*>(newSize);
	if(!ptr) // failed
		return nullptr;
	size_t   size=getAllocatedLength(origin);
	if(size >= newSize)
		size=newSize;
	std::memcpy(ptr,origin,std::min(getAllocatedLength(origin), newSize));
	return ptr;
}
size_t MemoryManager::getAllocatedLength(void *origin)const
{
	return SIZE_MAX;
}






