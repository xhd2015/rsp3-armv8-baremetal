/*
 * MemoryChunk.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORYCHUNK_H_
#define INCLUDE_MEMORYCHUNK_H_
#include <def.h>

class MemoryChunk{
public:
	MemoryChunk()=default;
	MemoryChunk(MemoryChunk *next,size_t size,bool allocated);
	bool isAllocated() const;
	void setAllocated(bool allocated);
	const MemoryChunk* getNext()const;
	MemoryChunk* getNext();
	void setNext(MemoryChunk* next);
	size_t getSize() const;
	void setSize(size_t size);
	void* getDataPtr()const;

private:
	MemoryChunk *next {nullptr};
	size_t 	size {0};
	bool    allocated {false};
};



#endif /* INCLUDE_MEMORYCHUNK_H_ */
