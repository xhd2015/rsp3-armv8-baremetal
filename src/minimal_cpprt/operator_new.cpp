/*
 * operator_new.cpp
 *
 *  Created on: Feb 5, 2018
 *      Author: 13774
 */

#include <def.h>
#include <new>
#include <MemoryManager.h>

void* operator new(size_t n)
{
	return mman.allocate(n);
}

