/*
 * MemoryChunk.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORYCHUNK_H_
#define INCLUDE_MEMORYCHUNK_H_
#include <def.h>
#include <generic_util.h>
#include <memory/OffsetChunk.h>
/**
 * size_t的大小即可标记处内存的大小
 *  MemoryChunk存储一个内存	区域的元信息
 *  根据实际的情况，MemoryChunk是一个链表，并且多数情况下一次分配的大小不可能超过RAM。而通常的RAM配置是8GB，我们只需要支持稍大的RAM，比如1TB(2^40)即可
 *
 *	注意，在进行merge操作时，必须确保内存块元信息的终止块（也就是最后一个无法合并的MemoryChunk)必须能够访问到。 为此，在初始化管理器时，必须保证至少两项存在：一项主要的MemoryChunk，一项End标记，紧邻第一项的后面。
 *	End标记放在RAM的高端1字节的位置：endMark=1
 *
 *  End标记的size总是0.
 *  对End标记的Chunk调用Next，总是返回nullptr.
 *
 *  调用next() 永不返回End.
 *
 *  必须保证next,dataEnd方法在有效的Chunk,以及offset chunk上能够正确。但是对End标记，不保证任何方法正确。
 *
 *  UDPATE：注意，在树莓派3上，内存是Strongly Ordered，因此返回的地址必须按8字节对齐。（按最大可访问大小对齐）
 *
 */
class MemoryChunk
	:public OffsetChunk
{
public:
	// 下面的Bits和必须是64,ValidBits至少是3,因为一个MemoryChunk至少占用8个字节(2^3)
//	enum { ValidBits = 6, IsEndBits=1,AllocatedBits=1,SizeBits=38,NextBaseBits=18}; // 共64bits,不连续的段至多允许256KB,size允许至多256GB
//	enum { MaxSinlgeMoveBytes = (1 << ValidBits) , MAX_CHUNK_OFFSET=(1<<ValidBits)};
	enum {ALLOCATE_BITS=1,SIZE_BITS=55};
	enum {MAX_SIZE = ( 1ul << SIZE_BITS)};
	MemoryChunk(size_t chunkOffset,bool end,bool allocated,size_t size);
	AS_MACRO bool allocated()const { return _allocated;}
	AS_MACRO void allocated(bool alloced) { _allocated=alloced;}
	AS_MACRO size_t size()const{return _size;}
	AS_MACRO void size(size_t s){_size=s;}
	const MemoryChunk* nextContineous()const;
	MemoryChunk* nextContineous();
	const MemoryChunk* nextValid()const;
	MemoryChunk*       nextValid();
	void* dataPtr();
	const void * dataPtr()const;
	void* endPtr();
	const void * endPtr()const;

	MemoryChunk* findAllocable(size_t n,size_t alignment,size_t &moveOffset);
	// 对齐分配查找的一个要素是：如果某个块的getDataPtr已经对齐，就不需要额外的MemoryChunk
	// 如果没有对齐，因此该块必定是未分配的，因此移动MemoryChunk位置即可
	// 下面的函数实现MemoryChunk向前移动n个字节，原来的位置记录其移动的距离
	// 一个块可以多次移动，每次移动记录其距离即可。
	// 移动后，其大小改变,但是移动的距离只能小于其大小。一个有效MemoryChunk的大小至少是1
	// 返回移动后的MemoryChunk指针，如果 无效，则返回nullptr
	// 如果移动留下的空隙足以使用MemoryChunk来管理，则使用，否则使用offset记录
	// UPDATE：必须保证moveSize是最小对齐的整数倍。
	MemoryChunk* moveAhead(size_t moveSize);
	// 能够分配一个按alignment的地址所需的move偏移，如果是SIZE_MAX意味着不能
	// moveOffset预留出的空间必须至少包含一个chunk的大小，否则分配失败。
	// 因为sizeof(chunk)=sizeof(size_t), 并且所有的chunk都是在
	size_t moveOffsetOfAllocSuchAlignedSpace(size_t allocSize,size_t alignment)const;
	// 将当前Chunk的前splitSize部分分离出来
	/**
	 * 分离Chunk的前splitSize大小，分离后，首尾分别为两个有效的chunk
	 * 首部仍然保持原来的属性，尾部属性进行一定的设置
	 * @param splitSize
	 * @return
	 * FIXME 应当返回实际分隔的大小，便于内存统计
	 */
	bool split(size_t splitSize);

	// 将到下一个Chunk之间的所有未使用的空间合并起来,包括所有不能形成Chunk的，或者Chunk未分配的
	// 该函数在一个Chunk由Allocated->NotAllocated时调用
	void mergeTrailingsUnallocated();

	static MemoryChunk * chunkPtrOfDataPtr(void *dataPtr);
	static const MemoryChunk * chunkPtrOfDataPtr(const void *dataPtr);
private:
//	OffsetChunk       _offsetChunk;  // 1字节大小, 由继承而来
	size_t            _allocated      :ALLOCATE_BITS;//allocated
	size_t            _size           :SIZE_BITS; //size

}__attribute__((packed));

static_assert(sizeof(MemoryChunk)==sizeof(size_t), "error MemoryChunk");


#endif /* INCLUDE_MEMORYCHUNK_H_ */
