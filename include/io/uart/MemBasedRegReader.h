/*
 * MemBasedReg.h
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_UART_MEMBASEDREG_H_
#define INCLUDE_IO_UART_MEMBASEDREG_H_

#include <def.h>

class MemBasedRegReader{
public:
	using RegOffset = uint32_t;

	MemBasedRegReader(volatile void *base)
		:_base(base){}
	template <class T,RegOffset offset>
	AS_MACRO volatile T & reg()
	{
		return *reinterpret_cast<volatile T*>(reinterpret_cast<volatile char *>(_base) +  offset);
	}
	template <class T,RegOffset offset>
	AS_MACRO const volatile T & reg()const
	{
		return *reinterpret_cast<const volatile T*>(reinterpret_cast<volatile char *>(_base) +  offset);
	}

	volatile void * _base;
};


#endif /* INCLUDE_IO_UART_MEMBASEDREGREADER_H_ */
