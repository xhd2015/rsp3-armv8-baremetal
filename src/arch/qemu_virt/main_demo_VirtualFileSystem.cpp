
#include <def.h>
#include <io/IntegerFormatter.h>
#include <interrupt/InterruptManager.h>
#include <interrupt/GenericTimer.h>
#include <interrupt/InterruptHandler.h>
#include <io/Output.h>
#include <memory/MemoryManager.h>
#include <memory/VirtualManager.h>
#include <new>
#include <io/uart/PL011.h>
#include <cstring>
#include <schedule/Process.h>
#include <schedule/ProcessManager.h>
#include <schedule/PidManager.h>
#include <io/VirtioSectorReader.h>
#include <io/virtio/VirtioBlockDriver.h>
#include <io/SectorReaderToByteReader.h>
#include <filesystem/VirutalFileSystem.h>
#include <filesystem/FAT32VirtualFile.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <filesystem/fat/FAT32EntryTable.h>

// 此文件示例了如何使用VirtualFileSystem
//    首先，需要一个块设备驱动器，这是通过VirtioBlockDriver实现的
//    提供一个ByteReader
//    然后使用FAT32VirtualFile来读取BPB结构和FAT表
//    初始化一个vfs,并加入一个fat32类型的文件系统节点
//    显示文件系统的根目录的文件内容。

#define GIC_DIST_BASE 0x08000000
#define GIC_REDIST_BASE 0x080A0000
#define GIC_REDIST_RD_BASE  (GIC_REDIST_BASE)
#define GIC_REDIST_SGI_BASE (GIC_REDIST_RD_BASE + 1024*64)
extern char ExceptionVectorEL1[];

int main()
{
	// determinte current EL
	auto curEl = RegCurrentEL::read();
	if(curEl.EL != 1)
	{
		kout << FATAL << "This program is designed to run at EL1\n";
		return 1;
	}
	// 在启用mmu之前，进行必要的组件初始化
	new (&pl011) PL011(UART_BASE);
	pl011.init();
    new (&intHandler) InterruptHandler();
	new (&intm) InterruptManager(
			reinterpret_cast<char*>(GIC_DIST_BASE),
			reinterpret_cast<char*>(GIC_REDIST_BASE));
	extern char ramStart[];
	extern char ramEnd[];
	size_t ramSize = static_cast<size_t>(ramEnd - ramStart);
	new (&mman) MemoryManager(ramStart, ramSize,true);
	new (&virtman) VirtualManager();
	new (&vfs) VirtualFileSystem();

	// 初始化中断，但是目前屏蔽了所有的中断
	int status=intm.init(
			ExceptionVectorEL1,
			true,
			EOIMode::ack_priority_drop_and_deactivation,
			0xFE,
			0xF0);
	if(status!=0)
		return status;

	// 至少包含2个对齐的PAGE
	void * queueBuffer = mman.allocate(2*VirtioDriver::PAGE_SIZE_4KB,VirtioDriver::PAGE_SIZE_4KB);
	if(!queueBuffer)
		return 1;
	// 对齐处的地址
	uint64_t pageAddr = reinterpret_cast<uint64_t>(queueBuffer)/VirtioBlockDriver::PAGE_SIZE_4KB;
	VirtioBlockDriver vio(VIRTIO_0_BASE);
	size_t descrNum=10;
	vio.init(
			pageAddr, // 队列的页地址
			descrNum, // 队列的大小，legacy需要3个，[0]=8byte,3fields, [1]=data,[2]=1byte status

			// 后面这四个参数用于初始化VirtioQueueLayout
			reinterpret_cast<void*>(pageAddr*VirtioBlockDriver::PAGE_SIZE_4KB), // virtqueue的基地址
			descrNum, // virtqueue的大小
			VirtioDriver::USED_RING_ALIGNMENT, // RING的对齐要求
			true  // 是否初始化区域的值为0
			);

	VirtioSectorReader  vioSecReader(vio);
	SectorReaderToByteReader byteReader(vioSecReader);

	FAT32ExtBPB bpb;
	FAT32EntryTable fat;
	FAT32VirtualFile::readBPB(byteReader, bpb);
	FAT32VirtualFile::readFAT(byteReader, bpb, fat);
	auto fatNode = FAT32VirtualFile::makeRootFile(byteReader, bpb, fat);

	vfs.addRootFile(fatNode);
	kout << "name : " << fatNode->name() << "\n";

	/*
	 * 注： 根分区的文件名有：(26个，该分区是从树莓派的启动分区获取的)
bcm2708-rpi-0-w.dtb     bootcode.bin   fixup_x.dat       start_cd.elf
bcm2708-rpi-b.dtb       cmdline.txt    issue.txt         start_db.elf
bcm2708-rpi-b-plus.dtb  config.txt     kernel7.img       start.elf
bcm2708-rpi-cm.dtb      COPYING.linux  kernel.img        start_x.elf
bcm2709-rpi-2-b.dtb     fixup_cd.dat   LICENCE.broadcom  xxxhhhddd
bcm2710-rpi-3-b.dtb     fixup.dat      LICENSE.oracle
bcm2710-rpi-cm3.dtb     fixup_db.dat   overlays
	 */
	// 使用普通的方法显示所有的文件名
	fatNode->fatDirTable().showAllFileNames();

	// 使用lambda 显示
	fatNode->foreachFile([](VirtualFile *f){
		FAT32VirtualFile* f32 = f->castAsSubType<FAT32VirtualFile>();
		kout << f32->name() << "\n";
	});

	// TODO 使sreader等置于堆中
	asm_wfe_loop();

	return 0;
}
