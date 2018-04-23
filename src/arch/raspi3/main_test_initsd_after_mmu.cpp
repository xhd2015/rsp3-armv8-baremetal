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

#define INT_AUX 29
#define INT_UART0 57
#define INTC_BASE        0x3F00B000
#define TIMER_BASE       0x3F00B000
#define LOCAL_INTC_BASE  0x40000000
#define TIMER_LS         0x4000001C
#define TIMER_MS         0x40000020
#define SD_BASE          0x3F300000
extern char ramStart[];
extern char ramEnd[];
extern "C" void main_mmu_set();
extern "C" void main_mmu_set_0();
extern "C" void main_mmu_set_1();
extern "C" void main_mmu_set_2();
// 重新建模映射模型：   每个映射都可以基于已有的页表
//   映射时，可以随意选择其中一级作为block描述符
//
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

	// L1 L2

	int select=0;
	if(select==0)
	{
		kout << INFO << "config address space \n";
		constexpr size_t pageSize = VirtualMap::_D::PAGE_SIZE;
		(void)pageSize;
		size_t size=PERIPHSIZE + RAM_SIZE; // 全都是外设
		Vector<AddressSpaceDescriptor> config;
		// DOCME 在BCM2836上,local peripheral 增加了0x4000_0000上的0x100的区域，
		// 但是为了对齐映射,将其增加为0x1000(4KB)
		//
	//	config.emplaceBack(
	//			reinterpret_cast<void*>(RAM_START),
	//			RAM_SIZE ,
	//			AddressSpaceDescriptor::T_NORMAL,false,true,false);
	//	config.emplaceBack(
	//			reinterpret_cast<void*>(PERIPHBASE),
	//			PERIPHSIZE,
	//			AddressSpaceDescriptor::T_PERIPHERAL,false,false,false);
		config.emplaceBack(
				reinterpret_cast<void*>(0),
				size,
				AddressSpaceDescriptor::T_PERIPHERAL,false,false,false);
		auto flatMap = new VirtualMap(
				0,
				size/VirtualMap::_D::PAGE_SIZE,
				true,
				0,
				virtman.addressBits());
//		(void)flatMap;
//		void * table = mman.allocate(pageSize*2, pageSize);
//		Descriptor4KBL0 * l0=reinterpret_cast<Descriptor4KBL0*>(table);
//		Descriptor4KBL1 * l1=reinterpret_cast<Descriptor4KBL1*>(pointerInc(table, pageSize));

//		flatMap->mapL0();
//		flatMap->mapL1();
//		flatMap->mapL2();
//		flatMap->mapL3(config);
		auto l0=flatMap->l0Table();
		auto l1=flatMap->l1Table();(void)l1;
		auto l2=flatMap->l2Table();(void)l2;
		auto l3=flatMap->l3Table();(void)l3;
		flatMap->mapL0();
		flatMap->mapL1();
//		Descriptor4KBL0::make(l0, 0); // 解析1位
//		l0->IsTable = 1;
//		l0->Valid = 1;
//		l0->NextLevelTableAddr = reinterpret_cast<uint64_t>(l1)/pageSize;
//		for(size_t i=0;i!=2;++i)// 只需设置前两项,0,1.
//		{
//			Descriptor4KBL1::make(l1+i,0); // 解析9位，剩余30位
//			l1[i].S1.IsTable=1;
//			l1[i].S1.Valid=1;
//			l1[i].S1.NextLevelTableAddr =
//					reinterpret_cast<uint64_t>(l2)/pageSize + i;
////			l1[i].S0.AF=1;
////			l1[i].S0.Contiguous=0;
////			l1[i].S0.IsTable=0;
////			l1[i].S0.AttrIndex = VirtualManager::_D::MEMORY_ATTR_PERIPHERAL;
////			l1[i].S0.NS=1;
////			l1[i].S0.nG=0;
////			l1[i].S0.Valid=1;
////			l1[i].S0.OutputAddr=i;
//		}
		// 从0x3F00_0000 之后的0x0100_1000的空间，使用二级页表映射,映射到0x4000_0000处
		// index0=0,index1=0 index2=1f8 index3=0
		// 变成了0x4000_0000 到 0x4000_10000
		for(size_t i=0;i!=flatMap->size(2);++i) // 到1f8之后不再映射
		{
			Descriptor4KBL2::make(l2+i,0);
//			l2[i].S1.Valid=1;
//			l2[i].S1.IsTable=1;
//			l2[i].S1.NextLevelTableAddr =
//					reinterpret_cast<uint64_t>(l3)/pageSize + i;
//			l2[i].S0.AF=1;

			// right
			l2[i].S0.AF=1;
			l2[i].S0.Contiguous=0;
			l2[i].S0.IsTable=0;
			l2[i].S0.AttrIndex = VirtualManager::_D::MEMORY_ATTR_PERIPHERAL;
			l2[i].S0.NS=1;
			l2[i].S0.nG=0;
			l2[i].S0.Valid=1;
			l2[i].S0.OutputAddr=i;
		}
		VirtualAddress va(SD_BASE, virtman.addressBits());
		kout << "va.index(0) = " << va.index(0) << "\n";
		kout << "va.index(1) = " << va.index(1) << "\n";
		kout << "va.index(2) = " << va.index(2) << "\n";
		kout << "va.index(3) = " << va.index(3) << "\n";
		kout << "size3 = " << flatMap->size(3) << "\n";
		kout << "l3 = " << Hex(l3) << "\n";
		kout << "l3 end = " << Hex(l3 + flatMap->size(3)) << "\n";
		// 难道是跨越页边界？
//		auto i2=va.index(2);
//		auto i3=va.index(3);
//		auto linear=i2*512 + i3;
//		for(size_t i=0;i!=flatMap->size(3);++i)
//		{
//			if(i==linear)
//			{
//				kout << "pass [" << i << "]\n";
//			}
//			else
//			{
//				Descriptor4KBL3::make(l3+i,0);
//				l3[i].AF=1;
//				l3[i].RES1_0=1;
//				l3[i].Contiguous=0;
//				l3[i].AttrIndex = VirtualManager::_D::MEMORY_ATTR_PERIPHERAL;
//				l3[i].NS=1;
//				l3[i].nG=0;
//				l3[i].Valid=1;
//				l3[i].OutputAddr=i;
////			}
//		}
//		VirtualMap *sdmap = new VirtualMap(
//				SD_BASE/pageSize,
//				1,
//				true,
//				0,
//				virtman.addressBits()
//				);
//		Vector<AddressSpaceDescriptor> sdconfig;
//		sdconfig.emplaceBack(
//				nullptr,
//				pageSize*1,
//				AddressSpaceDescriptor::T_PERIPHERAL,false,false,false);
//		sdmap->mapL0();
////		sdmap->mapL1();
//		auto sdl1 = sdmap->l1Table();
//		Descriptor4KBL1::make(sdl1,0);
//		sdl1->S0.Valid=1;
//		sdl1->S0.IsTable=0;
//		sdl1->S0.AF=1;
//		sdl1->S0.NS=1;
//		sdl1->S0.OutputAddr = 0;//低30位相同
//
////		auto sdl2=sdmap->l2Table();
////		Descriptor4KBL2::make(sdl2,0);
////		sdl2->S0.Valid=1;
////		sdl2->S0.IsTable=0;
////		sdl2->S0.AF=1;
////		sdl2->S0.NS=1;
////		sdl2->S0.nG=0;
////		sdl2->S0.AttrIndex = VirtualManager::_D::MEMORY_ATTR_PERIPHERAL;
////		sdl2->S0.Contiguous = 0;
////		sdl2->S0.OutputAddr = 0;// 0x3F200000 >> (12+9);// 低12+9位是相同的
////		sdmap->mapL2();
////		sdmap->mapL3(sdconfig);
//
		virtman.updateTTBR0(l0);
		virtman.updateTTBR1(l0);
//		virtman.updateTTBR1(sdmap->l0Table());
//		kout << "calling VirtualManager enableMMU\n";
//		virtman.enableMMU(main_mmu_set_0,nullptr,false);
//		ASM_DEFINE_LOCAL_SYM(main_mmu_set_0);
//		kout << INFO << "after mmu set\n";
//		SDDriverV3  sd(0x3F300000+ virtman.ttbr1Mask());
//		auto sdstatus = sd.init();
//		assert(sdstatus==0);
//		while(true);
	}
	if(select==1)
	{
		using _D = VirtualMap::_D;
		constexpr size_t pageSize = VirtualMap::_D::PAGE_SIZE;
		size_t size=PERIPHSIZE + RAM_SIZE;
		size_t pagesNeeded=0;
		// FIXME sizes[4]={0} 编译出错误的ldl指令，似乎是因为指令集的错误
//		size_t sizes[4]={0};
		size_t sizes[4];
		(void)sizes;
		for(size_t i=0;i!=4;++i)
		{
			size_t itPages=alignAhead(alignAhead(size,_D:: MAP_SIZE[i])/_D::MAP_SIZE[i]*_D::ENTRY_SIZE,_D::PAGE_SIZE)/_D::PAGE_SIZE;
			pagesNeeded += itPages;
			sizes[i] = itPages*_D::PAGE_SIZE/_D::ENTRY_SIZE;
		}
		kout << INFO << "pages needed to allocate = " << Hex(pagesNeeded) <<"\n";
		kout << INFO << "memory needed to allocate = " << Hex(pagesNeeded*_D::PAGE_SIZE) <<"\n";
		auto p = mman.allocateAs<char*>(pagesNeeded * _D::PAGE_SIZE, _D::PAGE_SIZE);
		assert(p);
//		std::memset(p, 0, pagesNeeded * _D::PAGE_SIZE);
//		_l0Table = reinterpret_cast<Descriptor4KBL0*>(p);
//		_l1Table = reinterpret_cast<Descriptor4KBL1*>(_l0Table + _sizes[0]);
//		_l2Table = reinterpret_cast<Descriptor4KBL2*>(_l1Table + _sizes[1]);
//		_l3Table = reinterpret_cast<Descriptor4KBL3*>(_l2Table + _sizes[2]);

//		void * table = mman.allocate(pageSize*2, pageSize);
//		table = mman.allocate(pageSize*2, pageSize);
		void * table = p;
		Descriptor4KBL0 * l0=reinterpret_cast<Descriptor4KBL0*>(table);
		Descriptor4KBL1 * l1=reinterpret_cast<Descriptor4KBL1*>(pointerInc(table, pageSize));
		Descriptor4KBL0::make(l0, 0); // 解析1位
		l0->IsTable = 1;
		l0->Valid = 1;
		l0->NextLevelTableAddr = reinterpret_cast<uint64_t>(l1)/pageSize;
		for(size_t i=0;i!=pageSize/sizeof(l1[0]);++i)
//		 0x3F00_0000 index:0 0 0~0x1f8
//		 0x3F00_0000 - 0x40001000 index 0, 0~1 0x1f8-
		for(size_t i=0;i!=2;++i)// 只需设置前两项,0,1.
		{
			Descriptor4KBL1::make(l1+i,0); // 解析9位，剩余30位

			l1[i].S0.AF=1;
			l1[i].S0.Contiguous=0;
			l1[i].S0.IsTable=0;
			l1[i].S0.AttrIndex = VirtualManager::_D::MEMORY_ATTR_PERIPHERAL;
			l1[i].S0.NS=1;
			l1[i].S0.nG=0;
			l1[i].S0.Valid=1;
			l1[i].S0.OutputAddr=i;
		}
		virtman.updateTTBR0(l0);
		virtman.updateTTBR1(l0);
	}


	// succeed,base example
	if(select==2)
	{
		constexpr size_t pageSize = VirtualMap::_D::PAGE_SIZE;
		void * table = mman.allocate(pageSize*2, pageSize);(void)table;
		table = mman.allocate(pageSize*2, pageSize);
		Descriptor4KBL0 * l0=reinterpret_cast<Descriptor4KBL0*>(table);
		Descriptor4KBL1 * l1=reinterpret_cast<Descriptor4KBL1*>(pointerInc(table, pageSize));
		Descriptor4KBL0::make(l0, 0); // 解析1位
		l0->IsTable = 1;
		l0->Valid = 1;
		l0->NextLevelTableAddr = reinterpret_cast<uint64_t>(l1)/pageSize;
		for(size_t i=0;i!=pageSize/sizeof(l1[0]);++i)
//		 0x3F00_0000 index:0 0 0~0x1f8
//		 0x3F00_0000 - 0x40001000 index 0, 0~1 0x1f8-
		for(size_t i=0;i!=2;++i)// 只需设置前两项,0,1.
		{
			Descriptor4KBL1::make(l1+i,0); // 解析9位，剩余30位

			l1[i].S0.AF=1;
			l1[i].S0.Contiguous=0;
			l1[i].S0.IsTable=0;
			l1[i].S0.AttrIndex = VirtualManager::_D::MEMORY_ATTR_PERIPHERAL;
			l1[i].S0.NS=1;
			l1[i].S0.nG=0;
			l1[i].S0.Valid=1;
			l1[i].S0.OutputAddr=i;
		}
		virtman.updateTTBR0(l0);
		virtman.updateTTBR1(l0);
	}


	kout << "calling VirtualManager enableMMU\n";
	virtman.enableMMU(main_mmu_set);
	ASM_DEFINE_LOCAL_SYM(main_mmu_set);
	kout << INFO << "after mmu set\n";

	sddriver.rebase(virtman.ttbr1Mask());
	auto status = sddriver.init();
	assert(status==0);

	char buf[512];
	sddriver.transferBlocks(8192, 1, buf, nullptr);
	kout.print(buf,512);
	while(true);

	return 0;
}

