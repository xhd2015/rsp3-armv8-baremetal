/*
 * main_test_virtio.cpp
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#include <def.h>
#include <io/Output.h>
#include <io/virtio/VirtioDriver.h>
#include <io/IntegerFormatter.h>
#include <io/virtio/VirtioBlockConfig.h>
#include <io/virtio/VirtioQueueDescriptor.h>
#include <io/virtio/VirtioQueueLayout.h>
#include <io/virtio/VirtioBlockRequest.h>
#include <io/virtio/VirtioBlockDriver.h>
#include <cstring>
#include <generic/cpu.h>
#include <new>

int main()
{
	// 至少包含2个对齐的PAGE
	char queueBuffer[VirtioDriver::PAGE_SIZE_4KB*3];
	// 对齐处的地址
	uint64_t pageAddr = alignAhead(reinterpret_cast<uint64_t>(queueBuffer),VirtioDriver::PAGE_SIZE_4KB);

	// legacy需要3个，[0]=8byte,3fields, [1]=data,[2]=1byte status
	size_t descrNum = 4;
	constexpr size_t readSec = 3;
	constexpr size_t readBytes = readSec*VirtioBlockDriver::BLOCK_SIZE;

	VirtioBlockDriver vio(VIRTIO_0_BASE);

	vio.init(pageAddr/VirtioBlockDriver::PAGE_SIZE_4KB,descrNum,reinterpret_cast<void*>(pageAddr), descrNum,VirtioDriver::USED_RING_ALIGNMENT,true);

	char writeBuf[readBytes] = {0};
	const char * writeStr = "this is written by VirtioBlockDriver\n";
	std::memcpy(writeBuf,writeStr,std::strlen(writeStr)+1);


	vio.writeSector(0, readSec,writeBuf);
	// wait to complete
	delayCPU(1000*1000);


	char readBuf[readBytes] = {0};
	const char * invalidStr = "if you see this, then it is invalid\n";
	std::memcpy(readBuf, invalidStr, std::strlen(invalidStr)+1);


	vio.readSector(0, readSec, readBuf);
	delayCPU(1000*1000);

	kout << "=====read data is \n";
	kout.print(readBuf,readBytes);
	kout << "\n=================\n";

	// 读取usedRing
	// 同样,old_idx和new_idx之间的差值也体现了本次完成的数目
	auto &usedRingRef = vio.virtqueue().usedRing();
	kout << "used ring idx = " << usedRingRef.idx() << "\n";
	kout << "ring[0]{id,len} = " << usedRingRef.ring()[0]._id  << "," << usedRingRef.ring()[0]._len<< "\n";

	return 0;
}
