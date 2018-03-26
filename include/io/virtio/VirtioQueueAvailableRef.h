/*
 * VirtioQueueAvailable.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_VIRTIO_VIRTIOQUEUEAVAILABLE_H_
#define INCLUDE_IO_VIRTIO_VIRTIOQUEUEAVAILABLE_H_
/**
 *  It is only written by the driver and read by the device.
 */
class VirtioQueueAvailableRef{
public:
	enum FlagsBit{
		//
		VIRTQ_AVAIL_F_NO_INTERRUPT=0,
	};

	VirtioQueueAvailableRef(void *base,size_t queueSize,uint16_t flags,uint16_t idx,uint16_t usedEvent)
		:_queueSize(queueSize),
		 _base(reinterpret_cast<char*>(base))
		 {
			this->flags();
		 }
	AS_MACRO const void * base(){return _base;}
	AS_MACRO void *   base()const{return _base;}
	AS_MACRO size_t   queueSize()const{return _queueSize;}
	AS_MACRO size_t   memSize()const{return 2+2+2*_queueSize + 2;}

	AS_MACRO void flags(uint16_t f){ *reinterpret_cast<uint16_t*>(_base)=f;}
	AS_MACRO void idx(uint16_t i) { *reinterpret_cast<uint16_t*>(_base + 2)=i;}
	AS_MACRO void  usedEvent(uint16_t e){ *reinterpret_cast<uint16_t*>(_base+2+2+_queueSize*2)=e;}

	// 布局
	AS_MACRO uint16_t flags()const{return *reinterpret_cast<uint16_t*>(_base);}
	AS_MACRO uint16_t idx()const{return *reinterpret_cast<uint16_t*>(_base + 2);}
	AS_MACRO uint16_t * ring(){return reinterpret_cast<uint16_t*>(_base + 4);}
	AS_MACRO const uint16_t* ring()const{return reinterpret_cast<const uint16_t*>(_base + 4);}
	AS_MACRO uint16_t  usedEvent()const{return  *reinterpret_cast<uint16_t*>(_base+2+2+_queueSize*2);}


private:
	size_t _queueSize;
	char * _base;


// 从base开始，布局如下：
//	uint16_t _flags;
//	uint16_t _idx;
			// idx指向ring中下一个将要放置的下标，注意，ring不会检查idx所处的下标是否已经处理完毕，这是driver的责任。driver选择性更新。
//	uint16_t _ring[_queueSize];
//	uint16_t _used_event;


};



#endif /* INCLUDE_IO_VIRTIO_VIRTIOQUEUEAVAILABLEREF_H_ */
