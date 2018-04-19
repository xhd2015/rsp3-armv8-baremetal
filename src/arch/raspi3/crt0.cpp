#include <arch/qemu_virt/crt0.h>
#include <cstring>
#include <asm_instructions.h>
#include <new>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/timer_registers.h>
#include <interrupt/exception_def.h>
#include <runtime_def.h>
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

extern void test();

// 必须与init位于同一个分区？ 不是，取决于编译选项
// 放在.text.boot分区有利于调试。
__attribute__((section(".text.boot")))
void init(uint64_t currentEL)
{
	// 确保所有初始化数据都是正确的
	std::memset(__bss_start,0,__bss_end - __bss_start );
	new (&mailBox) BCM2836MailBox(MBOX_BASE);
	new (&pl011) PL011(UART0_BASE);
	new (&gpio) GPIO(GPIO_BASE);
	new (&kout) Output();

	// mailbox 必须先设置时钟频率
	// 对UART0的初始化必须包括这几个基本的步骤，即设置频率，设置GPIO接口功能，启用PL011
	mailBox.setUARTClockRate(4000000);//4MHz
	// 设置GPIO 14,15为ALT_0
	gpio.selectAltFunction(14, GPIO::ALT_0);
	gpio.selectAltFunction(15, GPIO::ALT_0);
	pl011.init();

	while(!pl011.readReady());
//	test();
	if(currentEL == 3)//我们可能处于模拟器模式
	{
		auto scr=RegSCR_EL3::read();
		scr.RW=1; // aa64
		scr.SIF=0;//allow prefecth from non-secure
		scr.NS=1;// non-secure
		scr.write();
	}
	if(currentEL >= 2)
	{
		 // set HCR
		auto hcr=RegHCR_EL2::read();
		{
//			kout << "Waiting for connection....\n";
//			while(!miniUART.readReady());// 直到输入一个字符才开始。
//			while(!pl011.readReady());
			hcr.dump();
//			RegHCR_EL2: VM = 0, SWIO = 1, PTW = 0, FMO = 0, IMO = 0, AMO = 0, VF = 0, VI = 0, VSE = 0, FB = 0, BSU = 0, DC = 0, TWI = 0, TWE = 0, TID0 = 0, TID1 = 0, TID2 = 0, TID3 = 0, TSC = 0, TIDCP = 0, TACR = 0, TSW = 0, TPCP = 0, TPU = 0, TTLB = 0, TVM = 0, TGE = 0, TDZ = 0, HCD = 0, TRVM = 0, RW = 0, CD = 0, ID = 0, E2H = 0, TLOR = 0, TERR = 0, TEA = 0, MIOCNCE = 0, RES0_0 = 0,

			RegSCTLR_EL1::read().dump(); // should be 30D00800
//			RegSCTLR_EL1: M = 0, A = 0, C = 0, SA = 1, SA0 = 1, CP15BEN = 1, RES0_0 = 0, ITD = 0, SED = 0, UMA = 0, RES0_1 = 0, RES1_2 = 1, I = 0, RES0_3 = 0, DZE = 0, UCT = 0, nTWI = 1, RES0_4 = 0, nTWE = 1, WXN = 0, RES1_5 = 0, IESB = 0, RES1_6 = 1, SPAN = 1, E0E = 0, EE = 0, UCI = 0, RES0_7 = 0, nTLSMD = 0, LSMAOE = 0, RES0_8 = 0,
			// 可以看到RES1_5是错误的

		}

		hcr.RW=1; // aa64
		hcr.VM=0; // disable virtualization
		hcr.TGE=0; // do not trap EL1 exceptions
		hcr.write();
		// 在EL1/0允许访问计时器寄存器
		auto cnthctl=RegCNTHCTL_EL2::read();
		cnthctl.EL1PCEN=1;
		cnthctl.EL1PCTEN=1;//no traps
		cnthctl.write();

		// 设置中断向量表
		RegVBAR_EL2 vbar2;
		vbar2.Addr = reinterpret_cast<uint64_t>(ExceptionVectorEL1);
		vbar2.write();
	}
	if(currentEL==3)
	{
		securityState = SecurityState::S_NS_2S;
		__asm__ __volatile__(
				ASM_ERET_FROM(3,0x3c5)
		);
	}
	else if(currentEL==2)
	{
		securityState = SecurityState::S_NS_1S;
		__asm__ __volatile__(
				ASM_ERET_FROM(2,0x3c5)
			);
	}else{ // EL1
		securityState = SecurityState::S_NS_1S;
	}
	// 读取当前EL
	exceptionLevel = static_cast<ExceptionLevel>(RegCurrentEL::read().EL);
	assert(exceptionLevel == ExceptionLevel::EL1);


	RegSCTLR_EL1::make(0x30D00800).write();
	RegSCTLR_EL1::read().dump();
//	while(true);
	// 设置EL1的中断向量
	RegVBAR_EL1 vbar1;
	vbar1.Addr = reinterpret_cast<uint64_t>(ExceptionVectorEL1);
	vbar1.write();

	int res = main();
	(void)res;

	asm_wfe_loop();
}


