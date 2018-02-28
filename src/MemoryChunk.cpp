/*
 * MemoryChunk.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <MemoryChunk.h>


MemoryChunk::MemoryChunk(MemoryChunk *next,size_t size,bool allocated)
	: next(next),size(size),allocated(allocated){}
bool MemoryChunk::isAllocated() const {
	return allocated;
}

void MemoryChunk::setAllocated(bool allocated)
{
	this->allocated = allocated;
}

const MemoryChunk* MemoryChunk::getNext() const
{
	return next;
}
MemoryChunk* MemoryChunk::getNext()
{
	return next;
}


void MemoryChunk::setNext(MemoryChunk* next)
{
	this->next = next;
}

size_t MemoryChunk::getSize() const
{
	return size;
}

void MemoryChunk::setSize(size_t size)
{
	this->size = size;
}
void* MemoryChunk::getDataPtr()const
{
	return const_cast<char*>(reinterpret_cast<const char*>(this)+sizeof(MemoryChunk));
}
