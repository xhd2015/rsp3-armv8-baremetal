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
#include <cstring>
#include <generic/cpu.h>
#include <new>

int main()
{
	VirtioDriver vio(VIRTIO_0_BASE);
	vio.init();

	kout << "Magic value is " << Hex(vio.reg32<VirtioDriver::V2_MagicValue>()) << "\n";
	kout << "Version = " << vio.reg32<VirtioDriver::V2_Version>() << "\n";
	kout << "VendorID = " << Hex(vio.reg32<VirtioDriver::V2_VendorID>()) << "\n";
	kout << "DeviceID = " << Hex(vio.reg32<VirtioDriver::V2_DeviceID>()) << "\n";
	kout << "HostFeatures = " << Hex(vio.reg32<VirtioDriver::V1_HostFeatures>()) << "\n";
	kout << "GuestPageSize = " << Hex(vio.reg32<VirtioDriver::V1_GuestPageSize>()) << "\n";
	kout << "DeviceStatus = " << Hex(vio.reg32<VirtioDriver::V1_Status>()) << "\n";
	kout << "QueueNumMax = " << vio.reg32<VirtioDriver::V1_QueueNumMax>() << "\n";


	auto blkConf = vio.regcopy<VirtioBlockConfig,VirtioDriver::V1_Config>();
	blkConf.dump();

//	return 0;

	// 至少包含2个对齐的PAGE
	char queueBuffer[VirtioDriver::PAGE_SIZE_4KB*3];
	// 对齐处的地址
	uint64_t pageAddr = alignAhead(reinterpret_cast<uint64_t>(queueBuffer),VirtioDriver::PAGE_SIZE_4KB);

	// legacy需要3个，[0]=8byte,3fields, [1]=data,[2]=1byte status
	size_t descrNum = 4;
	uint16_t startDescrIndex=1;
	constexpr size_t readBytes =
//			3
			// 512*3-1  // invalid
			512*3 // 必须是512的n倍
			;
	// qsize
	// mem_size
	//
	VirtioQueueLayout vq(reinterpret_cast<void*>(pageAddr),descrNum,VirtioDriver::USED_RING_ALIGNMENT);

	auto memSize = vq.memSize();
	kout << "virtqueue memSize = " << memSize << "\n";
	// 应当清0
	std::memset(vq.queueBase(), 0, memSize);

	// reqeust
	size_t blkNum = 1;
	size_t reqBufSize = VirtioBlockRequestRef::memSize(blkNum);
	if(reqBufSize >= readBytes + 512)
	{
		kout << FATAL << "req size overflows\n";
		return 1;
	}

	// 至少包含readBytes个
	char reqBuf[readBytes+512];

	VirtioBlockRequestRef vreq(reqBuf,blkNum,VirtioBlockRequestRef::REQ_IN,0);
	const char * invalidStr = "if you see this, then it is invalid\n";
	std::memcpy(vreq.data(),invalidStr,std::strlen(invalidStr));


	VirtioQueueDescriptor * descs[3];
	vq.allocateDescriptros(descs, 3);
	vq.chainDescriptors(descs, 3);
//	descs[0]

	// DW = DeviceWriteOnly,DR = DeviceReadOnly
	// [0]=header,DR,[1]=status,DW[2]=empty buffer,DW
	// or
	// [0] = header + status + empty buffer, DW
	// 前一个用于legacy模式
	auto descTable = vq.descTable();
	new (&descTable[startDescrIndex]) VirtioQueueDescriptor(reinterpret_cast<uint64_t>(vreq.base()),16,bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_NEXT>(),startDescrIndex+1);
	new (&descTable[startDescrIndex+1]) VirtioQueueDescriptor(descTable[startDescrIndex+1].addr() + 16,readBytes,bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_NEXT,VirtioQueueDescriptor::VIRTQ_DESC_F_WRITE>(),startDescrIndex+2);
	new (&descTable[startDescrIndex+2]) VirtioQueueDescriptor(descTable[startDescrIndex+2].addr() + readBytes,1,bitOnes<VirtioQueueDescriptor::VIRTQ_DESC_F_WRITE>(),0);

	// 注意, old_idx和new_idx之间的差值就是本次请求的数目
	auto & avRef = vq.availRing();
	avRef.idx(1); //
	avRef.ring()[0]=startDescrIndex;// header
//	avRef.ring()[1]=startDescrIndex + 1;
	/*
	下面这些寄存器只写
	case VIRTIO_MMIO_DEVICE_FEATURES_SEL:
    case VIRTIO_MMIO_DRIVER_FEATURES:
    case VIRTIO_MMIO_DRIVER_FEATURES_SEL:
    case VIRTIO_MMIO_GUEST_PAGE_SIZE:
    case VIRTIO_MMIO_QUEUE_SEL:
    case VIRTIO_MMIO_QUEUE_NUM:
    case VIRTIO_MMIO_QUEUE_ALIGN:
    case VIRTIO_MMIO_QUEUE_NOTIFY:
    case VIRTIO_MMIO_INTERRUPT_ACK:

	// 下面这些寄存器只读
    case VIRTIO_MMIO_MAGIC_VALUE:
    case VIRTIO_MMIO_VERSION:
    case VIRTIO_MMIO_DEVICE_ID:
    case VIRTIO_MMIO_VENDOR_ID:
    case VIRTIO_MMIO_DEVICE_FEATURES:
    case VIRTIO_MMIO_QUEUE_NUM_MAX:
    case VIRTIO_MMIO_INTERRUPT_STATUS:

	 */
/*
 *
		The virtual queue is configured as follows:
		1. Select the queue writing its index (first queue is 0) to QueueSel.
		2. Check if the queue is not already in use: read QueuePFN, expecting a returned value of zero (0x0).
		3. Read maximum queue size (number of elements) from QueueNumMax. If the returned value is zero
		(0x0) the queue is not available.
		4. Allocate and zero the queue pages in contiguous virtual memory, aligning the Used Ring to an optimal boundary (usually page size). The driver should choose a queue size smaller than or equal to
		QueueNumMax.
		5. Notify the device about the queue size by writing the size to QueueNum.
		6. Notify the device about the used alignment by writing its value in bytes to QueueAlign.
		7. Write the physical number of the first page of the queue to the QueuePFN register.
 *
 *
 */
	vio.reg32<VirtioDriver::V1_QueueSel>() = 0; // set current
	vio.reg32<VirtioDriver::V1_QueueNum>()=descrNum; // set current queue size
	vio.reg32<VirtioDriver::V1_QueuePFN>() = pageAddr / VirtioDriver::PAGE_SIZE_4KB; // 设置PFN

	// notify index 0 completed
	vio.reg32<VirtioDriver::V1_QueueNotify>()=0; // which queue?

	// wait to complete
	delayCPU(1000*1000);

	kout << "=====read data is \n";
	kout.print(reinterpret_cast<const char*>(vreq.data()),readBytes);
	kout << "\n=================\n";

	/*

	 Historically, many drivers ignored the len value, as a result, many devices set len incorrectly. Thus, when
using the legacy interface, it is generally a good idea to ignore the len value in used ring entries if possible.
Specific known issues are listed per device type.

 	 对于block device,
 	 When using the legacy interface, transitional drivers SHOULD ignore the len value in used ring entries.
Note: Historically, some devices put the total descriptor length, or the total length of device-writable buffers
there, even when only the status byte was actually written.
	也就是说，legacy 模式下的len应当忽略
	在实践中，len返回的总是readBytes + 1,因此应当忽略。

	 */
	// 读取usedRing
	// 同样,old_idx和new_idx之间的差值也体现了本次完成的数目
	auto &usedRingRef = vq.usedRing();
	kout << "used ring idx = " << usedRingRef.idx() << "\n";
	kout << "ring[0]{id,len} = " << usedRingRef.ring()[0]._id  << "," << usedRingRef.ring()[0]._len<< "\n";
//	kout << "ring[1]{id,len} = " << usedRingRef.ring()[1]._id  << "," << usedRingRef.ring()[1]._len<< "\n";

	return 0;
}
