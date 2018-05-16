/*
 * VirtioQueueLayout.cpp
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#include <driver/virtio/VirtioQueueLayout.h>
#include <generic_util.h>
#include <generic/error.h>
#include <programming/macros.h>

size_t VirtioQueueLayout::memSize()const
{
	auto prefix = sizeof(VirtioQueueDescriptor)*_queueSize +
			6 + 2*_queueSize;
	auto alignedPrefix = alignAhead(prefix, _usedRingAlignment);
	return alignedPrefix + 6  + 8 * _queueSize;
}

void   VirtioQueueLayout::chainDescriptors(VirtioQueueDescriptor ** descs,size_t size)
{
	// assert(descs && size>0);
	for(size_t i=0;i!=size-1;++i)
	{
//		assert(descs[i] && descs[i] >= _descTable && (descs[i] - _descTable <_queueSize));
		descs[i]->flags() |= bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_NEXT>();
		descs[i]->next()  = descs[i+1] - _descTable;
	}
	// last
	descs[size-1]->flags() &= bitZeros<VirtioQueueDescriptor::VIRTQ_DESC_F_NEXT>();
	descs[size-1]->next() = 0;

}
VirtioQueueDescriptor * VirtioQueueLayout::allocateDescriptor()
{
	if(_usedDescs == _queueSize)
		return nullptr;
	auto p=_descTable;
	for(size_t i=0;i!=_queueSize;++i,++p)
	{
		if(!p->allocated())
		{
			p->markAllocated();
			++_usedDescs;
			return p;
		}
	}
	// make compiler happy ^-^
	return nullptr;
}

void                    VirtioQueueLayout::deallocateDescriptor(VirtioQueueDescriptor * desc)
{
//	assert(desc &&  desc->allocated());
//	auto index = desc - _descTable;
//	assert(index >=0 && index < _queueSize);
	desc->deallocate();
	--_usedDescs;
}

bool                   VirtioQueueLayout::allocateDescriptros(VirtioQueueDescriptor ** dest, size_t len)
{
	// assert(dest && len>0)
	if(len > leftDescriptors())
		return false;
	size_t destIndex=0;
	auto p=_descTable;
	for(size_t i=0;i!=_queueSize && destIndex !=len ;++i,++p)
	{
		if(!p->allocated())
		{
			p->markAllocated();
			++_usedDescs;
			dest[destIndex++]=p;
		}
	}
	return true;
}
void                   VirtioQueueLayout::deallocateDescriptors(VirtioQueueDescriptor ** dest, size_t len)
{
	for(size_t i=0;i!=len;++i)
		deallocateDescriptor(dest[i]);
}

void	VirtioQueueLayout::pushAvl(VirtioQueueDescriptor * desc)
{
	auto & r = availRing();
	auto oldIdx= r.idx();
	r.ring()[oldIdx]=static_cast<uint16_t>(desc - _descTable );
	r.idx() = (oldIdx + 1)%_queueSize;
}

