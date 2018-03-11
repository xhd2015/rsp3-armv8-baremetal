/*
 * MemoryChunk.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <memory/MemoryChunk.h>
#include <new> //placement new


MemoryChunk::MemoryChunk(size_t size,bool allocated,size_t nextValidChunkOffset,bool endMark,size_t nextBaseFromEnd)
	: nextValidChunkOffset(nextValidChunkOffset),endMark(endMark?1:0),allocated(allocated?1:0),size(size),nextBaseFromEnd(nextBaseFromEnd){}
bool MemoryChunk::isAllocated() const {
	return allocated==1;
}

void MemoryChunk::setAllocated(bool allocated)
{
	this->allocated = allocated?1:0;
}
bool MemoryChunk::isEnd() const
{
	return this->endMark==1;
}
void MemoryChunk::setEnd(bool end)
{
	this->endMark = (end?1:0);
}
const MemoryChunk* MemoryChunk::getNext() const
{
	if(this->isEnd())
		return nullptr;
	const MemoryChunk *next=reinterpret_cast<const MemoryChunk*>(reinterpret_cast<const char*>(this->getDataEnd()) + this->nextBaseFromEnd);
	while(!next->isEnd() && next->nextValidChunkOffset!=0)
		next = reinterpret_cast<const MemoryChunk*>(reinterpret_cast<const char*>(next) + next->nextValidChunkOffset);
	return next;
}
MemoryChunk* MemoryChunk::getNext()
{
	return const_cast<MemoryChunk*>(reinterpret_cast<const MemoryChunk*>(this)->getNext());
}


size_t MemoryChunk::getSize() const
{
	return size;
}

void MemoryChunk::setSize(size_t size)
{
	this->size = size;
}
void* MemoryChunk::getDataPtr()
{
	return const_cast<void*>(reinterpret_cast<const MemoryChunk*>(this)->getDataPtr());
}
const void * MemoryChunk::getDataPtr()const
{
	return reinterpret_cast<const char*>(this)+sizeof(MemoryChunk);
}
void* MemoryChunk::getDataEnd()
{
	return const_cast<void*>(reinterpret_cast<const MemoryChunk*>(this)->getDataEnd());
}
const void * MemoryChunk::getDataEnd()const
{
	return reinterpret_cast<const char*>(this)+sizeof(MemoryChunk)+this->getSize();
}



uint64_t MemoryChunk::getNextBaseFromEnd() const
{
	return nextBaseFromEnd;
}
void MemoryChunk::setNextBaseFromEnd(uint64_t nextBaseFromEnd)
{
	this->nextBaseFromEnd = nextBaseFromEnd;
}

uint64_t MemoryChunk::getNextValidChunkOffset() const {
	return nextValidChunkOffset;
}

void MemoryChunk::setNextValidChunkOffset(uint64_t nextValidChunkOffset )
{
	this->nextValidChunkOffset = nextValidChunkOffset;
}

MemoryChunk* MemoryChunk::moveAhead(size_t moveSize)
{
	if(this->allocated || moveSize >= this->size)
		return nullptr;
	if(moveSize==0)
		return this;
	MemoryChunk * nextChunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(this) + moveSize);
	//复制所有的域
	if(moveSize >= sizeof(MemoryChunk))
		*nextChunk=*this;
	else{ // 可能产生冲突
		MemoryChunk temp=*this;
		*nextChunk = temp;
	}
	nextChunk->size -= moveSize;


	if(moveSize >= sizeof(MemoryChunk)+1) // 能够形成MemoryChunk
	{
		// 更新this
		this->nextBaseFromEnd=0;//就在End的偏移0处
		this->size = moveSize - sizeof(MemoryChunk);
	}else{ // 使用第一个字节记录下一个MemoryChunk所在的位置
		this->nextValidChunkOffset = moveSize;
	}
	return nextChunk;
}
size_t MemoryChunk::moveOffsetOfAllocSuchAlignedSpace(size_t allocSize,size_t alignment)const
{
	if(allocSize > this->size)
		return SIZE_MAX;
	size_t mod=reinterpret_cast<uint64_t>(this->getDataPtr()) % alignment;
	if(mod!=0) // 基址是不对齐的,因此需要进行一定的移动
	{
		if(alignment - mod + allocSize > this->size)
			return SIZE_MAX;
		else
			return alignment - mod;
	}else
		return 0;
}
bool MemoryChunk::split(size_t splitSize)
{
	if(this->isEnd() || this->isAllocated() || splitSize > this->getSize() || splitSize==0)
		return false;
	size_t leftSize = this->getSize() - splitSize;
	MemoryChunk * nextChunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(this->getDataPtr())+splitSize);
	if(leftSize >= sizeof(MemoryChunk) + 1) // 形成一个Chunk
	{
		new (nextChunk) MemoryChunk(leftSize - sizeof(MemoryChunk),this->isAllocated(),0,false,this->getNextBaseFromEnd());

		this->size = splitSize;
		this->nextBaseFromEnd=0;
	}else{
		this->nextValidChunkOffset = leftSize;
	}
	return true;
}

void MemoryChunk::mergeTrailingsUnallocated()
{
	if(this->isAllocated() || this->nextBaseFromEnd !=0 || this->isEnd())
		return;
	size_t collectedSize = 0;
	MemoryChunk * freeChunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(this)+sizeof(MemoryChunk) + this->size);
	MemoryChunk * lastChunk = nullptr;
	while(true)
	{
		size_t addingSize=freeChunk->nextValidChunkOffset;
		if(addingSize==0) // 是一个有效的Chunk
		{
			if(!freeChunk->isEnd() && !freeChunk->isAllocated() && freeChunk->nextBaseFromEnd==0) // 连续且未分配的Chunk,且非最后一项
				addingSize =  freeChunk->size + sizeof(MemoryChunk);
			else // else 第一个已经分配的Chunk，因此合并至多能够到达此处
				break;
		}
		collectedSize += addingSize;
		lastChunk = freeChunk;
		freeChunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(freeChunk) + addingSize);
	}
	// 更新size和nextBase
	this->size+=collectedSize;
	this->nextBaseFromEnd = lastChunk->nextBaseFromEnd;
}
