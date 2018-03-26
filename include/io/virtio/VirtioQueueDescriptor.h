/*
 * VirtioQueueDescriptor.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_VIRTIO_VIRTIOQUEUEDESCRIPTOR_H_
#define INCLUDE_IO_VIRTIO_VIRTIOQUEUEDESCRIPTOR_H_

/**
 * 描述符（表）主要用于引用驱动使用的缓冲区
 *  描述符可以指向一个描述符表
 *
 *  缓冲区可以链接起来。
 */
class VirtioQueueDescriptor{
public:

	enum FlagsBits{
		VIRTQ_DESC_F_NEXT = 0, // has next?
		VIRTQ_DESC_F_WRITE = 1, // device-writeonly V.S. device-readonly
		VIRTQ_DESC_F_INDIRECT = 2, // contains descriptors rather than normal data
	};

	VirtioQueueDescriptor(uint64_t addr,uint32_t len,uint16_t flags,uint16_t next)
		:_addr(addr),
		 _len(len),
		 _flags(flags),
		 _next(next)
	{}

	AS_MACRO uint64_t addr() const {
		return _addr;
	}

	AS_MACRO void addr(uint64_t addr) {
		_addr = addr;
	}

	AS_MACRO uint16_t flags() const {
		return _flags;
	}

	AS_MACRO void flags(uint16_t flags) {
		_flags = flags;
	}

	AS_MACRO uint32_t len() const {
		return _len;
	}

	AS_MACRO void len(uint32_t len) {
		_len = len;
	}

	AS_MACRO uint16_t next() const {
		return _next;
	}

	AS_MACRO void next(uint16_t next) {
		_next = next;
	}

private:
	uint64_t  _addr; // 如果指向一个间接描述符表，则间接描述符表的内容为：
					//  VirtioQueueDescriptor  table[len/sizeof(VirtioQueueDescriptor)];
	uint32_t  _len;
	uint16_t  _flags;
	uint16_t  _next;

}__attribute__((packed)); // 16bytes



#endif /* INCLUDE_IO_VIRTIO_VIRTIOQUEUEDESCRIPTOR_H_ */
