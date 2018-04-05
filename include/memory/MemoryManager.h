/*
 * MemoryManager.h
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORYMANAGER_H_
#define INCLUDE_MEMORYMANAGER_H_

#include <def.h>
#include <memory/MemoryChunk.h>
#include <runtime_def.h>

/**
 * 不变式:
 * headChunk不为nullptr
 * 分配的地址是对齐到ALIGNMENT的
 * CHUNK_SIZE 必须是ALIGNMENT的倍数
 * MINIMAL_ALLOC_SIZE 必须是ALIGNMENT的倍数
 * 起始地址是ALIGNMENT的倍数
 * 每个CHUNK必须对齐到ALIGNMENT
 *
 * 内存管理可以in-place或者out-of-place
 */
class MemoryManager{
public:
	enum { CHUNK_SIZE = sizeof(MemoryChunk), MINIMAL_ALLOC_SIZE = sizeof(size_t), MINIMAL_ALIGNMENT = sizeof(size_t) };
	MemoryManager()=delete;
	/*
	 * @param base 不能为空
	 */
	MemoryManager(void *base,size_t size,bool initChunks=true);
public:
	// 最小分配要求
	size_t normalizeAllocSize(size_t n);

	// 默认对齐的分配
	void* allocate(size_t n);
	// 自带对齐要求的分配
	// 关于对齐分配，参见 c++ std::aligned_alloc, http://en.cppreference.com/w/cpp/memory/c/aligned_alloc
	void* allocate(size_t n,size_t alignment);
	template <class T>
	T        allocateAs(size_t n);
	template <class T>
	T        allocateAs(size_t n,size_t alignment);

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
	 * argument `oldSize` is optional, if it is SIZE_MAX,means that the original memory size can be retrieved from the in-place MemoryChunk.Otherwise, oldSize is used
	 * if failed,return nullptr
	 */
	void* reallocate(void *origin,size_t newSize,size_t oldSize = SIZE_MAX);

	template <class T>
	T   reallocateAs(void *origin,size_t newSize,size_t oldSize = SIZE_MAX);

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


// 定义一个全局的内存管理器
#ifndef _NOT_NEED_MemoryManager
extern MemoryManager mman;
#endif

#include <templates_implementation/MemoryManager.h>


#endif /* INCLUDE_MEMORYMANAGER_H_ */
