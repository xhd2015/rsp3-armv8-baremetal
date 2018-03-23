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
protected:
	using RegOffset = uint32_t;

	MemBasedRegReader(size_t base)
		:_base(reinterpret_cast<volatile char*>(base)){}
	MemBasedRegReader(void *base)
		:_base(reinterpret_cast<volatile char*>(base)){}
public:
	template <class T,RegOffset offset>
	AS_MACRO volatile T & reg()
	{
		return *reinterpret_cast<volatile T*>(_base +  offset);
	}
	template <class T,RegOffset offset>
	AS_MACRO const volatile T & reg()const
	{
		return *reinterpret_cast<const volatile T*>(_base +  offset);
	}
	template <RegOffset offset>
	AS_MACRO volatile uint8_t & reg8(){return reg<uint8_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const volatile uint8_t & reg8()const{return reg<uint8_t,offset>();}
	template <RegOffset offset>
	AS_MACRO volatile uint16_t & reg16(){return reg<uint16_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const volatile uint16_t & reg16()const{return reg<uint16_t,offset>();}
	template <RegOffset offset>
	AS_MACRO volatile uint32_t & reg32(){return reg<uint32_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const volatile uint64_t & reg32()const{return reg<uint32_t,offset>();}
	template <RegOffset offset>
	AS_MACRO volatile uint64_t & reg64(){return reg<uint64_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const volatile uint64_t & reg64()const{return reg<uint64_t,offset>();}
protected:
	volatile char * _base;
};


#endif /* INCLUDE_IO_UART_MEMBASEDREGREADER_H_ */
