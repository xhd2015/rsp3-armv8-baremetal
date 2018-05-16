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
 *  MemoryChunk存储一个内存	区域的大小。
 *  内存块指的是： 元信息区域(MemoryChunk)+可用内存区域
 *  其中，可用内存区域我们也称为数据区域，起始指针因此成为数据指针。
 *
 *  UDPATE：注意，在树莓派3上，内存是Strongly Ordered，因此返回的地址必须按8字节对齐。（按最大可访问大小对齐）
 *  UPDATE：假定内存是连续的模型，也就是说，内存的中间区域没有间断。每次拆分内存块时，
 *  		如果新形成的内存不足以形成一个MemoryChunk，则不拆分内存块。这样做是为了避免OffsetChunk的出现
 *
 *  内存块大小：指的是除了头部信息以外的大小。该值允许为0。
 *  最后一个内存块：当我们对内存块进行遍历时，我们需要一个终止条件。我们规定内存块大小为0xFFFFFFFF_FFFFFFFF的内存块
 *  		为最后一个内存块。
 *  最小对齐：指的是sizeof(MemoryChunk)。
 *  通常而言，我们分配的内存大小不会超过32位，但是为了8字节对齐，我们还是使用了64位的元信息。
 *
 */
class MemoryChunk
//	:public OffsetChunk
{
public:
	enum {ALLOCATE_BITS=1,SIZE_BITS=63};//高位用于表明是否已经分配
	enum {MAX_SIZE = ( 1ul << SIZE_BITS)};
	MemoryChunk(bool allocated,size_t size);
	AS_MACRO bool allocated()const { return _allocated;}
	AS_MACRO void allocated(bool alloced) { _allocated=alloced;}
	AS_MACRO size_t size()const{return _size;}
	AS_MACRO void size(size_t s){_size=s;}
	/**
	 * 返回内存块的可用内存的起始指针
	 */
	AS_MACRO void* dataPtr(){return CALL_CONST_EQUIV(MemoryChunk,void*,dataPtr());}
	AS_MACRO const void * dataPtr()const{return reinterpret_cast<const char*>(this)+sizeof(MemoryChunk);}
	/**
	 * 返回下一个内存块，如果已经是 的末尾指针
	 */
	const MemoryChunk* next()const;
	AS_MACRO MemoryChunk* next(){return CALL_CONST_EQUIV(MemoryChunk,MemoryChunk*,next());}
	/**
	 * 是否是结束块
	 * @return
	 */
	AS_MACRO bool         endChunk()const{return *reinterpret_cast<const size_t *>(this)==SIZE_MAX;}


	MemoryChunk* findAllocable(size_t n,size_t alignment,size_t &moveOffset);
	/**
	 * 将一个未分配的内存块头部向前移动moveSize个字节，且要求moveSize必须能够形成一个新
	 * 的内存块头部。但是moveSzie=0时直接返回原指针。
	 * 由于对齐方面的要求，moveSize必须是最小对齐的整数倍
	 * @param moveSize
	 * @return  移动后的新的内存块头部，如果没有成功，则返回nullptr
	 */
	MemoryChunk* moveAhead(size_t moveSize);
	/**
	 * 计算在当前内存块中，分配allocSize大小的内存块，并且要求数据指针按照alignment进行对齐时，
	 * 所需要前向移动的字节数量。
	 * 注意，返回有效值时，该值的要求一定和moveAhead的参数要求一致。
	 * @param allocSize
	 * @param alignment
	 * @return 不能成功时返回SIZE_MAX
	 */
	size_t moveOffsetOfAllocSuchAlignedSpace(size_t allocSize,size_t alignment)const;
	/**
	 * 将一个未分配的内存块的尾部至少splitSize大小分离出去，
	 * 如果按照splitSize大小拆分新形成的内存块没有按最小对齐，则增加splitSize的实际大小。
	 * 如果splitSize超过内存块大小则不拆分，返回失败
	 * 如果splitSize小于sizeof(MemoryChunk)，即末尾不能形成新的记录，则不拆分，返回成功
	 * @param splitSize
	 * @return
	 * FIXME 应当返回实际分隔的大小，便于内存统计
	 */
	bool split(size_t splitSize);

	// 将到下一个Chunk之间的所有未使用的空间合并起来,包括所有不能形成Chunk的，或者Chunk未分配的
	// 该函数在一个Chunk由Allocated->NotAllocated时调用
	void mergeTrailingsUnallocated();

	/**
	 * 指针减去一定的偏移，获得内存块的元信息
	 * @param dataPtr
	 * @return
	 */
	static MemoryChunk * chunkPtrOfDataPtr(void *dataPtr);
	static const MemoryChunk * chunkPtrOfDataPtr(const void *dataPtr);
	/**
	 * 将一个Chunk设置为EndChunk
	 * @param chunk
	 */
	static void          makeEndChunk(MemoryChunk *chunk);
private:
	size_t            _size           :SIZE_BITS; //size
	size_t            _allocated      :ALLOCATE_BITS;//allocated

}__attribute__((packed));

static_assert(sizeof(MemoryChunk)==sizeof(size_t), "error MemoryChunk size");


#endif /* INCLUDE_MEMORYCHUNK_H_ */
