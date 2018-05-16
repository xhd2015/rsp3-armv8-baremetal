/*
 * MemoryChunk.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <memory/MemoryChunk.h>
#include <new> //placement new
#include <programming/define_members.h>
#include <io/Output.h>
#include <generic/error.h>

MemoryChunk::MemoryChunk(bool allocated,size_t size)
	:_size(size),
	 _allocated(allocated)
{}

const MemoryChunk* MemoryChunk::next()const
{
	if(endChunk())
		return nullptr;
	return reinterpret_cast<const MemoryChunk*>(reinterpret_cast<const char*>(this)
			+ sizeof(MemoryChunk)
			+ _size);
}

MemoryChunk* MemoryChunk::findAllocable(size_t n,size_t alignment,size_t &moveOffset)
{
	auto chunk=this;
	while(true)
	{
		if(!chunk)
			return nullptr;
		if(!chunk->allocated() &&
				((moveOffset = chunk->moveOffsetOfAllocSuchAlignedSpace(n, alignment))!=SIZE_MAX)
			)
			return chunk;
		chunk = chunk->next();
	}
}


MemoryChunk* MemoryChunk::moveAhead(size_t moveSize)
{
	if(moveSize==0)
		return this;
	if( this->allocated() || moveSize % sizeof(MemoryChunk)!=0 ||  moveSize >= this->_size)
		return nullptr;
	MemoryChunk * nextChunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(this) +
			moveSize);
	*nextChunk=*this;
	nextChunk->_size -= moveSize;
	// 更新this
	this->_size = moveSize - sizeof(MemoryChunk);
	return nextChunk;
}

size_t MemoryChunk::moveOffsetOfAllocSuchAlignedSpace(size_t allocSize,size_t alignment)const
{
	if(allocSize > this->_size)
		return SIZE_MAX;
	size_t mod=reinterpret_cast<uint64_t>(this->dataPtr()) % alignment;
	if(mod==0) //已经对齐
		return 0;
	// 基址是不对齐的,因此需要进行一定的移动
	size_t preferedMove = alignment - mod;
	if(preferedMove < sizeof(MemoryChunk)) // 必须足够容纳一个新的MemoryChunk，因此再按对齐移动一次
		preferedMove += alignment;
	if(preferedMove + allocSize > this->_size) // 移动的字节+分配的字节必须足够
		return SIZE_MAX;
	else
	{
		assert(preferedMove % sizeof(MemoryChunk)==0);//必须保证最小对齐
		return preferedMove;
	}
}
bool MemoryChunk::split(size_t splitSize)
{
	if(splitSize==0)
		return true;
	if(this->allocated() || splitSize > this->_size)
		return false;
	// tailChunk必须与sizeof(MemoryChunk)对齐
	auto tailAddr = reinterpret_cast<uint64_t>(this)+sizeof(MemoryChunk)+splitSize;
	auto alignedAddr = alignAhead(tailAddr, sizeof(MemoryChunk));

	// 增加splitSize的大小。
	splitSize += alignedAddr - tailAddr;
	// 分离尾部
	size_t leftSize = _size - splitSize;
	if(leftSize >= sizeof(MemoryChunk))// 形成一个chunk
	{
		new (reinterpret_cast<MemoryChunk*>(alignedAddr))
				MemoryChunk(false,leftSize - sizeof(MemoryChunk));
		this->_size = splitSize;
	}
	return true;
}

void MemoryChunk::mergeTrailingsUnallocated()
{
	if( this->allocated() )
		return;

	size_t collectedSize = 0;
	MemoryChunk * p = this->next();
	while(!p->allocated())
	{
		collectedSize += p->_size + sizeof(MemoryChunk);
		p=p->next();
	}
	//  更新size
	this->_size+=collectedSize;
}

MemoryChunk * MemoryChunk::chunkPtrOfDataPtr(void *dataPtr)
{
	if(reinterpret_cast<uint64_t>(dataPtr)<sizeof(MemoryChunk))
		return nullptr;
	return reinterpret_cast<MemoryChunk*>(reinterpret_cast< char*>(dataPtr) - sizeof(MemoryChunk));
}
const MemoryChunk * MemoryChunk::chunkPtrOfDataPtr(const void *dataPtr)
{
	if(reinterpret_cast<uint64_t>(dataPtr)<sizeof(MemoryChunk))
		return nullptr;
	return reinterpret_cast<const MemoryChunk*>(reinterpret_cast<const char*>(dataPtr) - sizeof(MemoryChunk));
}

void         MemoryChunk::makeEndChunk(MemoryChunk *chunk)
{
	*reinterpret_cast<size_t*>(chunk)=SIZE_MAX;
}
