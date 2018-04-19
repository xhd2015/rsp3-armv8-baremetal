/*
 * VirtioQueueUsed.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_VIRTIO_VIRTIOQUEUEUSED_H_
#define INCLUDE_IO_VIRTIO_VIRTIOQUEUEUSED_H_

/**
 * it is only written to by the device,
and read by the driver.

Each entry in the ring is a pair: id indicates the head entry of the descriptor chain describing the buffer (this
matches an entry placed in the available ring by the guest earlier), and len the total of bytes written into the
buffer.
 *
 * UsedRing是由host写入的，其中的项都是早前由driver写入到AvailRing中的下标。
 */
class VirtioQueueUsedRef{
public:
	struct UsedElement{
		// 已使用的描述符链的索引（下标）
		uint32_t _id;
		// 该链的长度
		uint32_t _len;
	}__attribute__((packed));

	VirtioQueueUsedRef()
		:_queueSize(0),
		 _base(nullptr)
	{}

	VirtioQueueUsedRef(void *base, size_t queueSize,uint16_t flags, uint16_t idx,uint16_t availEvent)
	  : _queueSize(queueSize),
		_base(reinterpret_cast<char*>(base))
	{
		this->flags(flags);
		this->idx(idx);
		this->availEvent(availEvent);
	}


	char* base() const {
		return _base;
	}

	void base(char* base) {
		_base = base;
	}

	size_t queueSize() const {
		return _queueSize;
	}

	void queueSize(size_t queueSize) {
		_queueSize = queueSize;
	}

	AS_MACRO void flags(uint16_t f){*reinterpret_cast<uint16_t*>(_base)=f;}
	AS_MACRO void idx(uint16_t i){ *reinterpret_cast<uint16_t*>(_base + 2)=i;}
	AS_MACRO uint16_t flags()const{return *reinterpret_cast<uint16_t*>(_base);}
	AS_MACRO uint16_t idx()const{return *reinterpret_cast<uint16_t*>(_base + 2);}
	AS_MACRO const UsedElement * ring()const{return reinterpret_cast<const UsedElement*>(_base + 4);}
	AS_MACRO UsedElement * ring(){ return reinterpret_cast<UsedElement*>(_base + 4);}
	AS_MACRO uint16_t availEvent(){return *reinterpret_cast<uint16_t*>(_base + 4 + _queueSize * sizeof(UsedElement));	}
	AS_MACRO void availEvent(uint16_t availEvent) {*reinterpret_cast<uint16_t*>(_base + 4 + _queueSize * sizeof(UsedElement)) = availEvent;	}

	AS_MACRO static size_t  maximumElementNum(size_t pageSize) { return (pageSize - 6)/sizeof(UsedElement);}
private:
	size_t _queueSize;
	char * _base;



//	布局如下：
//	uint16_t _flags;
//	uint16_t _idx;
//	virtq_used_elem ring[_queueSize];
//	uint16_t _avail_event;
};




#endif /* INCLUDE_IO_VIRTIO_VIRTIOQUEUEUSEDREF_H_ */
