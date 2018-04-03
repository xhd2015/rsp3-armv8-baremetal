/*
 * VirtioBlockDriver.cpp
 *
 *  Created on: Mar 26, 2018
 *      Author: 13774
 */

#include <io/virtio/VirtioBlockDriver.h>
#include <memory/MemoryManager.h>
#include <io/virtio/VirtioBlockRequest.h>

VirtioBlockDriver::~VirtioBlockDriver()
{
	if(_reqDescs[0])
	{
		_virtqueue.deallocateDescriptors(_reqDescs, DescriptorNum);
	}
}
size_t VirtioBlockDriver::readSector(uint64_t sector,size_t num,void * buffer)
{
	// set head,middle,tail
	// setup descriptors
	if(!setupDescriptors())
		return 0;
	// set head command
	_req._type = VirtioBlockRequestRef::REQ_IN;
	_req._sector=sector;

	// set the middle
	_reqDescs[1]->flags() = BufferReadFlags;
	_reqDescs[1]->addr(reinterpret_cast<uint64_t>(buffer));
	_reqDescs[1]->len(num * BLOCK_SIZE);

	// put head into avail
	_virtqueue.pushAvl(_reqDescs[0]);

	notify(CUR_QUEUE);

	return num;
}

size_t VirtioBlockDriver::writeSector(uint64_t sector,size_t num,const void *buffer)
{
	// set head,middle,tail
	// setup descriptors
	if(!setupDescriptors())
		return 0;
	// set head command
	_req._type = VirtioBlockRequestRef::REQ_OUT;
	_req._sector=sector;
	// set the middle
	_reqDescs[1]->flags() = BufferWriteFlags;
	_reqDescs[1]->addr(reinterpret_cast<uint64_t>(buffer));
	_reqDescs[1]->len(num * BLOCK_SIZE);

	// put head into avail
	_virtqueue.pushAvl(_reqDescs[0]);

	notify(CUR_QUEUE);

	return num;
}

bool VirtioBlockDriver::setupDescriptors()
{
	if(!_reqDescs[0])
	{
		if(DescriptorNum > _virtqueue.leftDescriptors())
			return false;
		// must success
		_virtqueue.allocateDescriptros(_reqDescs, DescriptorNum);
		_virtqueue.chainDescriptors(_reqDescs, DescriptorNum);
//		_reqDescs[0]->flags();//device-readonly(default)
		_reqDescs[0]->addr(reinterpret_cast<uint64_t>(_reqSpaces + REQ_BUF_HEAD));
		_reqDescs[0]->len(REQ_HEAD_LEN);
		_req._res0=0;
//		_reqDescs[1]->flags(); // depends on read / write

		// set 2
		_reqDescs[2]->flags() |= bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_WRITE>(); // device-writeonly
		_reqDescs[2]->addr(reinterpret_cast<uint64_t>(_reqSpaces + REQ_BUF_STATUS));
		_reqDescs[2]->len(REQ_STATUS_LEN);
	}

	return true;
}
