/*
 * VirtioDriver.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef SRC_IO_VIRTIO_VIRTIODRIVER_H_
#define SRC_IO_VIRTIO_VIRTIODRIVER_H_
#include <io/MemBasedRegReader.h>
#include <driver/virtio/VirtioQueueDescriptor.h>
#include <driver/virtio/VirtioQueueLayout.h>
#include <utility>
#include <new>
/**
 * 使用mmio方式实现的Virtio
 *
 * @detail 对VERSION_LEGACY的设置
 *  Legacy Interfaces: Virtqueue的布局:
 *  	每个virtqueue占据2个或者多个物理上连续的页，页大小通常是4096字节，由三部分组成：
 *  	[Descriptor Table][Available Ring(..padding...)][Used Ring]
 *
 *  There are two parts to device operation: supplying new buffers to the device, and processing used buffers
from the device.
 *
 */
class VirtioDriver
	:public MemBasedRegReader<true>
{
public:
	/**
	 * 适用于version 2
	 */
	enum R_V2 : MemBasedRegReader::RegOffset{
		V2_MagicValue=0, // 读取域必须返回 "virt",0x74726976
		V2_Version = 0x4,  // 必须返回VERSION_2
		V2_DeviceID = 0x8,          //
		V2_VendorID = 0xC,          //
		V2_DeviceFeatures = 0x10,   // 32bits
		V2_DeviceFeaturesSel = 0x14,// 32bits
		V2_DriverFeatures = 0x20,   // 32bits
		V2_DriverFeaturesSel = 0x24,// 32bits
		V2_QueueSel = 0x34,         //
		V2_QueueNum = 0x38,         //
		V2_QueueReady = 0x44,// 该域为0时，设备决定不能访问Virtqueue.  Writing one (0x1) to this register notifies the device that it can execute requests from this virtual queue. Reading from this register returns the last	value written to it. Both read and write accesses apply to the queue selected		by writing to QueueSel.
		V2_QueueNotify = 0x50,      //
		V2_InterruptStatus = 0x60, //32bits, RO reset时必须全部清0, Reading from this register returns a bit mask of events that caused the device interrupt to be asserted. The following events are possible. bit0=UsedRingUpdate,bit1=ConfigurationChange
		V2_InterruptACK = 0x64,     // 32bits, Writing a value with bits set as defined in InterruptStatus to this register notifies the device that events causing the interrupt have been handled.
		V2_Status = 0x70,           // 16字节，128位
		V2_QueueDescLow = 0x80,     //
		V2_QueueDescHigh = 0x84,    //
		V2_QueueAvailLow = 0x90,    //
		V2_QueueAvailHigh = 0x94,   //
		V2_QueueUsedLow = 0xA0,     //
		V2_QueueUsedHigh = 0xA4,    //
		V2_ConfigGeneration = 0xFC, // 32bits 读取值返回config的唯一标识值，因为读取多余32位的域是非原子性的，而Config域多余32位。 每次需要访问Config时，应当先读取一个该域，访问完成，若无改变，再读取一次该域，仅当确保两次值相同时成功。
		V2_Config = 0x100,  // size = left
	};
	/**
	 * 适用于Version 1，也就是legacy
	 * legacy使用的是基于页的地址，因此控制寄存器布局、设备初始化和virtual queue配置有些许不同
	 *
	 * 这些寄存器的尺寸在技术手册上没有体现出来，但是QEMU的源文件QEMU\tests\libqos\virtio-mmio.c,QEMU\tests\libqos\virtio-mmio.h 体现了怎么使用这些寄存器，因此也暗示了它们的大小。
	 *  总的来说，它们基本上是32位的。
	 */
	enum R_Legacy:MemBasedRegReader::RegOffset{
		V1_MagicValue=0, // 读取域必须返回 "virt",0x74726976
		V1_Version = 0x4,  // 必须返回VERSION_LEGACY
		V1_DeviceID = 0x8,          // 32 bits
		V1_VendorID = 0xC,          // 32bits，,如果virtio设备由QEMU提供，则返回字符串"QEMU"
		V1_HostFeatures = 0x10,   // 32bits,V1_Host = Device, V1_Guest = Driver
		V1_HostFeaturesSel = 0x14,// 32bits
		V1_GuestFeatures = 0x20,   // 32bits
		V1_GuestFeaturesSel = 0x24,// 32bits
		V1_GuestPageSize = 0x28, //32bits, 在初始化过程中设置。应当为2的幂。用于计算Guest的第一个队列的页地址
		V1_QueueSel = 0x30,         //16bits view,32bits physical, 当前使用的队列
		V1_QueueNumMax = 0x34,         //32bits,当前队列
		V1_QueueNum = 0x38,     //32bits, 当前队列的queue_size,Queue Size corresponds to the maximum number of buffers in the virtqueue
		V1_QueueAlign = 0x3C,  //32bits Used Ring的对齐值
		V1_QueuePFN = 0x40,    //32bits, page number, 描述符表的内存页索引。This value is the index number of	a page starting with the queue Descriptor Table
		V1_QueueNotify = 0x50,      //32bits,Writing a queue index to this register notifies the device that there are new buffers to process in the queue.
		V1_InterruptStatus = 0x60, // 32bits,reset时必须全部清0
		V1_InterruptACK = 0x64,     // 32bits,
		V1_Status = 0x70,           // 8bits view,32bits physical
		V1_Config = 0x100,  // size = left
	};

	enum{
		// QEMU 定义的version=1, VENDOR='QEMU'
		MAGIC_VALUE=0x74726976u, /* "virt" string */
		QEMU_VENDOR_ID = 0x554D4551u, /* 'QEMU' */
		QEMU_QUEUE_MAX = 1024,
		VERSION_LEGACY = 1,
		VERSION_2 = 2,
		PAGE_SIZE_4KB = 4096,
		USED_RING_ALIGNMENT = 4096,


	};
	enum DeviceType{
		res_invalid=0, // 仅仅作为一个placeholder
		network_card = 1,
		block_device = 2,
		console = 3,
		entropy_source = 4,
		memory_ballooning_traditional = 5,
		ioMemory = 6,
		rpmsg = 7,
		SCSI_host = 8,
		P9_transport = 9,
		mac80211_wlan = 10,
		rproc_serial = 11,
		virtio_CAIF = 12,
		memory_balloon = 13,
		GPU_device = 16,
		Timer_Clock_device = 17,
		Input_device = 18,
	};

	enum StatusBits{
		S_ACKNOWLEDGE = 0,
		S_DRIVER = 1,
		S_DRIVER_OK = 2,
		S_FEATURES_OK = 3,
		S_DEVICE_NEEDS_RESET = 5,
		S_FAILED = 7,
	};

	enum FeaturesBits{
		VIRTIO_F_VERSION_1 = 32,
		VIRTIO_F_RING_EVENT_IDX = 29,
		VIRTIO_F_RING_INDIRECT_DESC = 28,
		VIRTIO_F_ANY_LAYOUT = 27,
		UNUSED = 30,
		VIRTIO_F_NOTIFY_ON_EMPTY = 24,

		//for example: 0ed4= 0000 1110 1101 0100
		VIRTIO_BLK_F_SIZE_MAX = 1,
		VIRTIO_BLK_F_SEG_MAX = 2,
		VIRTIO_BLK_F_GEOMETRY = 4,
		VIRTIO_BLK_F_RO = 5,
		VIRTIO_BLK_F_BLK_SIZE = 6,
		VIRTIO_BLK_F_FLUSH = 9,
		VIRTIO_BLK_F_TOPOLOGY = 10,
		VIRTIO_BLK_F_CONFIG_WCE = 11,

		// for legacy
		VIRTIO_BLK_F_BARRIER = 0,
		VIRTIO_BLK_F_SCSI = 7,
		VIRTIO_BLK_F_WCE = VIRTIO_BLK_F_FLUSH,//Note: In the legacy interface, VIRTIO_BLK_F_FLUSH was also called VIRTIO_BLK_F_WCE
	};

	template <class ... Args>
	VirtioDriver(Args && ... args)
		: MemBasedRegReader(std::forward<Args>(args)...),
		  _version(0),
		  _deviceID(0),
		  _virtqueue()
		{}

protected:
	/**
	 * The driver MUST start the device initialization by reading and checking values from MagicValue and Version.
If both values are valid, it MUST read DeviceID and if its value is zero (0x0) MUST abort initialization and
MUST NOT access any other register.
	* 这个方法不能被客户端调用，因为只有具体的驱动设备才能完成它自己的初始化过程。
	 */
	void init();
public:

	AS_MACRO VirtioQueueLayout& virtqueue()  {
		return _virtqueue;
	}
	AS_MACRO const VirtioQueueLayout& virtqueue() const {
		return _virtqueue;
	}


	AS_MACRO void notify(uint32_t qIndex=0){ reg32<VirtioDriver::V1_QueueNotify>()=qIndex;}

protected:
	uint8_t  _version;
	uint32_t _deviceID;
	VirtioQueueLayout _virtqueue;
};



#endif /* INCLUDE_IO_VIRTIO_VIRTIODRIVER_H_ */
