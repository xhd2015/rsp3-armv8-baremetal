/*
 * VirtioBlockRequest.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_VIRTIO_VIRTIOBLOCKREQUEST_H_
#define INCLUDE_DRIVER_VIRTIO_VIRTIOBLOCKREQUEST_H_

#include <def.h>

class VirtioBlockRequestRef{
public:
	enum {
		REQ_IN = 0,
		REQ_OUT = 1,
		REQ_FLUSH = 4,
		REQ_GET_ID = 8,

		STATUS_OK = 0,
		STATUS_IOERR = 1,
		STATUS_UNSUPP = 2,
	};

	VirtioBlockRequestRef(void *base, size_t blocks,uint32_t type,uint64_t sector)
		:_bufBlockNum(blocks),
		 _base(reinterpret_cast<char*>(base))

	{
		this->type(type);
		// 将res0设置
		*reinterpret_cast<uint32_t*>(_base + 4)=0;
		this->sector(sector);
	}

	AS_MACRO void * base(){return _base;}
	AS_MACRO const void * base()const{return _base;}



	// static 为了用于初始化分配空间
	AS_MACRO static size_t memSize(size_t blocks){ return 4+4+8+512*blocks+1;}
	AS_MACRO size_t memSize()const{ return 4+4+8+512*_bufBlockNum+1;}
	AS_MACRO void type(uint32_t t)const{ *reinterpret_cast<uint32_t*>(_base)=t;}
	AS_MACRO void sector(uint64_t s)const { *reinterpret_cast<uint64_t*>(_base + 8)=s;}

	AS_MACRO uint32_t type()const{ return *reinterpret_cast<uint32_t*>(_base);}
	AS_MACRO uint64_t sector()const { return *reinterpret_cast<uint64_t*>(_base + 8);}
	AS_MACRO const char* data()const { return reinterpret_cast<const char*>(_base + 16);}
	AS_MACRO char* data() { return reinterpret_cast<char*>(_base + 16);}
	AS_MACRO uint8_t   status()const { return *reinterpret_cast<uint8_t*>(_base + 16 + _bufBlockNum * 512);}
private:
	size_t _bufBlockNum;
	char * _base;

	// 真实布局如下
//	uint32_t _type;
//	uint32_t _res0;
//	uint64_t _sector;
//	uint8_t  _data[][512];
//	uint8_t  _status; // written-by-device


};



#endif /* INCLUDE_DRIVER_VIRTIO_VIRTIOBLOCKREQUEST_H_ */
