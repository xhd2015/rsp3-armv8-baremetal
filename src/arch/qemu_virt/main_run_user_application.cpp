
#include <asm_instructions.h>
#include <arch/common_aarch64/system_common_registers.h>
// provide RegDescriptor4KBL0,RegDescriptor4KBL1..., see include/arch/common_aarch64/vmsa_descriptors.py for its raw definitions
#include <arch/common_aarch64/vmsa_descriptors.h>
#include <generic_util.h>
#include <memory/MemoryManager.h>
#include <io/Output.h>
#include <memory/VirtualAddress.h>
#include <schedule/Process.h>
#include <cstring>
#include <new>

// 本程序测试了在启用虚拟内存的情况下，从EL1进入EL0，然后调用svc #0之后打印"Hello Kernel"这个字符串。
//  首先启用MMU
//  将SP,X29的高位设置为1(TTBR1)
//  将代码复制到申请的内存中（4KB对齐）
//  然后申请4级页表(L0-L3), 设置L3的前5项为代码区域, 后面的预定义的某几项为栈指针
//  栈指针执行的最末一项，因为栈是向下增长的
//  最后使用eret到EL0

// 虚拟地址的描述采用下标的描述方式
// 如果4个下标分别是 i0,i1,i2,i3 (每个最多9位), 则虚拟地址基地址是  (  (i0 &0x1ff) << (9+9+9+12) )| ((i1 & 0x1ff) << (9+9+12)) | ( (i2 & 0x1ff) << (9+12) ) | ( (i3 & 0x1ff) << 12)


// baseLoadAddress 设置为0, 代码在20KB范围内即可（需要5项页表）
// 用于内存分配的的位置映射为 4GB之后的1GB空间内，起始地址是 [0] [508] [0][0] - [0][509][511][511]
// stack的位置通过 用户专用的mman管理器分配一个按16字节对齐的空间即可

int enableMMU();
int main();


//class EL1VARecord{
//public:
//};
//class EL2VARecord{
//public:
//};
//class EL3VARecord{
//public:
//};
// 注意，因为SP需要指向最高位置超出1个字节，所以最好不要将SP的最后一个项放到表中的最后一个项
//#define PS_STACK_L3_INDEX 508
//#define PS_STACK_L3_ENTRY_NUM 2
//#define PS_RAM_L3_INDEX 510
//#define PS_RAM_L3_ENTRY_NUM 2


// start to go to EL0
int main()
{
	if(enableMMU()!=0)
		return 1;
	auto tcr = RegTCR_EL1::read();
	auto ttbr1Mask = upperMaskBits(tcr.T1SZ);

	// 将sp, x29(base pointer) 的高位置为1
	__asm__ __volatile__(
			"mov x0,sp \n\t"
			"orr x0,x0,%0 \n\t"
			"mov sp,x0 \n\t"
			"orr x29,x29, %0 \n\t"::"r"(ttbr1Mask):"sp","x0");

	// jump to higher address
	extern char mainStart[];
	RegPC pc;
	pc.PC = reinterpret_cast<uint64_t>(mainStart) | ttbr1Mask;
	pc.write();
	ASM_DEFINE_LOCAL_SYM(mainStart);

	VirtualAddress pcVa(0,40);
	pcVa.ttbrSel(0);
	VirtualAddress spVa(0,40);// 栈的虚拟地址从顶部开始
	spVa.ttbrSel(0);
	spVa.index(0,0);
	spVa.index(1,0);
	spVa.index(2,0);
	spVa.index(3,Process::STACK_L3_INDEX + Process::STACK_L3_ENTRY_NUM);

	// 设置SP_EL0
	RegSP_EL0 spEL0 {0};
	spEL0.SP = spVa.addr();
	spEL0.write();

	extern char ramStart[];
	extern char ramEnd[];
	size_t ramSize = static_cast<size_t>(ramEnd - ramStart);

	// 重新初始化内存管理器
	new (&mman) MemoryManager( reinterpret_cast<void*>(reinterpret_cast<uint64_t>(ramStart)|ttbr1Mask), ramSize,true );

	// 需要准备一份进程的代码
	// 复制代码到RAM，读取其元信息
	// 复制代码到代码区域（包括rodata)，其他变量到RAM区域
//	size_t  psCodeSize = 0;
//	ProcessImageHeader & header;
	void* codePtr = mman.allocate(USER_SPACE_SIZE,0x1000);
	if(!codePtr)
	{
		kout << FATAL << "code pointer is nullptr \n";
		return 1;
	}
	kout << "codePtr = " << codePtr << "\n";

	// USER_SPACE_START = 512K
	const void *userSpaceStart = reinterpret_cast<const void*>(USER_SPACE_START | ttbr1Mask);
	std::memcpy(codePtr, userSpaceStart, USER_SPACE_SIZE);

	kout << "====code is \n";
	kout.print(reinterpret_cast<const char*>(codePtr),200);
	kout << "\n";




	// 映射TTBR0的RAM, 该RAM位于4GB处, 大小为1GB，使用页表的方式
	// 问题就在于安全性，如果使用这种方式，用户程序很轻易就能修改某些页表。所以这不可能。
	// 映射RAM是不可取。

	// psL0Table的地址，需要知道其物理地址，通过AT指令完成
	RegDescriptor4KBL0 *psL0Table = mman.allocateAs<RegDescriptor4KBL0*>(0x1000,0x1000);// 4KB size,4KB alignment

	RegDescriptor4KBL1 *psL1Table = mman.allocateAs<RegDescriptor4KBL1*>(0x1000, 0x1000);

	RegDescriptor4KBL2 *psL2Table = mman.allocateAs<RegDescriptor4KBL2*>(0x1000, 0x1000);
	RegDescriptor4KBL3 *psL3Table = mman.allocateAs<RegDescriptor4KBL3*>(0x1000, 0x1000);

	void * ramBase = mman.allocate(Process::PAGE_SIZE * Process::HEAP_L3_ENTRY_NUM,Process::PAGE_SIZE);
	(void)ramBase; // avoid warnings
	void * spBase=mman.allocate(Process::PAGE_SIZE * Process::STACK_L3_ENTRY_NUM, Process::PAGE_SIZE);
	if(psL0Table==nullptr || psL1Table==nullptr || psL2Table == nullptr || psL3Table==nullptr || spBase==nullptr || ramBase==nullptr)
	{
		kout << FATAL << "a level of page table can not be allocated\n";
		return 1;
	}
	auto phyaddr = asm_at(reinterpret_cast<uint64_t>(psL0Table));
	RegTTBR0_EL1 ttbr0{0};
	ttbr0.ASID = 0;
	ttbr0.BADDR = ( (static_cast<uint64_t>(phyaddr.S0.PA51_48) << 48) | (phyaddr.S0.PA47_12 << 12))>>1;
	ttbr0.CnP=0;
	ttbr0.write();

	for(size_t i=0;i!=512;++i)
	{
		psL0Table[i].Valid = 0; // invalidate all
		psL1Table[i].S0.Valid = 0; // invalidate all
		psL2Table[i].S0.Valid = 0; // invalidate all
		psL3Table[i].Valid = 0; // invalidate all
	}

	psL0Table[0] = {0};
	psL0Table[0].Valid = 1;
	psL0Table[0].IsTable = 1;
	phyaddr = asm_at(reinterpret_cast<uint64_t>(psL1Table));
	if(phyaddr.S0.F==1)//fault
	{
		kout << FATAL << "Address translation fault, can not get physical address \n";
		return 1;
	}
	psL0Table[0].NextLevelTableAddr = (static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12)) | (phyaddr.S0.PA47_12);


	psL1Table[0].S1.IsTable = 1;
	psL1Table[0].S1.Valid = 1;
	phyaddr = asm_at(reinterpret_cast<uint64_t>(psL2Table));
	psL1Table[0].S1.NextLevelTableAddr = ( static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12)) | (phyaddr.S0.PA47_12);


	psL2Table[0].S1.IsTable = 1;
	psL2Table[0].S1.Valid = 1;
	phyaddr = asm_at(reinterpret_cast<uint64_t>(psL3Table));
	psL2Table[0].S1.NextLevelTableAddr = (static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12)) | (phyaddr.S0.PA47_12);

	phyaddr = asm_at(reinterpret_cast<uint64_t>(codePtr));
	// 映射代码到0-20KB
	for(size_t i=0;i!=5;++i)
	{
		psL3Table[i] = {0};
		psL3Table[i].RES1_0 = 1;
		psL3Table[i].AF = 1;
		psL3Table[i].Valid = 1;
		psL3Table[i].nG = 1;
		psL3Table[i].NS = 1;
		psL3Table[i].Contiguous = 1;
		psL3Table[i].AP = 0b11;//RO,EL0
		psL3Table[i].OutputAddr = ( (static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12))|phyaddr.S0.PA47_12 )+i;
	}
	auto spPhAddr = asm_at(reinterpret_cast<uint64_t>(spBase));
	for(size_t i=0;i<Process::STACK_L3_ENTRY_NUM;++i)
	{
		psL3Table[Process::STACK_L3_INDEX+i] = {0};
		psL3Table[Process::STACK_L3_INDEX+i].RES1_0 = 1;
		psL3Table[Process::STACK_L3_INDEX+i].AF = 1;
		psL3Table[Process::STACK_L3_INDEX+i].Valid = 1;
		psL3Table[Process::STACK_L3_INDEX+i].nG = 1;
		psL3Table[Process::STACK_L3_INDEX+i].NS = 1;
		psL3Table[Process::STACK_L3_INDEX+i].Contiguous=0;
		psL3Table[Process::STACK_L3_INDEX+i].AP=0b01;//RW, EL0
		psL3Table[Process::STACK_L3_INDEX+i].OutputAddr = ((static_cast<uint64_t>(spPhAddr.S0.PA51_48) << (48-12))|(spPhAddr.S0.PA47_12)) + i;

	}
	auto ramPhAddr=asm_at(reinterpret_cast<uint64_t>(ramBase));
	for(size_t i=0;i!=Process::HEAP_L3_ENTRY_NUM;++i)
	{
		psL3Table[Process::HEAP_L3_INDEX + i]={0};
		psL3Table[Process::HEAP_L3_INDEX+i].RES1_0 = 1;
		psL3Table[Process::HEAP_L3_INDEX+i].AF = 1;
		psL3Table[Process::HEAP_L3_INDEX+i].Valid = 1;
		psL3Table[Process::HEAP_L3_INDEX+i].nG = 1;
		psL3Table[Process::HEAP_L3_INDEX+i].NS = 1;
		psL3Table[Process::HEAP_L3_INDEX+i].Contiguous=0;
		psL3Table[Process::HEAP_L3_INDEX+i].AP=0b01;//RW, EL0
		psL3Table[Process::HEAP_L3_INDEX+i].OutputAddr = ((static_cast<uint64_t>(ramPhAddr.S0.PA51_48) << (48-12))|(ramPhAddr.S0.PA47_12)) + i;
	}


	// invalidate all caches

	phyaddr=asm_at(0);
	phyaddr.dump();

	kout << "spVa = " << spVa.addr() << "\n";

//	VirtualAddress ramBaseVa(0,40);
//	ramBaseVa.index(3,Process::HEAP_L3_INDEX);

	// 进入EL0
	RegELR_EL1 elr;
	elr.returnAddr = pcVa.addr();
	elr.write();
	auto spsr=RegSPSR_EL1::read();
	spsr.EL = 0; // under EL0, SPSel=RES0
	spsr.SPSel = 0;
	spsr.write();
	asm_eret();

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


	RegPC pc{0};
	extern char afterMMUSet[];
	kout << INFO << "afterMMUSet = ";
	kout << Hex(reinterpret_cast<uint64_t>(afterMMUSet))<<"\n";
	kout << INFO << "mainEnd = " ;
	kout << Hex(reinterpret_cast<uint64_t>(mainEnd))<<"\n";

	// set the upper tcr.T1SZ bits to 1,so TTBR1 is used
	pc.PC = reinterpret_cast<uint64_t>(afterMMUSet) | upperMaskBits(tcr.T1SZ);
	pc.write(); // just jump to the next instruction, but TTBR0 is changed to TTBR1

	// 设置栈值为高端地址
	__asm__ __volatile__(
			"mov x0,sp \n\t"
			"orr x0,x0,%0 \n\t"
			"mov sp,x0 \n\t"
			"orr x29,x29, %0 \n\t"::"r"(upperMaskBits(tcr.T1SZ)):"sp","x0");

	// define a local symbol:afterMMUSet
	ASM_DEFINE_LOCAL_SYM(afterMMUSet);//if local,3b38, wrong value
	kout << INFO << "Successfully enabled MMU\n";
	kout << INFO << "end enableMMU.\n";


	ASM_DEFINE_LOCAL_SYM(mainEnd);

	return 0;
}

