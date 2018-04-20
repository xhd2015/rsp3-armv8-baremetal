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
// SD卡的操作序列必须包括： 设置时钟，初始化（非常复杂）， 确定卡的类型（SDSC或者 SDXC，卡的类型影响读写的地址含义，
//    前者是字节地址，后者是block地址)  选择RCA
//  设置RCA：必须是正确的RCA，否则可能超时
//  读写操作： 单块：必须设置BlockSize， 必须设置RCA（否则可能超时）。
// 作为编程人员，必须明白硬件在什么时候会出现什么状态。
int main()
{
	new (&intc) BCM2835InterruptController(INTC_BASE);
	new (&localIntc) BCM2836LocalIntController(LOCAL_INTC_BASE);
	new (&sysTimer) BCM2835SystemTimer(SYS_TIMER_BASE);// 定时必须启用
	new (&ktimer) GenericTimer();
	new (&mman) MemoryManager(ramStart,ramEnd-ramStart,true);
	new (&kin) Input();

	kout << "Waiting for connection....\n";
	while(!pl011.readReady());
	pl011.rawRead(); // 将输入的字符清除

	// 选择GPIO
	gpio.selectAltFunction(48, GPIO::ALT_3);
	gpio.selectAltFunction(49, GPIO::ALT_3);
	gpio.selectAltFunction(50, GPIO::ALT_3);
	gpio.selectAltFunction(51, GPIO::ALT_3);
	gpio.selectAltFunction(52, GPIO::ALT_3);
	gpio.selectAltFunction(53, GPIO::ALT_3);

	SDDriverV3  sd(SD_BASE);
	auto status = sd.init();
	if(status!=0)
	{
		kout << FATAL << "SD init failed\n";
		return 1;
	}
	const size_t n=4;
	size_t bootSector=8192;
	char buf[512*n];
	*reinterpret_cast<uint32_t*>(buf)=0xABCD;//set by user
	if(sd.transferBlocks(bootSector,n, buf) != n) // 读取第一个扇区
	{
		kout << FATAL << "read block failed\n";
		return 1;
	}
	kout << "===========read data is\n";
	for(size_t i=0;i!=n*512;++i)
		kout << Hex(static_cast<uint8_t>(buf[i])) <<" " ;
	kout << "\n===================\n";

	assert(exceptionLevel == ExceptionLevel::EL1);
	intc.disableAllInterrupts();

	// 进入调试状态
	MemoryDebugger mm;
	mm.mainloop("Debugger:");

	while(true);
	return 0;
}
