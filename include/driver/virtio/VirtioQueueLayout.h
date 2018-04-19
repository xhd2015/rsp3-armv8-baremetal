/*
 * VirtioQueueLayout.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_VIRTIO_VIRTIOQUEUELAYOUT_H_
#define INCLUDE_DRIVER_VIRTIO_VIRTIOQUEUELAYOUT_H_

#include <def.h>
#include <driver/virtio/VirtioQueueAvailableRef.h>
#include <driver/virtio/VirtioQueueDescriptor.h>
#include <driver/virtio/VirtioQueueUsedRef.h>
#include <generic_util.h>
#include <cstring>

class VirtioQueueLayout{
public:
	VirtioQueueLayout()
		:_queueSize(0),
		 _usedRingAlignment(0),
		 _queueBase(nullptr),
		 _usedDescs(0),
		 _descTable(nullptr),
		 _availRing(),
		 _usedRing()
		{}

	// TODO 重新初始化AvailRing和UsedRing
	VirtioQueueLayout(void *base,size_t queueSize,size_t usedRingAlignment,bool doInit=false)
		:_queueSize(queueSize),
		 _usedRingAlignment(usedRingAlignment),
		 _queueBase(reinterpret_cast<char*>(base)),
		 _usedDescs(0),
		 _descTable(reinterpret_cast<decltype((_descTable))>(base)),
		 _availRing(_queueBase+ sizeof(_descTable[0])*_queueSize,queueSize,0,0,0),
		 _usedRing(reinterpret_cast<void*>(alignAhead(reinterpret_cast<uint64_t>(_availRing.base()),usedRingAlignment)),queueSize,0,0,0)

	{
		if(doInit)
		{
			std::memset(base, 0, memSize());
		}
	}
	AS_MACRO void   queueSize(size_t qsize){_queueSize = qsize;}
	AS_MACRO size_t queueSize()const{return _queueSize;}
	size_t memSize()const;

	AS_MACRO void* queueBase() const {
		return _queueBase;
	}

	AS_MACRO void queueBase(void* queueBase) {
		_queueBase = reinterpret_cast<char*>(queueBase);
	}

	AS_MACRO size_t usedRingAlignment() const {
		return _usedRingAlignment;
	}

	AS_MACRO void usedRingAlignment(size_t usedRingAlignment) {
		_usedRingAlignment = usedRingAlignment;
	}

	AS_MACRO VirtioQueueAvailableRef& availRing() {
		return _availRing;
	}

	AS_MACRO const VirtioQueueAvailableRef& availRing() const {
		return _availRing;
	}
	AS_MACRO VirtioQueueDescriptor* descTable() {
		return _descTable;
	}
	AS_MACRO const VirtioQueueDescriptor* descTable() const {
		return _descTable;
	}
	AS_MACRO VirtioQueueUsedRef& usedRing() {
		return _usedRing;
	}
	AS_MACRO const VirtioQueueUsedRef& usedRing() const {
		return _usedRing;
	}

	void                    chainDescriptors(VirtioQueueDescriptor ** descs,size_t size);

	AS_MACRO size_t         leftDescriptors()const{return _queueSize - _usedDescs;}

	/**
	 * 分配一个描述符，空间不足则返回nullptr
	 * @return 分配的描述符
	 */
	VirtioQueueDescriptor * allocateDescriptor();
	void                    deallocateDescriptor(VirtioQueueDescriptor * desc);
	// most conditions are not checked.
	bool                    allocateDescriptros(VirtioQueueDescriptor ** dest, size_t len);
	void                    deallocateDescriptors(VirtioQueueDescriptor ** dest, size_t len);

	void					pushAvl(VirtioQueueDescriptor * desc);

private:
	size_t  _queueSize;
	size_t  _usedRingAlignment;
	char *  _queueBase;

	// helper fileds
	size_t  _usedDescs;

	// layout from queueBase
	VirtioQueueDescriptor *  _descTable; // align=16,size=16*_queueSize
	VirtioQueueAvailableRef  _availRing; // align=2,size=6+2*_queueSize
	VirtioQueueUsedRef       _usedRing;  //  align=4,size=6+8*_queueSize
										// 因为_availRing和_usedRing具有不同的对齐要求，因此_availRing和_usedRing之间可能存在padding
						// 注意, 实际上_usedRing的对齐是由 QueueAlign（32位）决定的，应当是2的幂

};



#endif /* INCLUDE_IO_VIRTIO_VIRTIOQUEUELAYOUTREF_H_ */
