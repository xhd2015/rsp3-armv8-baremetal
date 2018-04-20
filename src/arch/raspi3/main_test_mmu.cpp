#include <new>
#include <generic/cpu.h>
#include <runtime_def.h>
#include <interrupt/exception_def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <interrupt/BCM2835InterruptController.h>
#include <interrupt/GenericTimer.h>
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
#include <memory/VirtualManager.h>
#include <generic_util.h>

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

// 本文件测试了树莓派3上启用虚拟内存的过程
//   首先，建立一个映射map(flatMap)，设置正常内存属性和外设内存属性（这非常重要）
//   然后启用MMU，跳转到MMU之后执行的函数
//  在MMU之后的函数中，首先禁用TTBR0，因为此时处于内核空间，不在访问低端地址。关掉TTBR0有助于发现bug
//  进行rebase操作，这一步是必须的，因为之前的指针都是低端内存的，现在需要将它们设置到高端内存
//  调用Debugger进行debug

void main_mmu_set();
int main()
{
	new (&intc) BCM2835InterruptController(INTC_BASE);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE);
	new (&sysTimer) BCM2835SystemTimer(SYS_TIMER_BASE);// 定时必须启用
	new (&ktimer) GenericTimer();
	new (&mman) MemoryManager(ramStart,ramEnd-ramStart,true);
	new (&kin) Input();
	new (&virtman) VirtualManager();
	assert(exceptionLevel == ExceptionLevel::EL1);
	intc.disableAllInterrupts();

	// FIXME 注意：树莓派1G的空间实际上并不全是可用的，至少有16MB不可用，因为PERIPHBASE和RAM互相覆盖了。
	// 启用MMU
	kout << INFO << "config address space \n";
	Vector<AddressSpaceDescriptor> config;
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
	flatMap->mapL2();
	flatMap->mapL3(fullConfig);
	virtman.updateTTBR0(flatMap->l0Table());
	virtman.updateTTBR1(flatMap->l0Table());
	kout << "calling VirtualManager enableMMU\n";
	virtman.enableMMU(main_mmu_set, __stack_top);

	return 0;
}
void main_mmu_set()
{
	virtman.enableTTBR0(false);

	// rebase
	rebase(__vt_begin, __vt_end, virtman.ttbr1Mask());// vtable
	rebase(__reloc_ptr_start,__reloc_ptr_end, virtman.ttbr1Mask()); // reloc_ptr
	intc.rebase(virtman.ttbr1Mask());
	mman.rebase(virtman.ttbr1Mask());
	localIntc.rebase(virtman.ttbr1Mask());
	pl011.rebase(virtman.ttbr1Mask()); // 在rebase之前不可以输出
	pl011.init();

	// 进入调试状态
	MemoryDebugger mm(virtman.ttbr1Mask());
	mm.mainloop("Debugger:");
	// 不能返回
	while(true);
}
