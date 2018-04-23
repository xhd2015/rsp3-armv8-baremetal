/*
 * AddressSpaceDescriptor.h
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORY_ADDRESSSPACEDESCRIPTOR_H_
#define INCLUDE_MEMORY_ADDRESSSPACEDESCRIPTOR_H_
#include <def.h>
#include <generic_util.h>
class AddressSpaceDescriptor{
public:
	// flag bits
	enum {
		  F_TYPE=0, /*0-3 used for type*/
		  F_TYPE_END=3,
		  F_READ_ONLY=4,
		  F_CACHEABLE=5,
		  F_EL0_ACCESS=6
	};
	// type
	enum Type{ T_NORMAL,T_PERIPHERAL,T_UNKOWN,T_NOT_VALID};
	AddressSpaceDescriptor();
	AddressSpaceDescriptor(void *addr,size_t size, Type type=T_NORMAL,bool readOnly=false,bool cacheable=true,bool el0Access=false);
	AS_MACRO bool readOnly()const{ return _flags & (1<<F_READ_ONLY);}
	AS_MACRO bool cacheable()const{ return _flags & (1<<F_CACHEABLE);}
	AS_MACRO Type type()const { return static_cast<Type>(getBits(_flags, F_TYPE, F_TYPE_END));}
	AS_MACRO bool el0Accessiable()const { return _flags & (1<<F_EL0_ACCESS);}
	AS_MACRO void readOnly(bool v){ setBit(_flags,F_READ_ONLY,v);}
	AS_MACRO void cacheable(bool v){ setBit(_flags ,F_CACHEABLE,v);}
	AS_MACRO void type(Type t) { setBits(_flags, F_TYPE, F_TYPE_END,t);}
	AS_MACRO void el0Accessiable(bool v) { setBit(_flags ,F_EL0_ACCESS,v);;}
	AS_MACRO void* addr() const {return _addr;}
	AS_MACRO void addr(void* addr) {	_addr = addr;}
	AS_MACRO size_t size() const {		return _size;}
	AS_MACRO void size(size_t size) {	_size = size;}
private:
	uint8_t _flags;
	void *  _addr;
	size_t  _size;
};



#endif /* INCLUDE_MEMORY_ADDRESSSPACEDESCRIPTOR_H_ */
