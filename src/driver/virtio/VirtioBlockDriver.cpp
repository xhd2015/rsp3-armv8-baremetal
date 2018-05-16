/*
 * VirtioBlockDriver.cpp
 *
 *  Created on: Mar 26, 2018
 *      Author: 13774
 */

#include <driver/virtio/VirtioBlockDriver.h>
#include <memory/MemoryManager.h>
#include <driver/virtio/VirtioBlockRequest.h>
#include <io/Output.h>
#include <memory/VirtualManager.h>
#include <generic/error.h>

VirtioBlockDriver::~VirtioBlockDriver()
{
	if(_reqDescs[0])
	{
		_virtqueue.deallocateDescriptors(_reqDescs, DescriptorNum);
	}
}
void VirtioBlockDriver::init(void *vqAddr,size_t descrNum,size_t pageSize,size_t usedRingAlignment,bool doInit)
{
	VirtioDriver::init();
	auto phyAddr=virtman.translateVAToPA(vqAddr);
	// 因为是legacy的，所以不能支持超过32位的物理页基地址
	uint64_t pfn64=reinterpret_cast<uint64_t>(phyAddr)/pageSize;
	assert(pfn64 <= UINT32_MAX);
	if(descrNum<DescriptorNum)
		descrNum=DescriptorNum;
	reg32<VirtioDriver::V1_QueueSel>() = CUR_QUEUE; // set current
	reg32<VirtioDriver::V1_QueueNum>() = descrNum; // set current queue size
	reg32<VirtioDriver::V1_GuestPageSize>() = pageSize;
	reg32<VirtioDriver::V1_QueueAlign>() = usedRingAlignment;
	reg32<VirtioDriver::V1_QueuePFN>() =  static_cast<uint32_t>(pfn64);
	// NOTE 这里，pfn确实只是32位的，尽管向其写入了64位的地址，但是读取时却只获得32位值
//	reg64<VirtioDriver::V1_QueuePFN>() = pfn;
//	auto a=reg64<VirtioDriver::V1_QueuePFN>();
//	(void)a;
	new (&_virtqueue) VirtioQueueLayout(
			vqAddr,
			descrNum,
			usedRingAlignment,
			doInit
			);
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
//	_reqDescs[1]->addr(reinterpret_cast<uint64_t>(buffer));
	_reqDescs[1]->addr(reinterpret_cast<uint64_t>(virtman.translateVAToPA(buffer)));
	_reqDescs[1]->len(num * BLOCK_SIZE);

	// put head into avail
	_virtqueue.pushAvl(_reqDescs[0]);

	auto oldIdex=currentUsedIdx();
	notify(CUR_QUEUE);
	waitCompleted(oldIdex);
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
//	_reqDescs[1]->addr(reinterpret_cast<uint64_t>(buffer));
	_reqDescs[1]->addr(reinterpret_cast<uint64_t>(virtman.translateVAToPA(buffer)));
	_reqDescs[1]->len(num * BLOCK_SIZE);

	// put head into avail
	_virtqueue.pushAvl(_reqDescs[0]);

	auto oldIdex=currentUsedIdx();
	notify(CUR_QUEUE);
	waitCompleted(oldIdex);

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
//		_reqDescs[0]->addr(reinterpret_cast<uint64_t>(_reqSpaces + REQ_BUF_HEAD));
		_reqDescs[0]->addr(reinterpret_cast<uint64_t>(virtman.translateVAToPA(_reqSpaces + REQ_BUF_HEAD)));
		_reqDescs[0]->len(REQ_HEAD_LEN);
		_req._res0=0;
//		_reqDescs[1]->flags(); // depends on read / write

		// set 2
		_reqDescs[2]->flags() |= bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_WRITE>(); // device-writeonly
//		_reqDescs[2]->addr(reinterpret_cast<uint64_t>(_reqSpaces + REQ_BUF_STATUS));
		_reqDescs[2]->addr(reinterpret_cast<uint64_t>(virtman.translateVAToPA(_reqSpaces + REQ_BUF_STATUS)));
		_reqDescs[2]->len(REQ_STATUS_LEN);
	}

	return true;
}
size_t  VirtioBlockDriver::maximumDescriptorNum(size_t pageSize)
{
	size_t elemSize = VirtioQueueDescriptor::variableSpanSize() + VirtioQueueAvailableRef::variableSpanSize();
	size_t contantSize = VirtioQueueAvailableRef::constantSpanSize();
	size_t page1Num = (pageSize-contantSize) / elemSize;
	size_t page2Num = VirtioQueueUsedRef::maximumElementNum(pageSize);
	return (page1Num > page2Num)? page2Num:page1Num; // 两个最大值中的最小者
}
