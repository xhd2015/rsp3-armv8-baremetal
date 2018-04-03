
# 总体描述
本文档描述的版本是virtio的version=1，即legacy接口，并且此接口基于内存映射的传输方式（不同于PIC)

对于version=2的版本，它们具有相似的函数，在将来会做出介绍。

virtio的提出与半虚拟化有直接的联系，virtio本身就是用于虚拟机的。在虚拟机上，完全模拟IO设备所导致的问题就是IO性能的下降，而实际上虚拟机只是主机上的一个进程，理论上来说，该进程中的IO的性能应该和主机的IO性能一样，这就是virtio提出的基本目标。

virtio将一个IO分为两部分：Host(或称Device)端，以及Guest(或称Driver)端。内存映射的virtio设备由设备树描述，包括virtio设备的地址，以及其寄存器框架的范围，比如
```c++
    // EXAMPLE: virtio_mmio device占据了0xa000000地址空间的512字节
	virtio_mmio@a000000 {
		dma-coherent;
		interrupts = <0x0 0x10 0x1>;
		reg = <0x0 0xa000000 0x0 0x200>;
		compatible = "virtio,mmio";
	};
```
该项描述了一个virtio_mmio设备，其地址是0xa000000, 大小是0x200(512)字节。

virtio的寄存器框架分为两个部分： 通用部分和设备专属的配置部分。通用部分的描述如下：
```c++
		V1_MagicValue=0, // 读取域必须返回 "virt",0x74726976
		V1_Version = 0x4,  // 必须返回VERSION_LEGACY
		V1_DeviceID = 0x8,          // 32 bits
		V1_VendorID = 0xC,          // 32bits,如果virtio设备由QEMU提供，则返回字符串"QEMU"，0x554D4551
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
```

其中Version寄存器决定了该设备支持的接口，1表示legacy接口，2表示最新的接口。DeviceID表明设备的类型，同时也决定了Config部分的布局。

以块设备为例：其DeviceID=2， Config的布局如下：
```C++
class VirtioBlockConfig{
public:
	uint64_t capacity;
	uint32_t size_max;
	uint32_t seg_max;
	struct VirtioBlockGeometry {
		uint16_t cylinders;
		uint8_t heads;
		uint8_t sectors;
	} geometry;
	uint32_t blk_size;
	struct VirtioBlockTopology {
		// # of logical blocks per physical block (log2)
		uint8_t physical_block_exp;
		// offset of first aligned logical block
		uint8_t alignment_offset;
		// suggested minimum I/O size in blocks
		uint16_t min_io_size;
		// optimal (suggested maximum) I/O size in blocks
		uint32_t opt_io_size;
	} topology;
	uint8_t writeback;
}__attribute__((packed));
```

接下来我们将会描述virtio的基本功能。首先，virtio设备需要一个初始化过程，在该过程中，驱动和设备约定共同支持的特征。然后，virtio设备进入工作状态。

重点在于virtio设备的工作状态，它维持一个称为virtqueue的数据结构，该数据结构由3部分组成：缓冲区描述符表、可用的请求索引和已完成的请求索引。

缓冲区描述符表的每一个项描述了一块内存区域，该内存区域可以用于设备读或者设备写。驱动发出一个请求时，首先准备好发送的请求元信息（也就是头部，告知需要的起始地址，字节数量），然后在准备另一片相应的内存区域，该区域用于设备根据请求信息写入数据。如果有必要，驱动还需要准备一个附加的缓冲区，该缓冲区只包含一个字节，用于设备写入操作的状态。

在准备好必要的缓冲区之后，在缓冲区描述符表中查找同等数量的可用描述符，使它们指向这些缓冲区，同时通过next域链接起来。

之后，根据请求的数量，在增加`可用的请求索引`的idx域之前，先在old_idx和new_idx之间设置所有的项的值为每个请求的头部描述符的索引，然后更新idx域，并通过notify接口写入通知队列内容改变。

最后，等待中断发生，或者循环检测`已完成的请求索引`，直到写入在`可用的请求索引`出现，此次请求即完成。

# Virtio设备的基本功能
每个设备由下面的部分组成：
1.状态域
2.特征位
3.设备配置空间
4.一个或者多个virtqueues

## 状态位
提供了对设备状态的低级描述。

域：（含义参见初始化过程）

ACKNOWLEDGE(1)
DRIVER(2)
FAILED(128)
FEATURES_OK(8)
DRIVER_OK(4)
DEVICE_NEEDS_RESET(64)

驱动必须更新状态域，以表明驱动完成设备初始化所处的阶段。驱动绝对不能清除状态位。

如果驱动设置了FAILED位，则设备必须尝试重新初始化。

当DEVICE_NEEDS_RESET设置时，驱动应当停止所有操作。

设备在reset之后，状态位置为0。

在DRIVER_OK之前，设备绝对不能消费任何buffer或者通知驱动器。

当设备有错误，需要重置时，应当设置DEVICE_NEEDS_RESET位。如果设备设置了DEVICE_NEEDS_RESET位，但是驱动接下来又设置了DRIVER_OK，则设备必须通知驱动：配置已经改变。

## 特征位
每个virtio设备提供了所有该设备能够理解的特征，在设备初始化过程中，驱动读取该域然后告诉设备它能接受的子集。

重新协商特征子集的唯一方法是重置设备。

该域允许向后兼容性：当新设备支持新特征时，实际上旧的驱动可以不使用这些特征。相应地，新驱动也可以支持旧设备。

特征域的分配：
0-23   特定设备类型的特征

24-32  为将来保留的队列和特征协商机制保留

33-以上  为将来保留 

驱动必须不能接受一个设备没有提供的特征，也不能接受一个依赖不支持的特征的特征。

驱动在设备没有提供一个期望的特征时，应当进入兼容模式，或者直接将设备设置为FAILED。

设备必须不能提供一个依赖但未提供的特征的特征，如果设备不能接受某个特征子集，则设置FEATURES_OK位时必须失败。

## 设备配置空间
设备配置空间主要用于配置那些基本上不改变的或者初始化是设置的参数。

驱动设备不能假定读取多余32位的域是原子性的，或者从多个域的读是原子性的，读取只能按照下面的方式：

```c++
u32 before,after;
do{
    before = get_config_generation(device);
    after = get_config_generation(device);
}while(after != before)
```

对于特定的域，驱动必须检查相应的特征位是否设置。

驱动不能限制结构体的大小，也不能限制设备配置空间的大小。相反，驱动只应当检查设备配置空间是否足够大以包含必要的域。

设备必须允许驱动读取任何一个该空间的域，即使在FEATURES_OK设置之前。

## virtqueues
每个virtqueue由下面的三个部分组成：
1.描述符表(必须16字节对齐, 大小=16*queue_size)

2.可用的环形缓冲区(必须2字节对齐,大小=6+2*queue_size)

3.已用的环形缓冲区(必须4字节对齐,大小=6+8*queue_size)

注意qeueue_size,每个virtqueue都有这样一个16位的参数。queue_size与virtqueue中的最大缓冲区数目对应，该值总是2的幂，最大值是32768.

当驱动想要向设备发送一个缓冲区，它先填充描述符表的一个空位(或者将几个描述符链接起来), 然后向可用环形缓冲区表中写入描述符的下标，然后通知设备。

当设备使用完一个缓冲区，它将描述符下标写回已用的环形缓冲区，然后发送一个中断。

注意：必须保证virtqueue的每个域的地址按要求对齐。


# 基于MMIO的virtio
多数操作与PCI相同，但是发现virtio设备的方式必须是通过dtb设备树，下面的例子展示了一个virtio的设备：
```c++
    // EXAMPLE: virtio_mmio device占据了0xa000000地址空间的512字节
	virtio_mmio@a000000 {
		dma-coherent;
		interrupts = <0x0 0x10 0x1>;
		reg = <0x0 0xa000000 0x0 0x200>;
		compatible = "virtio,mmio";
	};
```

# MMIO设备寄存器布局

Name      Offset    Direction     Function

MagicValue 0         R            0x74726976(字符串"virt")

Version   0x4       R            设备版本，0x2(legacy 是0x1)

DeviceID  0x8       R            Virtio Subsystem Device ID

VendorID  0xc      R              Virtio Subsystem Vendor ID

DeviceFeatures  0x10   R     设备支持的特征，返回的特征是在 Features[DeviceFeaturesSel]定义的范围，比如0对应0-31, 1对应32-63，等。

DeviceFeaturesSel 0x14  W    主机设置的特征

DriverFeatures    0x20  W    由驱动识别和使用的设备特征

DriverFeaturesSell  0x24  W  使用的特征

QueueSel   0x30    W   Virtual queue index

ConfigGeneration  0xFC  R   Configuration atomicity value

Config      0x100+  RW   配置空间，设备特有的配置空间。


# 设备操作
设备操作分为两个部分：为设备提供新的缓冲区，处理已经使用过的缓冲区。

比如说，当网络设备有数据到来时，主机分配内存空间，接收数据，在处理完后，又将这些空间回收掉。

## 为设备提供新的缓冲区
1.驱动将缓冲区指针放入free描述符（描述符表），必要地链接它们

2.驱动将描述符链的索引放入available ring的下一项

3.重复1,2直到所有设置的缓冲区的加入

4.驱动通过内存屏障指令来更新描述符表，以便设备能够获取更新的表以及下一个可用的ring

5.使可用的`idx`增加相应的数目

6.驱动通过内存屏障指令确保`idx`域在检查通知屏蔽之前被更新

8.如果通知没有被屏蔽，则驱动通知设备新的可用的缓冲区


状态域： 
# 初始化
必须遵循下面的初始化序列：

1.重置(reset)设备

2.设置ACKNOWLEDGE位，表明OS感知到该设备

3.设置DRIVER位，表明OS直到该如何驱动该设备

4.读取特征位，然后写入OS能够理解的特征位（一个子集）

5.设置FEATURES_OK位，此后，设备不再接受任何新的特征设置

6.重新读取状态，确保FEATURES_OK位设置。如果没有，则表明设备不支持给定的特征集合，因此该设备也是不可用的。

7.对设备作出设置，包括发现设备的virtqueues， 读取和写入设备的virtio配置空间，virtqueues的大小。

8.设置DRIVER_OK状态位，将设备置为活动状态。

如果上面的任何一步错误，则驱动应当设置FAILED位表明设备必须被重新初始化，此时不能继续下去。


# 设备类型
## 网络设备
## 块设备
Device ID=2
Virtqueues = 0 requestq

Feature bits:
VIRTIO_BLK_F_SIZE_MAX(1)
VIRTIO_BLK_F_SEG_MAX(2)
VIRTIO_BLK_F_GEOMETRY(4)  disk(chs)格式的的布局
VIRTIO_BLK_F_RO(5)   只读
VIRTIO_BLK_F_BLK_SIZE(6)  
VIRTIO_BLK_F_FLUSH(9)  缓存刷新命令支持
VIRTIO_BLK_F_TOPOLOGY(10)  IO对齐
VIRTIO_BLK_F_CONFIG_WCE(11)  缓存模式

传统接口： Feature bits
VIRTIO_BLK_F_BARRIER(0)  设备是否支持屏障请求
VIRTIO_BLK_F_SCSI(7)    设备是否支持scsi包命令

配置空间：
```c++
struct virtio_blk_config {
    le64 capacity;
    le32 size_max;
    le32 seg_max;
    struct virtio_blk_geometry {
        le16 cylinders;
        u8 heads;
        u8 sectors;
    } geometry;
    le32 blk_size;
    struct virtio_blk_topology {
        // # of logical blocks per physical block (log2)
        u8 physical_block_exp;
        // offset of first aligned logical block
        u8 alignment_offset;
        // suggested minimum I/O size in blocks
        le16 min_io_size;
        // optimal (suggested maximum) I/O size in blocks
        le32 opt_io_size;
    } topology;
    u8 writeback;
};
```

设备初始化：
    1.设备的大小可以从capacity中读取
    2.如果VIRTIO_BLK_F_BLK_SIZE允许，则blk_size可以确定sector的size。 但是协议使用的块大小总是512字节
    3.VIRTIO_BLK_F_RO == 只读，写操作失败
    4.VIRTIO_BLK_F_TOPOLOGY == 则topology可以读取决定物理的块大小和合适的IO长度。
    5.VIRTIO_BLK_F_CONFIG_WCE == cache writeback

设备操作：
驱动的队列请求virtqueue, 每个请求的格式如下：
```c++
struct virtio_blk_req{
    le32 type;
    le32 reserved;
    le64 sector;
    u8 data[][512];
    u8 status;
}__attribute__((packed)；

// type的类型：
#define VIRTIO_BLK_T_IN 0
#define VIRTIO_BLK_T_OUT 1
#define VIRTIO_BLK_T_FLUSH 4

// sector的设置
// 对于flush和scsi命令，sector=0

// status 位由设备写入
// OK表示成功，IOERR表示失败，UNSUPP表示请求不支持
#define VIRTIO_BLK_S_OK 0
#define VIRTIO_BLK_S_IOERR 1
#define VIRTIO_BLK_S_UNSUPP 2
```

如果设备提供了VIRTIO_BLCK_F_RO，则驱动必须接受（也就是说如果是只读的，则驱动也只能接受这样的配置）

发送VIRTIO_BLK_T_FLASH时，sector必须设置为0，并且不应当包含任何数据。

如果支持VIRTIO_BLK_F_CINFIG_WCE, 则writeback域表明是否支持writeback缓存，如果为0，表明应当使用writethrough。

在只读的情况下如果驱动发送了写命令，则状态位VIRTIO_BLK_S_IOERR应当被设置，同时不应当写任何数据。


## 控制台设备
## Entropy设备
## 传统的Memory Balloon设备
## SCSI主机设备