/*
 * AddressSpaceDescriptor.cpp
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#include <memory/AddressSpaceDescriptor.h>
AddressSpaceDescriptor::AddressSpaceDescriptor()
	:_flags(0),
	 _addr(nullptr),
	 _size(0)
{}
AddressSpaceDescriptor::AddressSpaceDescriptor(void *addr,size_t size, Type type,bool readOnly,bool cacheable,bool el0Access)
	:_flags(0),
	 _addr(addr),
	 _size(size)
{
	this->type(type);
	this->readOnly(readOnly);
	this->cacheable(cacheable);
	this->el0Accessiable(el0Access);
}



