/*
 * MemoryManager_impl.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */


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
	:headChunk(nullptr),base(reinterpret_cast<char*>(base)),size(size){}

void* MemoryManager::allocate(size_t n)
{
	return new char[n];
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
void  MemoryManager::deallocate(void *p)
{
	delete [] reinterpret_cast<char*>(p);
}
size_t MemoryManager::getAllocatedLength(void *origin)const
{
	return SIZE_MAX;
}

