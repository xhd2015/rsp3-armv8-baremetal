/*
 * virtual_memory_def.h
 *
 *  Created on: Apr 10, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORY_VIRTUAL_MEMORY_DEF_H_
#define INCLUDE_MEMORY_VIRTUAL_MEMORY_DEF_H_

#include <def.h>

class VirtualMemoryDefinition{
public:
	static constexpr size_t PAGE_BITS=12;
	static constexpr size_t ENTRY_BITS=3;
	static constexpr size_t ENTRY_SIZE=(1<<ENTRY_BITS);
	static constexpr size_t ENTRY_NUM_OF_EACH_TABLE = (1 << (PAGE_BITS - ENTRY_BITS));
	static constexpr size_t PAGE_SIZE=(1u<<PAGE_BITS);

	static constexpr size_t MEMORY_ATTR_NORMAL=0;  // typically:RAM
	static constexpr size_t MEMORY_ATTR_PERIPHERAL=1; // PERIPHERAL
	static constexpr size_t MEMORY_ATTR_NON_CACHEABLE=2; //不可缓存


	static const size_t MAP_SIZE[4];
};

#endif /* INCLUDE_MEMORY_VIRTUALMEMORYDEFINITION_H_ */
