/*
 * operator_new.cpp
 *
 *  Created on: Feb 5, 2018
 *      Author: 13774
 */

#include <def.h>
#include <new>
#include <memory/MemoryManager.h>
#include <generic/error.h>

void* operator new(size_t n)
{
	return mman.allocate(n);
}
void *operator new[](size_t n)
{
	return mman.allocate(n);
}
void *operator new(size_t size,MemAbort)
{
	auto p=mman.allocate(size);
	if(size !=0 && !p)
		reportError("new failed.");
	return p;
}
void *operator new[](size_t size,MemAbort)
{
	auto p=mman.allocate(size);
	if(size!=0 && !p)
		reportError("new[] failed.");
	return p;
}
