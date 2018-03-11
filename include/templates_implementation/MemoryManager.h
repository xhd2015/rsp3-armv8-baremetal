/*
 * MemoryManager.h
 *
 *  Created on: Mar 6, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_

#include <memory/MemoryManager.h>

//===templates
template <class T>
T		MemoryManager::allocateAs(size_t n)
{
	return reinterpret_cast<T>(this->allocate(n));
}
template <class T>
T        MemoryManager::allocateAs(size_t n,size_t alignment)
{
	return reinterpret_cast<T>(this->allocate(n,alignment));
}

template <class T>
T   MemoryManager::reallocateAs(void *origin,size_t newSize,size_t oldSize)
{
	return reinterpret_cast<T>(reallocate(origin, newSize,oldSize));
}





#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ */
