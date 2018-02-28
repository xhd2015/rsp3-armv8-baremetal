/*
 * MemoryManager.h
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORYMANAGER_H_
#define INCLUDE_MEMORYMANAGER_H_

#include <def.h>
#include <MemoryChunk.h>

/**
 * 不变式:
 * headChunk不为nullptr
 * 分配的地址是对齐到ALIGNMENT的
 * CHUNK_SIZE 必须是ALIGNMENT的倍数
 * MINIMAL_ALLOC_SIZE 必须是ALIGNMENT的倍数
 * 起始地址是ALIGNMENT的倍数
 * 每个CHUNK必须对齐到ALIGNMENT
 */
class MemoryManager{
public:
	enum { CHUNK_SIZE = sizeof(MemoryChunk), MINIMAL_ALLOC_SIZE = sizeof(size_t), ALIGNMENT = sizeof(size_t) };
	MemoryManager()=delete;
	/*
	 * @param base 不能为空
	 */
	MemoryManager(void *base,size_t size);
public:
	size_t normalizeAllocSize(size_t n);
	void* allocate(size_t n);
	template <class T>
	T		allocateAs(size_t n);

	/**
	 * try to increase or decrease something.
	 * @param origin, if nullptr, return false.we do not expect nullptr as a normal allocated address
	 * @return true, the decrease really happened;
	 * 		   false, nothing happened.
	 * for TARGET_ARCH=self-implemented, try decrease will always succeed
	 * for TARGET_ARCH=host,those tries will always failed.
	 */
	bool  tryIncrease(void *origin,size_t incSize);
	bool  tryDecrease(void *origin,size_t decSize);
	/**
	 * allocate the pointer in-place or out-place.
	 * call tryIncrease or tryDecrease conditionally, if possible.
	 * else, just allocate another new memory, and copy the original content to there.
	 *
	 * if failed,return nullptr
	 */
	void* reallocate(void *origin,size_t newSize);

	template <class T>
	T *  reallocateAs(void *origin,size_t newSize);

	/**
	 * withdraw an allocated pointer.
	 * note:for nullptr,nothing happens.
	 */
	void  deallocate(void *p);

	/**
	 *  get size that the origin spanned, only if it is allocated from this MemoryManager,otherwise 0.
	 *  return SIZE_MAX, means that "I do not know"
	 */
	size_t getAllocatedLength(void *origin)const;
private:
	MemoryChunk *headChunk;
	const char		*base;
	const size_t	size;
};


extern MemoryManager mman;

//===templates
template <class T>
T		MemoryManager::allocateAs(size_t n)
{
	return reinterpret_cast<T>(this->allocate(n));
}

template <class T>
T *  MemoryManager::reallocateAs(void *origin,size_t newSize)
{
	return reinterpret_cast<T*>(reallocate(origin, newSize));
}

#endif /* INCLUDE_MEMORYMANAGER_H_ */
