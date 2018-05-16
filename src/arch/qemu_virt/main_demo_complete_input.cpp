
#include <def.h>
#include <io/IntegerFormatter.h>
#include <interrupt/InterruptManager.h>
#include <interrupt/GenericTimer.h>
#include <interrupt/InterruptHandler.h>
#include <io/Output.h>
#include <memory/MemoryManager.h>
#include <memory/VirtualManager.h>
#include <new>
#include <driver/uart/PL011.h>
#include <cstring>
#include <schedule/Process.h>
#include <schedule/ProcessManager.h>
#include <schedule/PidManager.h>
#include <io/block/VirtioSectorReader.h>
#include <driver/virtio/VirtioBlockDriver.h>
#include <io/block/SectorReaderToByteReader.h>
#include <filesystem/VirutalFileSystem.h>
#include <filesystem/FAT32VirtualFile.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <filesystem/fat/FAT32EntryTable.h>
#include <memory/VirtualAddress.h>
#include <memory/VirtualMap.h>
#include <generic/error.h>
#include <data/Vector.h>
#include <data/String.h>
#include <data/Queue.h>
#include <io/Input.h>
#include <interrupt/GICDefinitions.h>


// 展示了内核的初始化过程： 中断，虚拟内存，内存管理，定时器，输入缓冲区等的设置
extern char ExceptionVectorEL1[];
extern char __stack_top[];
extern const char user_space_start[];
extern uint64_t __vt_rom_begin[];
extern uint64_t __vt_end[];
extern uint64_t __vt_begin[];
extern char ramStart[];
extern char ramEnd[];

void main_mmu_set();

int main()
{
	// 从vt_rom_begin复制到vt_begin
	std::memcpy(__vt_begin,
			__vt_rom_begin,
			(__vt_end - __vt_begin)*sizeof(__vt_begin[0]));

	// 初始化输出
	new (&pl011) PL011(UART_BASE);
	pl011.init();
	// determinte current EL
	auto curEl = RegCurrentEL::read();
	if(curEl.EL != 1)
	{
		kout << FATAL << "This program is designed to run at EL1\n";
		return 1;
	}
	// TODO 完善初始化过程，kout等

	// 初始化4个必须的组件
	size_t ramSize = static_cast<size_t>(ramEnd - ramStart);
	new (&mman) MemoryManager(ramStart, ramSize,true);
    new (&intHandler) InterruptHandler<InterruptManager>(&intm);
	new (&intm) InterruptManager(
			reinterpret_cast<char*>(GIC_DIST_BASE),
			reinterpret_cast<char*>(GIC_REDIST_BASE));
	new (&virtman) VirtualManager();
	new (&kout) Output(nullptr);

	// 初始化中断，但是目前屏蔽了所有的中断
	// 依赖于 InterruptHandler
	int status=intm.init(
			ExceptionVectorEL1,
			EOIMode::ack_priority_drop_and_deactivation,
			0xFE,
			0xF0);
	if(status!=0)
		return status;

	// 请在这里插入测试
	// ====== TEST START
//	new (&kin) Input();
//	new (&inputBuffer) Queue<uint16_t>(512);
//	while(true)
//	{
//		char ch;
//		kin >> ch;
//		while(!pl011.hasReceiveData());
//		ch = pl011.readDataNonBlocked();
//		kout << ch;
//	}
	//==== TEST END



	// 启用MMU
	Vector<AddressSpaceDescriptor> config;
	config.pushBack(AddressSpaceDescriptor{reinterpret_cast<void*>(RAM_START),RAM_SIZE ,AddressSpaceDescriptor::T_NORMAL,false,true,false});
	config.pushBack(AddressSpaceDescriptor{reinterpret_cast<void*>(PERIPHBASE),PERIPHSIZE,AddressSpaceDescriptor::T_PERIPHERAL,false,false,false});

	auto fullConfig=VirtualManager::makeFullOrderedDescriptors(config);
	assert(fullConfig.size()!=0);// 配置存在错误?

	size_t size=0;
	for(size_t i=0;i!=fullConfig.size();++i)
	{
		assert(fullConfig[i].size() % VirtualMap::_D::PAGE_SIZE == 0);
		size+=fullConfig[i].size();
	}
	auto flatMap = new VirtualMap(0,size/VirtualMap::_D::PAGE_SIZE,true,0,virtman.addressBits());
	flatMap->mapL0();
	flatMap->mapL1();
	flatMap->mapL2();
	flatMap->mapL3(fullConfig);
	virtman.updateTTBR0(flatMap->l0Table());
	virtman.updateTTBR1(flatMap->l0Table());
	virtman.enableMMU(main_mmu_set, __stack_top);
	return 0;
}


FAT32ExtBPB bpb;
FAT32EntryTable fat;

void main_mmu_set()
{
	// rebase __vt
	size_t vtSize = __vt_end - __vt_begin;
	for(size_t i=0;i!=vtSize;++i)
	{
		if(__vt_begin[i]!=0)
			__vt_begin[i]|=virtman.ttbr1Mask();
	}
//	const size_t lowerSize = 0x80000;
//	const void   *phyRamAddr = reinterpret_cast<const void*>( RAM_SIZE - lowerSize + RAM_START);

	// 禁用TTBR0
	virtman.enableTTBR0(false);

	// 对之前的组件进行rebase
	pl011.rebase(virtman.ttbr1Mask());
	mman.rebase(virtman.ttbr1Mask());
	intm.rebase(virtman.ttbr1Mask());
	intHandler.rebase(virtman.ttbr1Mask());
	// virtman.rebase(); // virtman no rebase

	new (&inputBuffer) Queue<uint16_t>(512);
	new (&kin) Input(nullptr);
	new (&ktimer) GenericTimer();
	new (&pidManager) PidManager();
	new (&processManager) ProcessManager();
	new (&fat) FAT32EntryTable();
	new (&vfs) VirtualFileSystem();

	// 至少包含2个对齐的PAGE
	// TODO 资源获取及初始化，init替代
	void * queueBuffer = mman.allocate(2*VirtioDriver::PAGE_SIZE_4KB,VirtioDriver::PAGE_SIZE_4KB);
	assert(queueBuffer);

	// 对齐处的地址
	auto  vio = new (m_abort) VirtioBlockDriver(VIRTIO_0_BASE|virtman.ttbr1Mask());
	size_t descrNum= VirtioBlockDriver::maximumDescriptorNum(VirtioBlockDriver::PAGE_SIZE_4KB);
	vio->init(
			queueBuffer, // 队列的页地址
			descrNum, // 队列的大小，legacy需要3个，[0]=8byte,3fields, [1]=data,[2]=1byte status
			VirtioBlockDriver::PAGE_SIZE_4KB,
			VirtioDriver::USED_RING_ALIGNMENT, // RING的对齐要求
			true  // 是否初始化区域的值为0
			);

	auto * vioSecReader = new (m_abort) VirtioSectorReader(*vio);
	auto * byteReader = new (m_abort) SectorReaderToByteReader(*vioSecReader);

//	FAT32VirtualFile::readBPB(*byteReader, bpb);
//	FAT32VirtualFile::readFAT(*byteReader, bpb, fat);
	auto fatNode = FAT32VirtualFile::makeRootFile(*byteReader, bpb, fat);
	vfs.addRootFile(fatNode);

//	// 设置定时中断，并启用。 将会在第一个进程执行后开始进程调度
	ktimer.timerPeriod(1000);//1000ms
	ktimer.nextPeriod(); // 进入下一个中断周期
	ktimer.enableTimerWork(true);
	ktimer.enableTimerInt(true);

	// 这里插入TEST
//	pl011.enableReceive(true);
//	pl011.enableReceiveInterrupt(true);
//	intm.enableWord(1)=0xFFFFFFFF;
//	kout << Hex(intm.enableWord(1)) << "\n";
//	intm.cpuIntEnable(InterruptManager::IRQ, true);
//	intm.cpuIntEnable(InterruptManager::FIQ, true);
//	while(true)
//	{
//		kout << "===========\n";
//		kout << Hex(intm.pendingWord(1)) << "\n";
//		ktimer.delayMS(1000);
//	}
	// TEST END

	// 建立一个进程
	auto processLink = processManager.createNewProcess(
			virtman.addressBits(), // virtual address length in bits
			nullptr,  // parent
			10, // Priority
			USER_SPACE_SIZE, // codeSize
			Process::PAGE_SIZE * Process::HEAP_L3_ENTRY_NUM, // Heap Size
			Process::PAGE_SIZE * Process::STACK_L3_ENTRY_NUM  // Stack Size
			);
	Process & process = processLink->data<true>();
	assert(processLink &&
			process.status()!=Process::CREATED_INCOMPLETE);

	// 复制代码到分配给进程的代码段空间
	std::memcpy(process.codeBase(),
			user_space_start,
			USER_SPACE_SIZE);

	// 设置LR寄存器(x30)为入口地址
	process.registers()[30] = process.ELR().returnAddr;

	// 使用任务调度切换到下一个进程
	virtman.enableTTBR0(true);
	intm.enableWord(0) = 0xFFFFFFFF;
	intm.enableIntID(INT_INPUT, true);// 允许输入
	pl011.enableReceiveInterrupt(true);
	processManager.changeProcessStatus(processLink, Process::RUNNING);
	void *spEL1=reinterpret_cast<void*>(reinterpret_cast<uint64_t>(__stack_top)|virtman.ttbr1Mask());
	process.restoreContextAndExecute(spEL1);

}

