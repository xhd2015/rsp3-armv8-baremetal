
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

// 此版本的文件测试了中断和MMU的启用，展示了启用MMU的基本思路
//    有一点值得注意，那就是在设置内存区域的过程中，使用了冒泡排序，这很令人意外。

#define GIC_DIST_BASE 0x08000000
#define GIC_REDIST_BASE 0x080A0000
#define GIC_REDIST_RD_BASE  (GIC_REDIST_BASE)
#define GIC_REDIST_SGI_BASE (GIC_REDIST_RD_BASE + 1024*64)
extern char ExceptionVectorEL1[];
extern char __stack_top[];


void main_mmu_set();

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

	// 初始化中断，但是目前屏蔽了所有的中断
	int status=intm.init(
			ExceptionVectorEL1,
			true,
			EOIMode::ack_priority_drop_and_deactivation,
			0xFE,
			0xF0);
	if(status!=0)
		return status;
	// 启用MMU
	size_t sizeAttrGroup[10][3]={0};
	size_t groupNum=10;
	if(!VirtualManager::makeSizeAttrGroup(RAM_START, RAM_SIZE, PERIPHBASE, PERIPHSIZE, sizeAttrGroup, groupNum))
		return 1;// 配置存在错误
	size_t size=0;
	for(size_t i=0;i!=groupNum;++i)
		size+=sizeAttrGroup[i][0];
	size_t pagesNeeded = virtman.calculateFlatMapPageNum(size);
	void  *pageMem = mman.allocate(pagesNeeded*VirtualManager::PAGE_SIZE, VirtualManager::PAGE_SIZE);
	if(!pageMem)
		return 1;
	status = virtman.init(reinterpret_cast<uint64_t>(pageMem)/VirtualManager::PAGE_SIZE, sizeAttrGroup, groupNum, main_mmu_set, __stack_top);
	if(status != 0)
		return status;
	return 0;
}


void main_mmu_set()
{
	// 禁用TTBR0
	virtman.enableTTBR0(false);

	// 重新初始化pl011
	new (&pl011) PL011(UART_BASE|virtman.ttbr1Mask());
	new (&mman) MemoryManager(
			reinterpret_cast<char*>(reinterpret_cast<uint64_t>(mman.base())|virtman.ttbr1Mask()),
			mman.size(),
			false
	);
	new (&intm) InterruptManager(
			reinterpret_cast<char*>(GIC_DIST_BASE|virtman.ttbr1Mask()),
			reinterpret_cast<char*>(GIC_REDIST_BASE|virtman.ttbr1Mask()));
	new (&ktimer) GenericTimer();
	new (&pidManager) PidManager();
	new (&processManager) ProcessManager();

	// 设置定时中断，但是暂不启用中断
	ktimer.timerPeriod(1000);//1000ms
	ktimer.nextPeriod(); // 进入下一个中断周期
	ktimer.enableTimerWork(true);
	ktimer.enableTimerInt(true);

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
	if(processLink==nullptr ||
			process.status()==Process::CREATED_INCOMPLETE)
	{
		kout << FATAL << "create process failed\n";
		asm_wfe_loop();
	}

	// 复制代码到分配给进程的代码段空间
	const void *userSpaceStart = reinterpret_cast<const void*>(USER_SPACE_START | virtman.ttbr1Mask());
	std::memcpy(process.codeBase(), userSpaceStart, USER_SPACE_SIZE);

	// 设置LR寄存器(x30)为入口地址
	process.registers()[30] = process.ELR().returnAddr;

	// 使用任务调度切换到下一个进程
	virtman.enableTTBR0(true);
	processManager.changeProcessStatus(processLink, Process::RUNNING);
	void *spEL1=reinterpret_cast<void*>(reinterpret_cast<uint64_t>(__stack_top)|virtman.ttbr1Mask());
	process.restoreContextAndExecute(spEL1);
}


