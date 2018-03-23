
#include <def.h>
#include <arch/qemu-virt/util.h>
#include <asm_instructions.h>
#include <cstring>
#include <io/uart/XilinxUARTPS.h>
#include <new>
#include <generic/cpu.h>
#include <io/sd/CardSpecData.h>
#include <io/sd/SDCardStatus.h>
#include <io/sd/SDDriver.h>
#include <bitset>

//我们需要提供的入口函数,与一般main函数的接口一致
int main();

// NOTE: it is required that this snippet has a unique name so that we can arrange it to head our binary by our hand.
// and it is required that init is placed in .text.boot
__asm__(
".section .text.boot \n\t"
ASM_HALT_SLAVE_CPUS()
ASM_SET_SP_SYM(__stack_top)
"b init \n\t"
".text \n\t" // 恢复之前的分区格式
);

extern uint64_t __bss_start[];
extern uint64_t __bss_end[];

extern "C"
void init()
{
	// p 的值一定是__bss_start吗？ 不一定，如果栈是错误地放在了一块只读内存上，则先存p的副本，然后取出来，其值就是0.
//	setupUnintializedToZero();u
	for(auto p=__bss_start;p!=__bss_end;++p)
		*p=0;

	// test if ram good
	volatile uint8_t *zeroPtr = nullptr;
	*zeroPtr = 0xef;
	if(*zeroPtr!=0xef)
		asm_wfe_loop();

	new (&xilinxUART) XilinxUARTPS(reinterpret_cast<void *>(UART_BASE));
	xilinxUART.init();

	int res=main();
	(void)res;
	asm_wfe_loop();
}


