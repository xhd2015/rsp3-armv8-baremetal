

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