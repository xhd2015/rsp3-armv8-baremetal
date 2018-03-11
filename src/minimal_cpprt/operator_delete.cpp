/*
 * operator_delete.cpp
 *
 *  Created on: Feb 5, 2018
 *      Author: 13774
 */
#include <def.h>
#include <new>
#include <kernel.h>

void operator delete(void *p,size_t n)
{
	mman.deallocate(p);
}
