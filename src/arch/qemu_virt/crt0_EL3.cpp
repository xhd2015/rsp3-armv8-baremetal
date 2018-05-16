
#include <arch/qemu_virt/crt0.h>
#include <def.h>
#include <asm_instructions.h>
#include <cstring>
#include <driver/uart/PL011.h>
#include <new>
#include <interrupt/GICDefinitions.h>
#include <interrupt/InterruptManager.h>

// NOTE: it is required that this snippet has a unique name so that we can arrange it to head our binary by our hand.
// and it is required that init is placed in .text.boot
__asm__(
".section .text.boot \n\t"
".global asm_start \n\t"
"asm_start: \n\t"
ASM_HALT_SLAVE_CPUS()
ASM_SET_SP_SEL(1)  //使用SP_ELx
ASM_INIT_CALLER(__stack_top)
);

extern char __bss_start[];
extern char __bss_end[];

// TODO 重新初始化kout,kin以及相关的类
// EL1,SPSel=1, DAIF=0b1111
// EL3需要设置SCR
// EL2需要设置HCR
void init(uint64_t currentEL)
{
	if(currentEL==3)
		securityState = SecurityState::S_NS_2S;
	else if(currentEL == 2)
		securityState=SecurityState::S_NS_1S;
	else // 这里，EL=1，可能并不是非安全状态，但是通常都是这样的。
		securityState = SecurityState::S_NS_1S;

	// 我们假定有EL2，实际上可能有EL3但是没有EL2，但那不是通常的情况
	// 在没有EL2的情况下，访问HCR_EL2会失败，那正是我们想要的。
	if(currentEL >= 2) // set HCR
	{
		auto hcr=RegHCR_EL2::read();
		hcr.RW=1; // aa64
		hcr.VM=0; // disable virtualization
		hcr.TGE=0; // do not trap EL1 exceptions
		hcr.write();
	}
	if(currentEL==3)
	{
		auto scr=RegSCR_EL3::read();
		scr.RW=1; // aa64
		scr.SIF=0;//allow prefecth from non-secure
		scr.NS=1;// non-secure
		scr.write();

		InterruptManager::preconfigEL3(
				reinterpret_cast<volatile void *>(GIC_DIST_BASE),
				reinterpret_cast<volatile void*>(GIC_REDIST_BASE),
				false, // secure
				1, // group
				true, // allow G1S
				true  // allow G1NS
				);
	}

	// 跳转到EL1
	// SPSR=  0b  0000_0000_0000_0000_0000_0011_1100_0101 = 0x3c5
	if(currentEL==2)
		__asm__ __volatile__(
				ASM_ERET_FROM(2,0x3c5)
			);
	else if(currentEL==3)
		__asm__ __volatile__(
				ASM_ERET_FROM(3,0x3c5)
		);
	exceptionLevel = ExceptionLevel::EL1;

	std::memset(__bss_start,0,__bss_end - __bss_start);

	int res = main();
	(void)res;
	// 配置错误时，我们无法进行输出
	asm_wfe_loop();
}


