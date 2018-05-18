// _MOD_NOTE 根据libprefix.a的内容，crt0.cpp永远作为主要的crt程序文件，
//   该文件名不可更改
// UPDATE：既然尝试减小代码体积的努力失败了，那么crt0的文件名也是可变的。
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

extern uint64_t __bss_start[];
extern uint64_t __bss_end[];
extern uint64_t __vt_end[];
extern uint64_t __vt_begin[];
extern uint64_t __init_ram_start[];
extern uint64_t __init_ram_end[];

extern uint64_t DTB_START[];
extern uint64_t STACK_START[];
extern uint64_t CODE_START[];
extern uint64_t USER_SPACE_START[];
extern uint64_t DATA_START[];
extern uint64_t VIDEO_RAM_START[];



// 必须与init位于同一个分区？ 不是，取决于编译选项
// 放在.text.boot分区有利于调试。
__attribute__((section(".text.boot")))
void init(uint64_t currentEL)
{
	// 注意，在任何 new (&x) X()之前，必须先设置 bss段，否则，如果留到后面设置，就会覆盖之前的设置
	for(auto p=__bss_start;p!=__bss_end;++p)
		*p=0;

	highestEL = static_cast<ExceptionLevel>(currentEL);

	// mini uart,经过测试，无需调用init也能输出
	new (&miniUART) BCM2835MiniUART(UART_BASE);
	new (&miniUARTChReaderWriter) MiniUARTCharacterReaderWriter(&miniUART);
//	miniUART.init();

	//PL011相关
	new (&mailBox) BCM2836MailBox(MBOX_BASE);
	new (&gpio) GPIO(GPIO_BASE);
	new (&pl011) PL011(UART0_BASE);
	new (&pl011ChReader) PL011CharacterReaderWriter(&pl011);
	mailBox.setUARTClockRate(4000000);//4MHz
	// 设置GPIO 14,15为ALT_0
	gpio.selectAltFunctionNoLog(14, GPIO::ALT_0);
	gpio.selectAltFunctionNoLog(15, GPIO::ALT_0);
	pl011.init();

//	new (&kout) Output(&miniUARTChReaderWriter);
	new (&kout) Output(&pl011ChReader);
	// DOCME
	// 有8点相差，因为kout实际上需要的是基类部分
	//   基类有一个虚表占据8字节
	//   子类的布局： 子类虚表 -- 基类 -- 子类成员
	//   因此当子类转换成基类时，需要减去偏移。
	kout << INFO << "&pl011ChReader = " << Hex(&pl011ChReader) << "\n";
	kout << INFO << "kout._chWriter = " << Hex(*reinterpret_cast<uint64_t*>(&kout))<<"\n";
	kout << INFO << "crt0 setting up environment\n";
	kout << "enter EL = " << currentEL << "\n";

	kout << INFO << "crt0 prepare to enter EL1\n";
	if(currentEL >= 3)//我们可能处于模拟器模式
	{
		auto scr=RegSCR_EL3::read();
		scr.RW=1; // aa64
		scr.SIF=0;//allow prefecth from non-secure
		scr.NS=1;// non-secure
		scr.HCE=1; //允许hvc指令
		scr.SMD=0; //允许smc指令
		scr.write();
		// 设置中断向量表
		RegVBAR_EL3 vbar3;
		vbar3.Addr = reinterpret_cast<uint64_t>(ExceptionVectorEL1);
		vbar3.write();
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
		hcr.DC=0;// not default cache
		hcr.HCD=0;//enable HVC
		hcr.TSC=0; // do not route SMC to EL2
		hcr.TWI=0;// wfi not routed
		hcr.write();
		kout << INFO << "after hcr update\n";
		hcr.update().dump();
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
	if(currentEL>=1)
	{
		auto cntk = RegCNTKCTL_EL1::read();
		cntk.EL0PTEN=1;
		cntk.EL10PCTEN=1;//freqency
		cntk.EL0VCTEN=1;
		cntk.EL0VTEN=1;
		cntk.write();
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
	kout << INFO <<"crt0 enetered EL" << static_cast<size_t>(exceptionLevel) << "\n";

	RegSCTLR_EL1::make(0x30D00800).write();
	RegSCTLR_EL1::read().dump();
//	while(true);
	// 设置EL1的中断向量
	RegVBAR_EL1 vbar1;
	vbar1.Addr = reinterpret_cast<uint64_t>(ExceptionVectorEL1);
	vbar1.write();

	kout << INFO << "dump symbols \n";
	kout << "__bss_start = " << reinterpret_cast<void*>(__bss_start) << ","
		 << "__bss_end = " << reinterpret_cast<void*>(__bss_end) << "\n";
	kout
		 << "__vt_begin = " << reinterpret_cast<void*>(__vt_begin) << ","
		 << "__vt_end = " << reinterpret_cast<void*>(__vt_end)
		 << "\n";
	kout << "__init_ram_start = " << reinterpret_cast<void*>(__init_ram_start) << ","
			<<"__init_ram_end = " << reinterpret_cast<void*>(__init_ram_end)
			<< "\n";
	kout
		<< " DTB_START = " << DTB_START << ","
		<< " STACK_START = " << STACK_START << ","
		<< " CODE_START = " << CODE_START << ","
		<< " USER_SPACE_START = " << USER_SPACE_START << ","
		<< " DATA_START = " << DATA_START << ","
		<< " VIDEO_RAM_START = " << VIDEO_RAM_START
		<< "\n";

	kout << INFO <<"crt0 call main\n";
	int res = main();
	(void)res;
	kout << INFO <<"crt0 main returns with " << res << "\n";
	asm_wfi_loop();
}


