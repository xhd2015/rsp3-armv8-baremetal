/*
 * VirtioQueueLayout.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_VIRTIO_VIRTIOQUEUELAYOUT_H_
#define INCLUDE_IO_VIRTIO_VIRTIOQUEUELAYOUT_H_

#include <def.h>
#include <io/virtio/VirtioQueueDescriptor.h>
#include <io/virtio/VirtioQueueAvailableRef.h>
#include <io/virtio/VirtioQueueUsedRef.h>
#include <generic_util.h>

class VirtioQueueLayout{
public:

	// TODO 重新初始化AvailRing和UsedRing
	VirtioQueueLayout(void *base,size_t queueSize,size_t usedRingAlignment)
		:_queueSize(queueSize),
		 _usedRingAlignment(usedRingAlignment),
		 _queueBase(reinterpret_cast<char*>(base)),
		 _descTable(reinterpret_cast<decltype((_descTable))>(base)),
		 _availRing(_queueBase+ sizeof(_descTable[0])*_queueSize,queueSize,0,0,0),
		 _usedRing(reinterpret_cast<void*>(alignAhead(reinterpret_cast<uint64_t>(_availRing.base()),usedRingAlignment)),queueSize,0,0,0)

	{}
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

	VirtioQueueAvailableRef& availRing() {
		return _availRing;
	}

	const VirtioQueueAvailableRef& availRing() const {
		return _availRing;
	}
	VirtioQueueDescriptor* descTable() {
		return _descTable;
	}
	const VirtioQueueDescriptor* descTable() const {
		return _descTable;
	}
	VirtioQueueUsedRef& usedRing() {
		return _usedRing;
	}
	const VirtioQueueUsedRef& usedRing() const {
		return _usedRing;
	}

private:
	size_t  _queueSize;
	size_t  _usedRingAlignment;
	char *  _queueBase;

	// layout from queueBase
	VirtioQueueDescriptor *  _descTable; // align=16,size=16*_queueSize
	VirtioQueueAvailableRef  _availRing; // align=2,size=6+2*_queueSize
	VirtioQueueUsedRef       _usedRing;  //  align=4,size=6+8*_queueSize
										// 因为_availRing和_usedRing具有不同的对齐要求，因此_availRing和_usedRing之间可能存在padding
						// 注意, 实际上_usedRing的对齐是由 QueueAlign（32位）决定的，应当是2的幂

};



#endif /* INCLUDE_IO_VIRTIO_VIRTIOQUEUELAYOUTREF_H_ */
