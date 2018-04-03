/*
 * VirtioBlockDriver.h
 *
 *  Created on: Mar 26, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_VIRTIO_VIRTIOBLOCKDRIVER_H_
#define INCLUDE_IO_VIRTIO_VIRTIOBLOCKDRIVER_H_

#include <io/virtio/VirtioDriver.h>
#include <io/virtio/VirtioQueueDescriptor.h>
#include <utility>
#include <cstring>
#include <programming/define_members.h>
#include <algorithm>

class VirtioBlockDriver
	:public VirtioDriver
{
public:
	static constexpr uint8_t BufferReadFlags=bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_NEXT,VirtioQueueDescriptor::VIRTQ_DESC_F_WRITE>(); //device-write,has next
	static constexpr uint8_t BufferWriteFlags=bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_NEXT>();
	static constexpr size_t DescriptorNum=3;
	enum{
		REQ_BUF_HEAD=0,
		REQ_BUF_STATUS=16,

		REQ_BUF_SIZE = 17,

		REQ_HEAD_LEN=16,
		REQ_STATUS_LEN=1,

		BLOCK_SIZE=512,

		QUEUE_NUM = 1,
		CUR_QUEUE = 0,
	};
	template <class ... Args>
	VirtioBlockDriver(Args && ... args)
		: VirtioDriver(std::forward<Args>(args)...)
		{
			std::memset(_reqDescs, 0, DescriptorNum * sizeof(_reqDescs[0]));
			std::memset(_reqSpaces,0,REQ_BUF_SIZE);
		}

	DELETE_COPY(VirtioBlockDriver);
	~VirtioBlockDriver();
	/**
	 *
	 * @param descrNum 至少是3。
	 */
	template <class ... Args>
	void init(uint32_t pfn,size_t descrNum,Args && ... virtQargs)
	{
		VirtioDriver::init();
		reg32<VirtioDriver::V1_QueueSel>() = CUR_QUEUE; // set current
		reg32<VirtioDriver::V1_QueueNum>() = (descrNum<DescriptorNum)?DescriptorNum:descrNum; // set current queue size
		reg32<VirtioDriver::V1_QueuePFN>() = pfn;
		initVirtQueue(std::forward<Args>(virtQargs)...);
	}

	size_t readSector(uint64_t sector,size_t num,void * buffer);
	size_t writeSector(uint64_t sector,size_t num,const void *buffer);

	bool setupDescriptors();

private:
	// head, buffer, status
	VirtioQueueDescriptor * _reqDescs[DescriptorNum];
	union{
		uint8_t                 _reqSpaces[REQ_BUF_SIZE];
		struct {
			uint32_t _type;
			uint32_t _res0;
			uint64_t _sector;

			uint8_t  _status; // device-write
		}__attribute__((packed)) _req;
	};

};


#endif /* INCLUDE_IO_VIRTIO_VIRTIOBLOCKDRIVER_H_ */
