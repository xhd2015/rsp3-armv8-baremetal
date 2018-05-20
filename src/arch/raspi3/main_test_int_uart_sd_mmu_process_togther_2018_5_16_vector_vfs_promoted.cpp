#include <new>
#include <generic/cpu.h>
#include <runtime_def.h>
#include <interrupt/exception_def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <io/IntegerFormatter.h>
#include <debug/MemoryDebugger.h>
#include <driver/gpio/GPIO.h>
#include <driver/sd/SDDriver.h>
#include <driver/sd/SDDriverV3.h>
#include <driver/sd/SDCardOperationCond.h>
#include <driver/sd/SDCardIdentification.h>
#include <cstring>
#include <data/Vector.h>
#include <memory/VirtualAddress.h>
#include <memory/AddressSpaceDescriptor.h>
#include <generic_util.h>
#include <io/block/SDSectorReader.h>
#include <io/block/SectorReaderToByteReader.h>
#include <filesystem/FAT32VirtualFile.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <filesystem/fat/FAT32EntryTable.h>
#include <filesystem/RAMVirtualFile.h>
#include <arch/qemu_virt/crt0.h>
#include <schedule/schedule_forward.h>

// well documented definition:
//    此文件是main_test_int_uart_sd_mmu_process_togther.cpp内容的改进版本
//    改进日期是2018_05_16,改进内容包括：Output能够使用重定向（定义了字符输入输出类体系）
//               Vector的size改变，不再设置最小容量
//					增加了RAMVirtualFile
#define INT_AUX 29
#define INT_UART0 57
#define INTC_BASE        0x3F00B000
#define TIMER_BASE       0x3F00B000
#define LOCAL_INTC_BASE  0x40000000
#define TIMER_LS         0x4000001C
#define TIMER_MS         0x40000020
#define SD_BASE          0x3F300000
//extern uint64_t __vt_end[];
//extern uint64_t __vt_begin[];
extern char ramStart[];
extern char ramEnd[];
extern char __stack_top[];
//extern uint64_t __reloc_ptr_start[];
//extern uint64_t __reloc_ptr_end[];
extern uint64_t __user_space_start[];
extern uint64_t __user_space_end[];


void main_mmu_set(VirtualMap * vmap,void *ramStart,
			size_t ramSize,ExceptionLevel highestEL,size_t addressBits);
int main()
{
	assert(exceptionLevel == ExceptionLevel::EL1);
	// 多层次的Controller
	new (&intc) BCM2835InterruptController(INTC_BASE);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE,&intc);
	new (&sysTimer) BCM2835SystemTimer(SYS_TIMER_BASE);// 定时必须启用
	new (&ktimer) GenericTimer();
	new (&mman) MemoryManager(ramStart,ramEnd-ramStart,true);
	// io
	// TODO 使用PL011来
//	new (&kin) Input();
//	new (&inputBuffer) Queue<uint16_t>(512);
	new (&virtman) VirtualManager();
	new (&intHandler) InterruptHandler<BCM2836LocalIntController>(&localIntc);
//	new (&sddriver) SDDriverV3(SD_BASE);
	// 进程
//	new (&pidManager) PidManager();
//	new (&processManager) ProcessManager();

	// 选择GPIO使用SD卡
	gpio.selectAltFunction(48, GPIO::ALT_3);
	gpio.selectAltFunction(49, GPIO::ALT_3);
	gpio.selectAltFunction(50, GPIO::ALT_3);
	gpio.selectAltFunction(51, GPIO::ALT_3);
	gpio.selectAltFunction(52, GPIO::ALT_3);
	gpio.selectAltFunction(53, GPIO::ALT_3);
//	auto status = sddriver.init();
//	assert(status==0);
//
//	{
//		char buf[512];
//		sddriver.transferBlocks(8192, 1, buf, nullptr);
//		kout.print(buf,512);
//		while(true);
//	}
	kout << INFO << "highest EL = " << static_cast<uint64_t>(highestEL) << "\n";
	kout << INFO << "disable all interrupts\n";
	localIntc.disableAllInterrupts();
	// FIXME 注意：树莓派1G的空间实际上并不全是可用的，至少有16MB不可用，因为PERIPHBASE和RAM互相覆盖了。
	// 启用MMU
	virtman.init();
	kout << INFO << "config address space \n";
	Vector<AddressSpaceDescriptor> config;
	// DOCME 在BCM2836上,local peripheral 增加了0x4000_0000上的0x100的区域，
	// 但是为了对齐映射,将其增加为0x1000(4KB)
	//
	config.pushBack(AddressSpaceDescriptor{reinterpret_cast<void*>(RAM_START),RAM_SIZE ,AddressSpaceDescriptor::T_NORMAL,false,true,false});
	config.pushBack(AddressSpaceDescriptor{reinterpret_cast<void*>(PERIPHBASE),PERIPHSIZE,AddressSpaceDescriptor::T_PERIPHERAL,false,false,false});

	auto fullConfig=VirtualManager::makeFullOrderedDescriptors(config);
	assert(fullConfig.size()!=0);// 配置存在错误，有重叠部分

	size_t size=0;
	for(size_t i=0;i!=fullConfig.size();++i)
	{
		assert(fullConfig[i].size() % VirtualMap::_D::PAGE_SIZE == 0);
		size+=fullConfig[i].size();
	}
	auto flatMap = new VirtualMap(
			0,size/VirtualMap::_D::PAGE_SIZE,
			true,0,virtman.addressBits());
	flatMap->mapL0();
	flatMap->mapL1();
	auto l2 = flatMap->l2Table();
	// FIXME 这是一个workaround, 在MMU启用3及页表后发送CMD8失败，而启用二级页表正常
	// L2下有12+9=21位是直接映射的, 0x3F00_0000 刚好从L2的 0x1f8可以开始
	size_t periphL2Index = PERIPHBASE >> (12+9);
	size_t periphL1Index = periphL2Index >> 9;
	periphL2Index &= 0x1ff;
	assert(periphL1Index<0x200);//至多9位
	size_t linearIndex = periphL1Index*512 + periphL2Index;
	// DOCME ATTR_NORMAL能够允许不对齐的访问
	for(size_t i=0;i!=flatMap->size(2);++i)
	{
		Descriptor4KBL2::make(l2+i,0);
		l2[i].S0.AF=1;
//		l2[i].S0.Contiguous=0;
//		l2[i].S0.IsTable=0;
		if(i<linearIndex)
			l2[i].S0.AttrIndex = VirtualManager::_D::MEMORY_ATTR_NORMAL;
		else  //peripheral
			l2[i].S0.AttrIndex = VirtualManager::_D::MEMORY_ATTR_PERIPHERAL;
		l2[i].S0.NS=1;
//		l2[i].S0.nG=0;
		l2[i].S0.Valid=1;
		l2[i].S0.OutputAddr=i;
//		l2[i].S0.AP=0b00;//RW, non EL0
		l2[i].S0.SH= 0b11;//OSH
	}
	(void)fullConfig;
//	flatMap->mapL2();
//	flatMap->mapL3(fullConfig);
	virtman.updateTTBR0(flatMap->l0Table());
	virtman.updateTTBR1(flatMap->l0Table());
	kout << INFO << "ExceptionVectorEL1 to high = " <<
			Hex(reinterpret_cast<uint64_t>(TO_HIGH_ADDR(ExceptionVectorEL1)))<<"\n";
	kout << "calling VirtualManager enableMMU\n";
	auto diff=virtman.ttbr1Mask();
	virtman.enableMMU(
			pointerInc(reinterpret_cast<void*>(main_mmu_set), diff - CODE_OFFSET),
			pointerInc(flatMap,diff),
			pointerInc(mman.base(),diff),
			mman.size(),
			highestEL,
			pointerInc(__stack_top,diff)
	);
	// FIXME 这里可能存在内存泄露，因为fullConfig没有释放

	return 0;
}
void main_mmu_set(VirtualMap * vmap,void *ramStart,
		size_t ramSize,ExceptionLevel highestEL,size_t addressBits)
{
	new (&virtman) VirtualManager(addressBits);
	virtman.enableTTBR0(false);

	// 最高异常级别
	::highestEL = highestEL;
	// 含有指针的实例需要重新初始化
	// 具有base基地址的实例需要重新初始化
	auto diff=virtman.ttbr1Mask();
	RegVBAR_EL1::make(
			reinterpret_cast<uint64_t>(ExceptionVectorEL1)).write();
	new (&mman) MemoryManager(ramStart,ramSize,false);
	new (&intc) BCM2835InterruptController(INTC_BASE+diff);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE+diff,&intc);
	new (&pl011) PL011(UART0_BASE+diff);
	new (&pl011ChReader) PL011CharacterReaderWriter(&pl011);
	new (&kout) Output(&pl011ChReader);
	new (&inputBuffer) Queue<uint16_t>(512);
	new (&sysTimer) BCM2835SystemTimer(SYS_TIMER_BASE+diff);
	new (&intHandler)
			InterruptHandler<BCM2836LocalIntController>(&localIntc);

//	pl011.init();
	kout << INFO << "reconstructed all.\n";
	// 初始化虚拟文件系统
	kout << INFO << "ExceptionVectorEL1 = " << Hex(ExceptionVectorEL1) << "\n";
	kout << INFO << "creating VirtualFileSystem\n";
	new (&vfs) VirtualFileSystem();

	// TODO 使用内存文件而不是这些该死的SD卡文件
	new (&sddriver) SDDriverV3(SD_BASE + diff);
	if(sddriver.init()==0)
	{
		kout << INFO << "Reading FAT\n";
		size_t fat1Sec = 8192;
		SDSectorReader * sdreader=new SDSectorReader(sddriver,fat1Sec);
		ByteReader     * breader = new SectorReaderToByteReader(*sdreader);
		FAT32ExtBPB *bpb  = new FAT32ExtBPB();
		FAT32EntryTable  *fat = new FAT32EntryTable();
		FAT32VirtualFile::readBPB(*breader, *bpb,0);
		kout << "bpb Signature_word = " << Hex(bpb->Signature_word) << "\n";
		FAT32VirtualFile::readFAT(*breader, *bpb, *fat,0);
		auto fatNode = FAT32VirtualFile::makeRootFile(*breader, *bpb, *fat);
		vfs.addRootFile(fatNode);
		kout << INFO << "vfs finished\n";
	}else{
		kout << WARNING << "init sd failed\n";
	}
	kout << INFO << "adding ramfs to vfs\n";
	auto ramroot = new RAMVirtualFile("ramfs",FileType::F_DIRECTORY);
	ramroot->addFile(new RAMVirtualFile("test",FileType::F_FILE));
	vfs.rootFile()->addFile(ramroot);

	constexpr size_t pageSize = VirtualMap::_D::PAGE_SIZE;
	static_assert(USER_RAM_START % pageSize==0 &&
			USER_RAM_SIZE % pageSize == 0 &&
			USER_STACK_SIZE % pageSize == 0 &&
			USER_CODE_SIZE % pageSize == 0 &&
			USER_INITRAM_SIZE % pageSize == 0
			,"");

	assert(reinterpret_cast<size_t>(__user_space_start)%pageSize==0);
	assert(reinterpret_cast<size_t>(__user_space_end)%pageSize==0);
	auto p = mman.allocateAs<char*>(USER_RAM_SIZE, pageSize); // 作为基指针
	assert(p);

	// 建立一个进程
	new (&pidManager) PidManager();
	new (&processManager) ProcessManager();
	auto processLink = processManager.createNewProcess(
			10,//priority
			nullptr,//parent
			reinterpret_cast<size_t>(p)/pageSize,//map to physical address(pa)
			USER_RAM_SIZE/pageSize, // ramsize,in pages
			USER_STACK_START,       // membase
			USER_RAM_START/pageSize, // ramstart(va),in pages
			(USER_RAM_START+USER_STACK_SIZE)/pageSize,USER_CODE_SIZE/pageSize,//code,readonly
			(USER_RAM_START + USER_STACK_SIZE)/pageSize,//stack top
			virtman.addressBits(), // virtual address length in bits
			p  + USER_DATA_START - USER_STACK_START, //从stack开始的
			USER_DATA_SIZE,
			true
	);
	Process & process = processLink->data<true>();
	assert(processLink &&
			process.status()!=Process::CREATED_INCOMPLETE);
	kout << INFO << "__user_space_start = " << Hex(reinterpret_cast<uint64_t>(
			__user_space_start)) << "\n";
	// 将代码和initRAM复制到分配的内存空间
	std::memcpy(p + USER_STACK_SIZE,
			__user_space_start,USER_CODE_SIZE + USER_INITRAM_SIZE);
	const uint8_t * codePtr = reinterpret_cast<const uint8_t*>(__user_space_start);
	kout << "allocated memory, va(ram) = " <<
			reinterpret_cast<void*>(p)<<"\n";
	kout << "allocated memory, va to pa(ram) = " <<
				virtman.translateVAToPA(p)<<"\n";
	kout << "allocated memory, va to pa(code) = " <<
				virtman.translateVAToPA(p + USER_STACK_SIZE)<<"\n";
	kout << "====code is \n";
	for(size_t i=0;i!=200;++i)
		kout << Hex(codePtr[i]) << " ";
	kout << "\n===========\n";

	// DOCME 控制台的输入与模拟选项有关，当启用两个端口时，输入会被平均分配。
	// 启用输入中断和定时中断
	pl011.enableFIFO(false);// 启用单字符模式
//	pl011.enableFIFO(true);
	pl011.clearIntFlags();
//	pl011.readInterruptLevel(PL011::L_1of8);
	pl011.enableReceiveInterrupt(true);
	localIntc.enableInterrupt(
			BCM2836LocalIntController::BCM2835IntSource::SRC_UART_INT, true);
	localIntc.enableInterrupt(
			BCM2836LocalIntController::BCM2835IntSource::SRC_SYS_TIMER_FIRST+1, true);
	Vector<String> args;
	args.pushBack("shell");
	process.fillArguments(args);


//	// reset
//	asm_svc<SvcFunc::warmReset>();

	// 使用任务调度切换到下一个进程
	activeInputCatcher = processLink; // 捕获输入的进程设置为第一个shell进程
	virtman.enableTTBR0(true);
	processManager.changeProcessStatus(processLink, Process::RUNNING);
	sysTimerTick=NORM_SYS_TIMER_TICK;
	sysTimer.addCompareValueMS(1,sysTimerTick);
	process.restoreContextAndExecute(__stack_top);

	// 不能返回
	while(true);
}
