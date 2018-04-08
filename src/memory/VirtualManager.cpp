
#include <memory/VirtualManager.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/vmsa_descriptors.h>
#include <memory/MemoryManager.h>
#include <asm_instructions.h>
#include <new>
#include <io/Output.h>

const size_t VirtualManager::MAP_SIZE[4]={ 1ul<<39, 1ul<<30,1ul<<21,1ul<<12};

int VirtualManager::init(size_t mmuBasePage,size_t sizeAttrGroup[][3],size_t groupNum,InitFunctionPtr jmpFunc,void *newSp)
{
	// 先判断是否支持4KB映射
	auto aa64 = RegID_AA64MMFR0_EL1::read();
	if(aa64.TGran4 != 0b0000)
		return 1;

	// 所有的大小必须是页的倍数，否则无法实现属性分离。
	for(size_t i=0;i!=groupNum;++i)
		if(sizeAttrGroup[i][0] % PAGE_SIZE != 0)
			return 1;

	// 后面设置虚拟地址的范围与物理地址范围相同, 并且只能是40,42,44,48这几个值,如果在这些值之外，就选择40
    size_t paBitsMap[]={32,  36,  40,  42,  44,  48,  52};
	size_t paIndex = aa64.PARange;
	if(paBitsMap[paIndex]<40 || paBitsMap[paIndex]>48)
		paIndex=2;

	_addressBits = paBitsMap[paIndex];


	// 先初始化所有的内存属性
	RegMAIR_EL1 mair=RegMAIR_EL1::make(0);
	mair.Attr0 = 0xff; //Normal
	mair.Attr1 = 0x00; // Device-nGnRnE, PERIPHERAL
	mair.Attr2 = 0xff; //Normal,non-cacheable
	mair.write();

	// 设置TCR，TTBR0,TTBR1均使用4KB映射
	auto tcr = RegTCR_EL1::read();
	// disable address tag
	tcr.TBI0 = tcr.TBI1 = 0;
	// set output address size,same with PARange
	// IPS has 3bits, the extra bit is alwasy RES0
	tcr.IPS = paIndex; // 设置输出的虚拟地址的范围，包括0级页表。
	// set input address size, TxSZ is the most significant bits
	tcr.T0SZ = tcr.T1SZ = 64 - _addressBits;//设置输入的物理地址的范围
	tcr.A1 = 0; //ASID is in ttbr0
	tcr.TG0 = 0b00;//TTBR0 4KB
	tcr.TG1 = 0b10;//TTBR1 4KB
	tcr.SH0 = tcr.SH1 = 0b10;//outer shareable
	tcr.IRGN0 = tcr.IRGN1 = 0b01;//inner cacheable
	tcr.ORGN0 = tcr.ORGN1 =0b01;// outer cacheable
	tcr.EPD0 = tcr.EPD1 = 0; // not disable page walk on TLB miss
	tcr.write();

	_ttbr1Mask = upperMaskBits(tcr.T1SZ);

	// 设置页表和TTBR0,TTBR1
	setFlatMap(mmuBasePage, sizeAttrGroup, groupNum);

	// 启用MMU
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
	asm_isb();


	// 将上下文切换到高端地址,包括中断地址，栈指针
	auto vbar=RegVBAR_EL1::read();
	vbar.Addr |= _ttbr1Mask;
	vbar.write();

	// 跳转到预定的函数处
	__asm__ __volatile__(
			"mov sp,%0 \n\t"
			"br  %1 \n\t"
			::"r"(reinterpret_cast<uint64_t>(newSp)|_ttbr1Mask),"r"(reinterpret_cast<uint64_t>(jmpFunc)|_ttbr1Mask));

	return 0;//no return,but make gcc happy

}

size_t VirtualManager::calculateFlatMapPageNum(size_t size)const
{
	size_t pagesNeeded=0;
	for(size_t i=0;i!=4;++i)
		{
		pagesNeeded += alignAhead(alignAhead(size, MAP_SIZE[i])/MAP_SIZE[i]*ENTRY_SIZE,PAGE_SIZE)/PAGE_SIZE;
		}
	return pagesNeeded;
}


void VirtualManager::setFlatMap(size_t mmuBasePage,size_t sizeAttrGroup[][3],size_t groupNum)
{
//	// 所有的大小必须是页的倍数，否则无法实现属性分离,这个检测实际上应当由调用者进行。
//	for(size_t i=0;i!=groupNum;++i)
//		if(sizeAttrGroup[i][0] % PAGE_SIZE != 0)
//			return;

	// 计算总的大小
	size_t size = 0;
	for(size_t i=0;i!=groupNum;++i)
		size+=sizeAttrGroup[i][0];

	size_t lxEntryNum[4];
//	size_t lxPageNum[4];
//	size_t pagesNeeded=0;
	for(size_t i=0;i!=4;++i)
	{
		lxEntryNum[i]=alignAhead(size, MAP_SIZE[i])/MAP_SIZE[i];
//		lxPageNum[i] =alignAhead(lxEntryNum[i]*ENTRY_SIZE,PAGE_SIZE);
//		pagesNeeded += lxPageNum[i];
	}
//	确定是否能够映射,不再检查，由调用者进行
//	if(pagesNeeded > mmuPageNum)
//		return;

	Descriptor4KBL0 *l0Table = reinterpret_cast<Descriptor4KBL0*>(mmuBasePage*PAGE_SIZE);
	Descriptor4KBL1 *l1Table = reinterpret_cast<Descriptor4KBL1*>(alignAhead(reinterpret_cast<uint64_t>(l0Table + lxEntryNum[0]) , PAGE_SIZE));
	Descriptor4KBL2 *l2Table = reinterpret_cast<Descriptor4KBL2*>(alignAhead(reinterpret_cast<uint64_t>(l1Table + lxEntryNum[1]) , PAGE_SIZE));
	Descriptor4KBL3 *l3Table = reinterpret_cast<Descriptor4KBL3*>(alignAhead(reinterpret_cast<uint64_t>(l2Table + lxEntryNum[2]) , PAGE_SIZE));
	for(size_t i=0;i!=lxEntryNum[0];++i)
	{
		Descriptor4KBL0::make(l0Table+i,0);
		l0Table[i].IsTable = 1;
		l0Table[i].Valid = 1;
//			table[i].RES0_1 = 0;
//			table[i].NSTable = 0;// non-secure, res0,also ignored.TODO test if 1 is working
		// 基址就是第n个l1Table
		l0Table[i].NextLevelTableAddr = ( reinterpret_cast<uint64_t>(l1Table + ENTRY_NUM*i)  >> 12);
//			table[i].APTable = 0b00; // no effect on permissions
//			table[i].PXNTable = 0;//no effect
//			table[i].XNTable = 0 ;// no effect
//			table[i].ignored_0=0;
//			table[i].ignored_2=0;
	}
	for(size_t i=0;i!=lxEntryNum[1];++i)
	{
		Descriptor4KBL1::make(l1Table + i, 0);
		l1Table[i].S1.IsTable=1; // 是表
		l1Table[i].S1.Valid=1;
		l1Table[i].S1.NextLevelTableAddr =  ( reinterpret_cast<uint64_t>(l2Table + ENTRY_NUM*i) >> 12);
	}
	for(size_t i=0;i!=lxEntryNum[2];++i)
	{
		Descriptor4KBL2::make(l2Table + i, 0);
		l2Table[i].S1.IsTable=1; // 是表
		l2Table[i].S1.Valid=1;
		l2Table[i].S1.NextLevelTableAddr =  ( reinterpret_cast<uint64_t>(l3Table + ENTRY_NUM*i) >> 12);
	}

	// 设置curGroup
	size_t curGroup=0;
	while(sizeAttrGroup[curGroup][0]==0)
		++curGroup;
	size_t curGroupLeftSize=sizeAttrGroup[curGroup][0];
	for(size_t i=0;i!=lxEntryNum[3];++i)
	{
		Descriptor4KBL3::make(l3Table + i, 0);
		l3Table[i].Valid=1;
		l3Table[i].RES1_0=1;
		l3Table[i].NS=1;
		l3Table[i].OutputAddr = i; //VA[12:0] = OA[12:0]
		l3Table[i].AF = 1; // if AF=0, the first access will generate a fault
		l3Table[i].AttrIndex = sizeAttrGroup[curGroup][1];
		l3Table[i].PXN = 0;
		l3Table[i].UXN = 0;
		l3Table[i].Contiguous = 1;
		l3Table[i].nG = 0; // apply to all ASID
		// no AP[0], AP[2]=0:read-write 1:read-only  AP[1]= can be access from EL0
		l3Table[i].AP = (getBit(sizeAttrGroup[curGroup][2], 0)<<1|0b0) ;// set read-only(1), or read-write(0) , and not from EL0
		l3Table[i].NS = 1; // non-secure
		l3Table[i].SH = 0b10; //outer-shareable

		curGroupLeftSize -= PAGE_SIZE;
		if(curGroupLeftSize == 0)
		{
			while(sizeAttrGroup[++curGroup][0]==0) // 略过所有size为0 的配置组
				;
			curGroupLeftSize = sizeAttrGroup[curGroup][0];
		}
	}

	// 同时设置TTBR0和TTBR1
	auto ttbr0 = RegTTBR0_EL1::make(0);
	ttbr0.BADDR = reinterpret_cast<uint64_t>(l0Table)>>1;
	ttbr0.write();
	auto ttbr1 = RegTTBR1_EL1::make(0);
	ttbr1.BADDR = ttbr0.BADDR;
	ttbr1.write();
	asm_isb();
}

void VirtualManager::enableTTBR0(bool enable)
{
	if(!enable)
		asm_tlbi_aside1(RegTTBR0_EL1::read().ASID);
	auto tcr=RegTCR_EL1::read();
	tcr.EPD0 = (!enable); // 产生Translation Fault中断而不是进行转换表遍历
	tcr.write();
	asm_isb();
}

bool VirtualManager::makeSizeAttrGroup(size_t ramStart,size_t ramSize,size_t periphbase,size_t periphsize,size_t sizeAttrGroup[][3],size_t &groupNum)
{
	size_t oriNum = groupNum;
	size_t config[][4]={{ramStart,ramSize,MEMORY_ATTR_NORMAL,MEMORY_AP_RW},{periphbase,periphsize,MEMORY_ATTR_PERIPHERAL,MEMORY_AP_RW}};
	size_t lowOrders[arrsizeof(config)];// 按地址的排序
	size_t arrSize = arrsizeof(config);

	groupNum = 2*arrSize;// 总共需要 至多 2*arrSize个项, 因为需要从0地址开始设置所有的size，假定config中有n项，则 [A1,A2,A3,...,An]则补齐之后变成[A1.base,A1.size,A2.base-A1.size-,...]
	if(groupNum > oriNum)
		return false;


	for(size_t i=0;i!=arrSize;++i)
		lowOrders[i]=i;
	// 使用冒泡排序重新按从低到高排序所有地址
	for(size_t i=0;i < arrSize - 1;++i)//外层循环arrSize-1次
	{
		for(size_t j=0;j < arrSize - 1 - i;++j) // 内层循环arrSize-1-i次
		{
			if(config[lowOrders[j]][0]>config[lowOrders[j+1]][0])
			{
				size_t temp=lowOrders[j];
				lowOrders[j]=lowOrders[j+1];
				lowOrders[j+1]=temp;
			}
		}
	}
	for(size_t i=0;i!=arrSize;++i)
	{
		size_t base=0;
		if(i>0)
			base=config[lowOrders[i-1]][0] + config[lowOrders[i-1]][1];
		if(base  > config[lowOrders[i]][0])// 存在重叠的情况
			return false;
		sizeAttrGroup[i*2][0]=config[lowOrders[i]][0] - base;
		sizeAttrGroup[i*2][1]=MEMORY_ATTR_NORMAL;
		sizeAttrGroup[i*2][2]=MEMORY_AP_RW; // 默认的补齐属性

		sizeAttrGroup[i*2+1][0]=config[lowOrders[i]][1];
		sizeAttrGroup[i*2+1][1]=config[lowOrders[i]][2];
		sizeAttrGroup[i*2+1][2]=config[lowOrders[i]][3]; //原来的属性
	}

	return true;

}
