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
#include <cstring>
#include <type_traits>
#include <generic/error.h>
#include <generic/memory.h>
#include <new>
#include <utility> //move

// TESTME
// UPDATE:2018年5月13日14:48:11 修改了MemoryChunk的定义，只包含Allocated和Length两个部分
//               因此大多数功能都将重新测试。
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
	AS_MACRO void rebase(size_t diff) { _base += diff;*reinterpret_cast<char**>(&_headChunk)+=diff;}
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
	 * 返回合适的alignment, 同时满足alignment和MINIMAL_ALIGNMENT
	 * 返回最小公倍数，使用欧几里得算法
	 * @param alignment
	 * @return
	 */
	size_t    properAlignment(size_t alignment)const;

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
	// DOCME 重新整理文档
	// TODO 测试修复bug之后的reallocate是否正确
	/**
	 * allocate the pointer in-place or out-place.
	 * call tryIncrease or tryDecrease conditionally, if possible.
	 * else, just allocate another new memory, and copy the original content to there.
	 *
	 * argument `oldSize` is optional, if it is SIZE_MAX,means that the original
	 *  memory size can be retrieved from the in-place MemoryChunk.Otherwise,
	 *  oldSize is used
	 * if failed,return nullptr
	 *
	 * UPDATE: 现在需要类型信息，进行析构函数调用。
	 * 需求： reallocate 必须完成析构和移动的工作
	 * T必须是指针类型, 指向的是数组的首部
	 */
	/**
	 *
	 * @param origin  原始的指针
	 * @param newSize  需要重新分配的大小
	 * @param constructedSize   在这个指针上已经构造的对象数目，不能多于oldSize
	 * @param oldSize  原始指针的内存区域大小，如果为SIZE_MAX，则通过内存头部动态决定
	 * @return
	 */
	template <class T>
	T reallocate(T origin,size_t newSize,size_t constructedSize=0,size_t oldRawSize = SIZE_MAX);

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

	AS_MACRO void* base()  {return _base;}
	AS_MACRO const size_t size() const {return _size;}

private:
	MemoryChunk *_headChunk;
	char		*_base;
	size_t	    _size;
};

// 定义一个全局的内存管理器
#ifndef _NOT_NEED_MemoryManager
extern MemoryManager mman;
#endif

// 与std::nothrow_t 相似，
struct MemAbort{};

#ifndef _NOT_NEED_MemAbort
extern MemAbort m_abort;
#endif

void *operator new(size_t size,MemAbort);
void *operator new[](size_t size,MemAbort);



//===template impl
template <class T>
T		MemoryManager::allocateAs(size_t n)
{
	return reinterpret_cast<T>(this->allocate(n));
}
template <class T>
T        MemoryManager::allocateAs(size_t n,size_t alignment)
{
	return reinterpret_cast<T>(this->allocate(n,alignment));
}
template <class T>
T MemoryManager::reallocate(T origin,size_t newSize,
		size_t constructedSize,size_t oldRawSize)
{
	static_assert(std::is_pointer<T>::value,"");
	using V = typename std::remove_pointer<T>::type;
	if(!origin)
			return nullptr;
	auto newRawSize = newSize * sizeof(V);
	if(oldRawSize==SIZE_MAX)
	{
		oldRawSize = getAllocatedLength(origin);
//		assert(rawSize >=  sizeof(T)==0); // FIXME 这里不一定，只需要大于oldSize * sizeof(T)即可
//		oldSize = rawSize / sizeof(T);
	}
	if(oldRawSize==SIZE_MAX) // still can not retrive the original size
		reportError("MemoryManager cannot determine the original pointer length");
	if(newRawSize==0)
	{
		destruct(origin, constructedSize);
		deallocate(origin);
		return nullptr;
	}
	if(oldRawSize >= newRawSize)
		return origin;
	MemoryChunk *chunk = MemoryChunk::chunkPtrOfDataPtr(origin);
	//try to collect unallocated,must be tested
	chunk->allocated(false);
	chunk->mergeTrailingsUnallocated();
	if(chunk->size() >= newRawSize) // 直接extend
	{
		chunk->split(newRawSize);
		chunk->allocated(true);
		return origin;
	}else{ //need to be moved to another place , newSize > oldSize
		chunk->allocated(true);
		T ptr = this->allocateAs<T>(newRawSize);
		if(!ptr) // failed
			return nullptr;
		// 调用移动构造函数
		if(newSize >= constructedSize) // 全部move
			for(size_t i=0;i!=constructedSize;++i)
				new (ptr+i) V(std::move(origin[i]));
		else // 部分需要destruct
		{
			for(size_t i=0;i!=newSize;++i)
				new (ptr+i) V(std::move(origin[i]));
			destruct(ptr+newSize, constructedSize - newSize);
		}
		chunk->allocated(false);
		return ptr;
	}
}


#endif /* INCLUDE_MEMORYMANAGER_H_ */
