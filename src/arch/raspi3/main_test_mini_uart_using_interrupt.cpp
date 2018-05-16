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

// well documented definition:
//  测试了mini uart在qemu和树莓派上的实际表现，结果表明，qemu的mini uart能够产生输入
//   中断，而树莓派的mini uart不能，与文档描述相符。
#define INT_AUX 29
#define INT_UART0 57
#define INTC_BASE        0x3F00B000
#define TIMER_BASE       0x3F00B000
#define LOCAL_INTC_BASE  0x40000000
#define TIMER_LS         0x4000001C
#define TIMER_MS         0x40000020

int main()
{
	assert(exceptionLevel == ExceptionLevel::EL1);
	// 多层次的Controller
	new (&intc) BCM2835InterruptController(INTC_BASE);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE,intc);
	// io
	new (&intHandler) InterruptHandler<BCM2836LocalIntController>(&localIntc);
	miniUART.enableReceive(true);
	miniUART.enableReceiveInterrupt(true);
	intc.enableWord(0)=bitOnes<29>();//29是mini_uart的中断
	setBits(miniUART.reg32(BCM2835MiniUART::EXTRA_STATUS),16,19,7);
	while(true)
	{
		kout << "mu_cntl = " << Hex(miniUART.reg32(BCM2835MiniUART::EXTRA_CONTROL)) << "\n";
		kout << "int level = " << getBits(miniUART.reg32(BCM2835MiniUART::EXTRA_STATUS),16,19) << "\n";
		kout << "aux enables = " << Hex(miniUART.reg32(BCM2835MiniUART::AUX_ENABLES))<<"\n";
		kout << "aux irq = " << Hex(miniUART.reg32(BCM2835MiniUART::AUX_IRQ))<<"\n";
		kout << "miniuart IER = " << Hex(miniUART.reg32(BCM2835MiniUART::IER_INT_ENABLED)) << "\n";
		kout << "miniuart IIR = " << Hex(miniUART.reg32(BCM2835MiniUART::IIR_INT_IDENTITY)) << "\n";
		kout << "pendingWord(0) = " << Hex(intc.pendingWord(0)) << "\n";
		delayMS(1000);
	}
//	localIntc.disableAllInterrupts();
	cpuEnableInterrupt(ExceptionType::IRQ,true);
	return 0;
}
