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
#include <io/SDSectorReader.h>
#include <io/SectorReaderToByteReader.h>
#include <filesystem/FAT32VirtualFile.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <filesystem/fat/FAT32EntryTable.h>

// well documented definition:
//    测试了操作系统初始化的过程， 添加了虚拟内存，虚拟文件系统的支持
//  注意，此版本中仍然有一些需要改进的地方，VirtualMap不应当一次性分配所有的页表。
#define INT_AUX 29
#define INT_UART0 57
#define INTC_BASE        0x3F00B000
#define TIMER_BASE       0x3F00B000
#define LOCAL_INTC_BASE  0x40000000
#define TIMER_LS         0x4000001C
#define TIMER_MS         0x40000020
#define SD_BASE          0x3F300000
extern uint64_t __vt_end[];
extern uint64_t __vt_begin[];
extern char ramStart[];
extern char ramEnd[];
extern char __stack_top[];
extern uint64_t __reloc_ptr_start[];
extern uint64_t __reloc_ptr_end[];
extern uint64_t __user_space_start[];
extern uint64_t __user_space_end[];


void main_mmu_set();
int main()
{
	assert(exceptionLevel == ExceptionLevel::EL1);
	// 多层次的Controller
	new (&intc) BCM2835InterruptController(INTC_BASE);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE,intc);
	new (&sysTimer) BCM2835SystemTimer(SYS_TIMER_BASE);// 定时必须启用
	new (&ktimer) GenericTimer();
	new (&mman) MemoryManager(ramStart,ramEnd-ramStart,true);
	// io
	new (&kin) Input();
	new (&inputBuffer) Queue<uint16_t>(512);
	new (&virtman) VirtualManager();
	new (&intHandler) InterruptHandler<BCM2836LocalIntController>(localIntc);
	new (&sddriver) SDDriverV3(SD_BASE);
	// 进程
	new (&pidManager) PidManager();
	new (&processManager) ProcessManager();

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

	kout << INFO << "disable all interrupts\n";
	localIntc.disableAllInterrupts();
	// FIXME 注意：树莓派1G的空间实际上并不全是可用的，至少有16MB不可用，因为PERIPHBASE和RAM互相覆盖了。
	// 启用MMU
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
	auto flatMap = new VirtualMap(0,size/VirtualMap::_D::PAGE_SIZE,true,0,virtman.addressBits());
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
	kout << "calling VirtualManager enableMMU\n";
	virtman.enableMMU(main_mmu_set, __stack_top);

	return 0;
}
// FIXME 更好的位置
//void dumpFromTTBR0Addr()
//{
//	auto ttbr=RegTTBR0_EL1::read();
//	ttbr.dump();
//	constexpr size_t pageSize = 4096;
//	uint64_t pa0=(ttbr.BADDR<<1);
//	kout << "l0 pa = " << Hex(pa0)  << "\n";
//
//
//	auto va0=pa0+virtman.ttbr1Mask();
//	auto l0 = reinterpret_cast<Descriptor4KBL0*>(va0);
//	l0->dump();
//	auto pa1 = l0->NextLevelTableAddr*pageSize;
//	kout << "l1 pa = " << Hex(pa1)  << "\n";
//
//
//	auto va1=pa1 + virtman.ttbr1Mask();
//	auto l1 = reinterpret_cast<Descriptor4KBL1*>(va1);
//	l1->dump();
//	auto pa2 = l1->S1.NextLevelTableAddr*pageSize;
//	kout << "l2 pa = " << Hex(pa2)  << "\n";
//
//	auto va2 = pa2 + virtman.ttbr1Mask();
//	auto l2 = reinterpret_cast<Descriptor4KBL2*>(va2);
//	l2->dump();
//	auto pa3 = (l2->S1.NextLevelTableAddr)*pageSize;
//	kout << "l3 pa[0] = " << Hex(pa3)  << "\n";
//
//	auto va3 = pa3 + virtman.ttbr1Mask();
//	auto l3 = reinterpret_cast<Descriptor4KBL3*>(va3);
//	l3->dump();
//	auto paTarget = l3->OutputAddr*pageSize;
//	kout << "target pa0 = " << Hex(paTarget) << "\n";
//
//	l3[1].dump();
//	l3[2].dump();
//	l3[3].dump();
//	l3[4].dump();
//	kout << "target pa1 = " << Hex(l3[1].OutputAddr * pageSize) << "\n";
//	kout << "target pa2 = " << Hex(l3[2].OutputAddr * pageSize) << "\n";
//	kout << "target pa3 = " << Hex(l3[3].OutputAddr * pageSize) << "\n";
//	kout << "target pa4 = " << Hex(l3[4].OutputAddr * pageSize) << "\n";
//}

void main_mmu_set()
{
	// FIXME 在进入MMU后，为什么发送CMD8总是失败，有没有可能跳过CMD8？
	//       因为发送CMD8失败后，CMD处于禁止状态，因此后序的命令无法发送。
	//       CMD8的错误是超时，也许我们需要发送CMD5
	//  TODO 尝试使用CMD5发送
//	{
//		SDDriverV3 *sd =new SDDriverV3 ( SD_BASE);
//		sd->init();
//		char buf[512];
//		sd->transferBlocks(8192, 1, buf, nullptr);
//		kout.print(buf,512);
//		while(true);
//	}
	virtman.enableTTBR0(false);

	// rebase
	rebase(__vt_begin, __vt_end, virtman.ttbr1Mask());// vtable
	rebase(__reloc_ptr_start,__reloc_ptr_end, virtman.ttbr1Mask()); // reloc_ptr
	intc.rebase(virtman.ttbr1Mask());
	mman.rebase(virtman.ttbr1Mask());
	localIntc.rebase(virtman.ttbr1Mask());
	pl011.rebase(virtman.ttbr1Mask()); // 在rebase之前不可以输出
	sysTimer.rebase(virtman.ttbr1Mask());
	intHandler.rebase(virtman.ttbr1Mask());
	inputBuffer.rebase(virtman.ttbr1Mask());
	sddriver.rebase(virtman.ttbr1Mask());

	kout << INFO << "rebase all.\n";
	kout << INFO << "creating VirtualFileSystem\n";
	// new所有需要的对象
	// 文件系统
	new (&vfs) VirtualFileSystem();

//	// 加入boot分区
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

	constexpr size_t pageSize = VirtualMap::_D::PAGE_SIZE;
	static_assert(USER_RAM_START % pageSize==0 &&
			USER_RAM_SIZE % pageSize == 0 &&
			USER_STACK_SIZE % pageSize == 0 &&
			USER_CODE_SIZE % pageSize == 0 &&
			USER_INITRAM_SIZE % pageSize == 0
			,"");

	assert(reinterpret_cast<size_t>(__user_space_start)%pageSize==0);
	assert(reinterpret_cast<size_t>(__user_space_end)%pageSize==0);
	auto p = mman.allocateAs<char*>(USER_RAM_SIZE, pageSize); // 作为基地址
	assert(p);

	// 建立一个进程
	auto processLink = processManager.createNewProcess(
			10,//priority
			nullptr,//parent
			reinterpret_cast<size_t>(p)/pageSize,//map to physical address(pa)
			USER_RAM_SIZE/pageSize, // ramsize,in pages
			USER_RAM_START/pageSize, // ramstart(va),in pages
			(USER_RAM_START+USER_STACK_SIZE)/pageSize,USER_CODE_SIZE/pageSize,//code,readonly
			(USER_RAM_START + USER_STACK_SIZE)/pageSize,//stack top
			virtman.addressBits() // virtual address length in bits
	);
	Process & process = processLink->data<true>();
	assert(processLink &&
			process.status()!=Process::CREATED_INCOMPLETE);
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


	// DOCME why this?
	// 设置LR寄存器(x30)为入口地址
	process.registers()[30] = process.ELR().returnAddr;

	// 启用输入中断和定时中断
//	localIntc.enableInterrupt(
//			BCM2836LocalIntController::BCM2835IntSource::SRC_SYS_TIMER_FIRST+1,
//			true);
	pl011.enableFIFO(false);// 启用单字符模式
	pl011.clearIntFlags();
	pl011.readInterruptLevel(PL011::L_1of8); // 配置为至少一个字符就要处理
	pl011.enableReceiveInterrupt(true);
	localIntc.enableInterrupt(
			BCM2836LocalIntController::BCM2835IntSource::SRC_UART_INT, true);
	localIntc.enableInterrupt(
			BCM2836LocalIntController::BCM2835IntSource::SRC_SYS_TIMER_FIRST+1, true);
	sysTimerTick=1000;//1000ms
	sysTimer.addCompareValueMS(1,sysTimerTick);

	// 使用任务调度切换到下一个进程
	virtman.enableTTBR0(true);
	processManager.changeProcessStatus(processLink, Process::RUNNING);
	void *spEL1=reinterpret_cast<void*>(reinterpret_cast<uint64_t>(__stack_top));
	process.restoreContextAndExecute(spEL1);

	// 不能返回
	while(true);
}
