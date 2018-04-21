
#include <asm_instructions.h>
#include <arch/common_aarch64/system_common_registers.h>
// provide RegDescriptor4KBL0,RegDescriptor4KBL1..., see include/arch/common_aarch64/vmsa_descriptors.py for its raw definitions
#include <arch/common_aarch64/vmsa_descriptors.h>
#include <generic_util.h>
#include <memory/VirtualAddress.h>
#include <cstring>
#include <new>

int enableMMU();
int main();

// 本程序测试了一个编写在内核空间的程序，将其链接到内核镜像的 USER_SPACE_START,USER_SPACE_SIZE的区间内存，模拟外存存储用户程序的方式； 申请内存来将这些代码加载到内存中，然后跳转到EL0的该处用户代码起始处执行
// 注意点：  ramStart,ramSize 由链接脚本提供，用于确定除去预分配的ram空间后，剩余的可自由使用的内存空间。 注意，由adrp指令的存在，所以代码需要4KB对齐。
// 缺点： 没有设置sp_el0的值，现在用户程序不能直接返回，不能使用全局变量
//  具体的用户程序参见配置 Debug-user_space产生的文件，用户主程序在src/arch/user_space/user_main_hello_kernel.cpp中
int main()
{
	if(enableMMU()!=0)
		return 1;
	extern char mainStart[];
	auto tcr = RegTCR_EL1::read();
	auto ttbr1Mask = upperMaskBits(tcr.T1SZ);

	RegPC pc;
	pc.PC = reinterpret_cast<uint64_t>(mainStart) | ttbr1Mask;
	pc.write();
	ASM_DEFINE_LOCAL_SYM(mainStart);



	extern char ramStart[];
	extern char ramEnd[];
	size_t ramSize = static_cast<size_t>(ramEnd - ramStart);

	// 重新初始化内存管理器
	new (&mman) MemoryManager( reinterpret_cast<void*>(reinterpret_cast<uint64_t>(ramStart)|ttbr1Mask), ramSize,true );

	// 需要准备一份进程的代码
	// 复制代码到RAM，读取其元信息
	// 复制代码到代码区域（包括rodata)，其他变量到RAM区域
	void* codePtr = mman.allocate(USER_SPACE_SIZE, 0x1000);//4KB对齐
	if(!codePtr )
	{
		kout << FATAL << "code pointer is nullptr \n";
		return 1;
	}
	kout << "codePtr = " << codePtr << "\n";

	// USER_SPACE_START = 512K
	const void *userSpaceStart = reinterpret_cast<const void*>(USER_SPACE_START | upperMaskBits(tcr.T1SZ));
	std::memcpy(codePtr, userSpaceStart, USER_SPACE_SIZE);

	kout << "=========code:\n";
	kout.print(reinterpret_cast<const char*>(codePtr), 200);
	kout << "\n";

	auto strPtr = reinterpret_cast<const char*>(codePtr);
	while(*strPtr++!='H');
	--strPtr;

	kout << "String is \"" << strPtr << "\"\n";
	kout << "strPtr = " << reinterpret_cast<const void*>(strPtr) << "\n";


	RegVBAR_EL1::read().dump();

	RegELR_EL1 elr;
	elr.returnAddr = reinterpret_cast<uint64_t>(codePtr);
	elr.write();

	RegSPSR_EL1 spsr=RegSPSR_EL1::read();
	spsr.EL = 1;
	spsr.SPSel = 1;
	spsr.write();
	asm_eret(); // 进入到之前的程序之中

	return 0;
}


int enableMMU()
{
	// provided by linker script, must be placed in RAM, because they need to be writeable, typical setting is : L0Table spans 4KB,L1Table spans the successive 4KB,and L0Table must start at a 4KB boundary.
	extern RegDescriptor4KBL0 L0Table[];
	extern RegDescriptor4KBL1 L1Table[];
	// must be at EL1
	auto curEl = RegCurrentEL::read();
	if(curEl.EL != 1)
	{
		kout << FATAL << " Not at EL1 \n";
		return 1;
	}
	// set SPSel to 1
	RegSPSel spsel{0};
	spsel.SP = 1;
	spsel.write();



	// set exception vector of EL1
	extern char ExceptionVectorEL1[];
	RegVBAR_EL1 vbar;
	vbar.Addr = reinterpret_cast<uint64_t>(ExceptionVectorEL1);
	vbar.write();

	// determine PARange
	auto aa64 = RegID_AA64MMFR0_EL1::read();
	aa64.dump();
	if(aa64.TGran4 != 0b0000)
	{
		kout << FATAL << "4KB granule is not supported\n";
		return 1;
	}

	int paBitsMap[]=   {32,  36,  40,  42,  44,  48,  52};
	int indexBitsMap[]={2,   6,   1,   3,   5,   9,   INT32_MAX};
//	int levelsMap[]=   {3,   3,   4,   4,   4,   4,   INT32_MAX};
	int initLevelMap[]={1,   1,   0,   0,   0,   0,   INT32_MAX};
//	int tnszMap[]=     {32,  28,  24,  22,  20,  16,  INT32_MAX};
	if(aa64.PARange >= arrsizeof(paBitsMap))
	{
		kout << FATAL << "PARange not supported\n";
		return 1;
	}
	int effPARange = aa64.PARange;
	if(paBitsMap[effPARange] == 52 )
	{
		kout << INFO << "PARange is 52, we need to reduce it to 48\n";
		--effPARange;
	}

	if(initLevelMap[effPARange] != 0)
	{
		kout << FATAL << "Initial level not at 0,which this program designed for specifically.";
		return 1;
	}


	auto tcr = RegTCR_EL1::read();
	// disable address tag
	tcr.TBI0 = tcr.TBI1 = 0;
	// set output address size,same with PARange
	tcr.IPS = effPARange & 0b0111;// reserve lower 3 bits
	// set input address size, TxSZ is the most significant bits
	tcr.T0SZ = tcr.T1SZ = 64 - paBitsMap[effPARange];
	tcr.A1 = 0; //ASID is in ttbr0
	tcr.TG0 = 0b00;//TTBR0 4KB
	tcr.TG1 = 0b10;//TTBR1 4KB
	tcr.SH0 = tcr.SH1 = 0b10;//outer shareable
	tcr.IRGN0 = tcr.IRGN1 = 0b01;//inner cacheable
	tcr.ORGN0 = tcr.ORGN1 =0b01;// outer cacheable
	tcr.EPD0 = tcr.EPD1 = 0; // not disable page walk on TLB miss

	tcr.write();

	// memory attribute
	// peri: DevicenGnRnE,Execute Never,Not Shared,(auto)noncacheable,privileged
	// flash and others:Normal,Read/Write,Shared,Cacheable
	//   ram: + unprivileged
	//   flash: + privileged
	//    peri: +privileged
	// mair--> 0:device, 0x00, 1:normal, 0xff  2:normal,non-cacheable,0x44
	RegMAIR_EL1 mair{0};
	mair.Attr0 = 0x00; // Device-nGnRnE
	mair.Attr1 = 0xff; //Normal
	mair.Attr3 = 0x44; // Normal,Non-Cacheable
//	mair.Attr3 = ; //Normal, read only
	mair.write();



	// initial level resolves (9-extra) bits
	// every following level resolves 9 bits, the lower 12 bits are flatten mapped
//	int levelsNeeded = (paBitsMap[effPARange] - 12)/9;

	// make sure that this section is placed at the lowest 4KB, so that it can be successfully flatten mapped.That is, mainEnd <= 4KB
	// because we just use L1 as block descriptor,so it allows more that 12 bits of flatten mapping, i.e. at least 12+9 = 21 bits

	extern char mainEnd[];
	if( (reinterpret_cast<size_t>(mainEnd) >> 30) >= 1) // >1GB, overflows
	{
		kout << FATAL << "end of main overflows, meaning that it may not be flatten mapped.\n";
		return 1;
	}

	// There is alignment requirement of translation table address
	// translation table's lower 12 bits must be 0


	// we have simplified the condition, by promising that L0Index=L1Index=0, L1 is a block descriptor, whose output address is 0
	// use the preallocated memory in the RAM.
	RegDescriptor4KBL0 & descrL0 = L0Table[0];
	descrL0.IsTable = 1;
	descrL0.Valid = 1;
	descrL0.RES0 = 0;
	descrL0.NSTable = 0;// non-secure, res0,also ignored.TODO test if 1 is working
	descrL0.NextLevelTableAddr = ( reinterpret_cast<uint64_t>(L1Table) & upperMaskBits(64-12)) >> 12;
	descrL0.APTable = 0b00; // no effect on permissions
	descrL0.PXNTable = 0;//no effect
	descrL0.XNTable = 0 ;// no effect
	descrL0.Ignored_0=0;
	descrL0.Ignored_1=0;


	// map RAM
//	RegDescriptor4KBL0 & descrRAML0 = L0Table[0];
//	descrL0.IsTable = 1;
//	descrL0.Valid = 1;
//	descrL0.RES0 = 0;
//	descrL0.NextLevelTableAddr = (L1Table >> 12);

	// map peri.



	// starts at next level
	// not all are read-only, the PERIPHABSE is writeable
	RegDescriptor4KBL1 & descrL1= L1Table[0];
	descrL1.S0.IsTable=0;
	descrL1.S0.NS=1;
	descrL1.S0.OutputAddr = (0 >> 30); //VA[29:0] = OA[29:0]
	descrL1.S0.AF = 1; // if AF=0, the first access will generate a fault
	descrL1.S0.AttrIndex = 1;// normal memory
	descrL1.S0.Valid = 1;
	descrL1.S0.PXN = 0;
	descrL1.S0.UXN = 0;
	descrL1.S0.Contiguous = 1;
	descrL1.S0.nG = 0; // apply to all ASID
	// no AP[0], AP[2]=0:read-write 1:read-only  AP[1]= can be access from EL0
//	descrL1.S0.AP = 0b01; // read-write, also from EL0
	descrL1.S0.AP = 0b00;
	descrL1.S0.NS = 1; // non-secure
	descrL1.S0.SH = 0b10; //outer-shareable
	descrL1.S0.Ignored = 0;
	descrL1.S0.RES0_0=0;
	descrL1.S0.RES0_1=0;
	descrL1.S0.Reserved=0;

	// RAM starts from 1GB
	L1Table[1] = L1Table[0]; // all the same, except the following changes
	L1Table[1].S0.AP = 0b00;
	L1Table[1].S0.OutputAddr = (0x40000000 >> 30);

	// currently, TTBR0 is flatten mapped
	RegTTBR0_EL1 ttbr0 {0};

	// original : TTBR[47:12], modified: TTBR[47:12-extraBits]
	//  that is, originally, ttbr.BADDR's lower 11bits are 0,now its number reduces by extraBits
	int extraBits = 9 - indexBitsMap[effPARange]; // extraBits
	(void)extraBits;
//	ttbr0.BADDR = reinterpret_cast<uint64_t>(L0Table) & upperMaskBits(63 - (12-extraBits)+1) >> 1;// keep bits[63:(12-extraBits)]
//	ttbr0.BADDR = 0x400; // level 3 fault
//	ttbr0.BADDR = 0x40; // level 3
//	ttbr0.BADDR = 0x4; // level 2 fault
	ttbr0.BADDR = reinterpret_cast<uint64_t>(L0Table)>>1;
	ttbr0.ASID = 0;
	ttbr0.CnP = 0;

//	uint64_t & lttbr0 = *reinterpret_cast<uint64_t*>(&ttbr0);
//	lttbr0 = reinterpret_cast<uint64_t>(L0Table);

	RegTTBR1_EL1 ttbr1 {0};
	ttbr1.BADDR = ttbr0.BADDR;
	ttbr1.ASID = 0;
	ttbr1.CnP = 0;

	ttbr0.write();
	ttbr1.write();
	asm_isb();// seen by following instructions


	// dump information
	kout << "L0Table = " << Hex(reinterpret_cast<uint64_t>(L0Table)) << "\n";
	kout << "L1Table = " << Hex(reinterpret_cast<uint64_t>(L1Table)) << "\n";
	ttbr0.updateRead();
	ttbr0.dump();
	ttbr1.updateRead();
	ttbr1.dump();

	tcr.updateRead();
	tcr.dump();

	L0Table[0].dump();
	L1Table[0].dump();
	RegSCTLR_EL1::read().dump();


	if(RegID_AA64MMFR1_EL1::read().PAN == 0)
	{
		kout << INFO << "PAN not supported\n";
	}else{
		// this may fail,because architechure does not support armv8.1-PAN
		RegPAN::read().dump();
	}

	// test it, not working before enabling MMU
	// Stage1, EL1,as if read from that address
//	__asm__ __volatile__("at S1E1R,%0 \n\t"::"r"(mainEnd));
//	RegPAR_EL1::read().dump();

	// SMPEN
//	__asm__("MRS X0, S3_1_C15_C2_1 \n\t"
//			"ORR X0, X0, #(0x1 << 6) \n\t" // The SMP bit.
//			"MSR S3_1_C15_C2_1, X0 \n\t"
//			);

	// enable it
	auto sctl = RegSCTLR_EL1::read();
	sctl.EE = 0;//little endian
	sctl.E0E = 0;
	sctl.WXN = 0; // no effect,XNs normal
	sctl.I = 1;
	sctl.SA = 0;
	sctl.SA0 = 0;
	sctl.C = 1;
	sctl.A = 0;
	sctl.M = 1;
	sctl.write();
//	__asm__("DSB SY \n\t");
	asm_isb();
	sctl.updateRead();
	sctl.dump();

	kout << INFO << "Successfully set TTBR0\n";
	// change vbar to ttbr1
	vbar.Addr |= upperMaskBits(tcr.T1SZ);
	vbar.write();

//	// 设置返回地址 -- 通常都是不准确的，因为x30在多次使用过程中可能已经改变
//	__asm__ __volatile__("orr x30,x30,%0 \n\t"::"r"(upperMaskBits(tcr.T1SZ)):"x30");



	RegPC pc{0};
	extern char afterMMUSet[];
	kout << INFO << "afterMMUSet = ";
	kout << Hex(reinterpret_cast<uint64_t>(afterMMUSet))<<"\n";
	kout << INFO << "mainEnd = " ;
	kout << Hex(reinterpret_cast<uint64_t>(mainEnd))<<"\n";

	// set the upper tcr.T1SZ bits to 1,so TTBR1 is used
	pc.PC = reinterpret_cast<uint64_t>(afterMMUSet) | upperMaskBits(tcr.T1SZ);
	pc.write(); // just jump to the next instruction, but TTBR0 is changed to TTBR1

	// define a local symbol:afterMMUSet
	ASM_DEFINE_GLOBAL_SYM(afterMMUSet);//if local,3b38, wrong value
	kout << INFO << "Successfully enabled MMU\n";
	kout << INFO << "end enableMMU.\n";


	ASM_DEFINE_GLOBAL_SYM(mainEnd);

	return 0;
}

