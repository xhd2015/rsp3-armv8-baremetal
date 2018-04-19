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


MemoryChunk::MemoryChunk(size_t chunkOffset,bool end,bool allocated,size_t size)
	:OffsetChunk(chunkOffset,end),
	 _allocated(allocated),
	 _size(size)
{}

const MemoryChunk* MemoryChunk::nextContineous()const
{
	if(endChunk())
		return nullptr;
	if(validChunk())
		return reinterpret_cast<const MemoryChunk*>(endPtr());
	else
		return reinterpret_cast<const MemoryChunk*>(reinterpret_cast<const char*>(this)+chunkOffset());
}
MemoryChunk* MemoryChunk::nextContineous()
{
	return CALL_CONST_EQUIV(MemoryChunk,MemoryChunk*,nextContineous());
}
const MemoryChunk* MemoryChunk::nextValid()const
{
	auto p=this->nextContineous();
	while(true)
	{
		if(!p)
			return nullptr;
		if(p->validChunk())
			return p;
		p = p->nextContineous();
	}
}
MemoryChunk*       MemoryChunk::nextValid()
{
	return CALL_CONST_EQUIV(MemoryChunk,MemoryChunk*,nextValid());
}
void* MemoryChunk::dataPtr()
{
	return CALL_CONST_EQUIV(MemoryChunk,void*,dataPtr());
}
const void * MemoryChunk::dataPtr()const
{
	return reinterpret_cast<const char*>(this)+sizeof(MemoryChunk);
}

void* MemoryChunk::endPtr()
{
	return CALL_CONST_EQUIV(MemoryChunk,void*,endPtr());
}
const void * MemoryChunk::endPtr()const
{
	return reinterpret_cast<const char*>(this)+sizeof(MemoryChunk)+_size;
}

MemoryChunk* MemoryChunk::findAllocable(size_t n,size_t alignment,size_t &moveOffset)
{
	auto chunk=this;
	while(true)
	{
		if(!chunk)
			return nullptr;
		if(chunk->validChunk() &&
				!chunk->allocated() &&
				((moveOffset = chunk->moveOffsetOfAllocSuchAlignedSpace(n, alignment))!=SIZE_MAX)
			)
			return chunk;
		chunk = chunk->nextContineous();
	}
}


MemoryChunk* MemoryChunk::moveAhead(size_t moveSize)
{
	if(!this->validChunk() || this->allocated() || moveSize >= this->_size)
		return nullptr;
	if(moveSize==0)
		return this;
	MemoryChunk * nextChunk = reinterpret_cast<MemoryChunk*>(reinterpret_cast<char*>(this) + moveSize);
	//复制所有的域
	if(moveSize >= sizeof(MemoryChunk))
		*nextChunk=*this;
	else{ // 可能产生冲突
		// _FIXME 在树莓派3上测试出现错误，因为sizeof(MemoryChunk)=8, 而this作为地址居然没有与8对齐
		//  因此一次复制错误了。 请找到原因之后修复
		// NOTE  树莓派3的内存要求Strongly Ordered,因此必须对齐访问
		kout << "move chunk not correct\n";
		kout << "move size = " << moveSize << "\n";
//		MemoryChunk temp=*this; // 错误
		MemoryChunk temp(*this);
		*nextChunk = temp;
	}
	nextChunk->_size -= moveSize;


	if(moveSize >= sizeof(MemoryChunk)+1) // 能够形成MemoryChunk
	{
		// 更新this
		this->_size = moveSize - sizeof(MemoryChunk);
	}else{ // 使用第一个字节记录下一个MemoryChunk所在的位置
		this->chunkOffset(moveSize);
	}
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
	if(preferedMove < sizeof(MemoryChunk)) // 必须足够容纳一个新的MemoryChunk
		preferedMove += alignment;
	if(preferedMove + allocSize > this->_size)
		return SIZE_MAX;
	else
		return preferedMove;
}
bool MemoryChunk::split(size_t splitSize)
{
	if(!this->validChunk() ||this->allocated() || splitSize > this->_size)
		return false;
	if(splitSize==0)
		return true;
	// tailChunk必须与sizeof(MemoryChunk)对齐
	auto tailAddr = reinterpret_cast<uint64_t>(this)+sizeof(MemoryChunk)+splitSize;
	auto alignedAddr = alignAhead(tailAddr, sizeof(MemoryChunk));

	// 增加splitSize的大小。
	splitSize += alignedAddr - tailAddr;
	// 分离尾部
	size_t leftSize = _size - splitSize;
	if(leftSize >= sizeof(MemoryChunk)+1)// 形成一个chunk
	{
		new (reinterpret_cast<MemoryChunk*>(alignedAddr)) MemoryChunk(0,false,false,leftSize - sizeof(MemoryChunk));
		this->_size = splitSize;
	}else{ // 剩余的自选集不可能形成Chunk。于是，全部分配,什么也不做

	}
	return true;
}

void MemoryChunk::mergeTrailingsUnallocated()
{
	if(!validChunk() || this->allocated())
		return;

	size_t collectedSize = 0;
	MemoryChunk * p = this->nextContineous();
	// 循环前，保证this不是end，未分配,有连续的下一个
	// 从this开始，每次：
	//     增加size
	//     检测是否能够继续，如果：
	//         当前chunk已经分配 或者  当前chunk是endChunk
	//                则退出
	//         当前chunk的下一个chunk不连续
	//                更新nextBaseFromEnd域
	// 最后设置this的size域
	while(true)
	{
		if(!p || p->endChunk())
			break;
		else if(p->validChunk())
		{
			if(p->allocated())
			{
				break;
			}else{ //未分配，
				collectedSize += p->_size + sizeof(MemoryChunk);
			}
		}else{ // offset chunk
			collectedSize += p->chunkOffset();
		}
		p=p->nextContineous();
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
