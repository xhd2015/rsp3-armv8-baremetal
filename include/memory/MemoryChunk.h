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
/**
 *  MemoryChunk存储一个内存	区域的元信息
 *  根据实际的情况，MemoryChunk是一个链表，并且多数情况下一次分配的大小不可能超过RAM。而通常的RAM配置是8GB，我们只需要支持稍大的RAM，比如1TB(2^40)即可
 *
 *	注意，在进行merge操作时，必须确保内存块元信息的终止块（也就是最后一个无法合并的MemoryChunk)必须能够访问到。 为此，在初始化管理器时，必须保证至少两项存在：一项主要的MemoryChunk，一项End标记，紧邻第一项的后面。
 *	End标记放在RAM的高端1字节的位置：endMark=1
 *
 *  对End标记的Chunk调用Next，总是返回nullptr
 *
 */
class MemoryChunk{
public:
	// 下面的Bits和必须是64,ValidBits至少是3,因为一个MemoryChunk至少占用8个字节(2^3)
	enum { ValidBits = 6, IsEndBits=1,AllocatedBits=1,SizeBits=38,NextBaseBits=18}; // 共64bits,不连续的段至多允许256KB,size允许至多256GB
	enum { MaxSinlgeMoveBytes = (1 << ValidBits) };
	MemoryChunk(size_t size,bool allocated,size_t nextValidChunkOffset,bool endMark,size_t nextBaseFromEnd);
	bool isAllocated() const;
	void setAllocated(bool allocated);
	bool isEnd() const;
	void setEnd(bool end);
	const MemoryChunk* getNext()const;
	MemoryChunk* getNext();
	size_t getSize() const;
	void setSize(size_t size);
	void* getDataPtr();
	const void * getDataPtr()const;
	void* getDataEnd();
	const void * getDataEnd()const;
	uint64_t getNextBaseFromEnd() const;
	void setNextBaseFromEnd(uint64_t nextBaseFromEnd);
	uint64_t getNextValidChunkOffset() const;
	void setNextValidChunkOffset(uint64_t nextValidChunkOffset );



	// 对齐分配查找的一个要素是：如果某个块的getDataPtr已经对齐，就不需要额外的MemoryChunk
	// 如果没有对齐，因此该块必定是未分配的，因此移动MemoryChunk位置即可
	// 下面的函数实现MemoryChunk向前移动n个字节，原来的位置记录其移动的距离
	// 一个块可以多次移动，每次移动记录其距离即可。
	// 移动后，其大小改变,但是移动的距离只能小于其大小。一个有效MemoryChunk的大小至少是1
	// 返回移动后的MemoryChunk指针，如果 无效，则返回nullptr
	// 如果移动留下的空隙足以使用MemoryChunk来管理，则使用，否则使用offset记录
	MemoryChunk* moveAhead(size_t moveSize);
	// 能够分配一个按alignment的地址所需的move偏移，如果是SIZE_MAX意味着不能
	size_t moveOffsetOfAllocSuchAlignedSpace(size_t allocSize,size_t alignment)const;
	// 将当前Chunk的前splitSize部分分离出来
	bool split(size_t splitSize);

	// 将到下一个Chunk之间的所有未使用的空间合并起来,包括所有不能形成Chunk的，或者Chunk未分配的
	// 该函数在一个Chunk由Allocated->NotAllocated时调用
	void mergeTrailingsUnallocated();


private:
	uint64_t  nextValidChunkOffset  :ValidBits; // 在1个字节的范围内标记处下一个ChunkOffset，因为如果某个区域含有少于MemoryChunk大小的字节数目，它们不能存储完整的MemoryChunk，此时必须使第一个字节指向一个真正有效的MemoryChunk。 0值意味着该处就是一个有效的MemoryChunk. MemoryChunk的大小至多是2^ValidBits个字节
	uint64_t  endMark               :IsEndBits; // end 0=false,1=true标记
	uint64_t  allocated             :AllocatedBits; // 0=false, 1=true
	uint64_t  size                  :SizeBits; //
	uint64_t  nextBaseFromEnd       :NextBaseBits;
}__attribute__((packed));



#endif /* INCLUDE_MEMORYCHUNK_H_ */
