
#include <memory/VirtualManager.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/vmsa_descriptors.h>
#include <memory/MemoryManager.h>
#include <asm_instructions.h>
#include <new>
#include <io/Output.h>
#include <generic/error.h>
#include <asm_instructions.h>


VirtualManager::VirtualManager()
	:_addressBits(0),
	 _ttbr1Mask(0)
{
	// 先判断是否支持4KB映射
	auto aa64 = RegID_AA64MMFR0_EL1::read();
	assert(aa64.TGran4 == 0b0000);

	// 初始化所有的内存属性
	RegMAIR_EL1 mair=RegMAIR_EL1::make(0);
	mair.Attr0 = 0xff; //Normal
	mair.Attr1 = 0x00; // Device-nGnRnE, PERIPHERAL
	mair.Attr2 = 0xff; //Normal,non-cacheable
	mair.write();

	// 后面设置虚拟地址的范围与物理地址范围相同, 并且只能是40,42,44,48这几个值,如果在这些值之外，就选择40
    size_t paBitsMap[]={32,  36,  40,  42,  44,  48,  52};
	size_t paIndex = aa64.PARange;
	if(paBitsMap[paIndex]<40 || paBitsMap[paIndex]>48)
		paIndex=2;

	_addressBits = paBitsMap[paIndex];


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
	asm_isb();

	_ttbr1Mask = upperMaskBits(tcr.T1SZ);
}

//int VirtualManager::init(size_t mmuBasePage,const Vector<AddressSpaceDescriptor> &fullSizeSpace,InitFunctionPtr jmpFunc,void *newSp)
//{
//
//
//	// 所有的大小必须是页的倍数，否则无法实现属性分离。
//	for(size_t i=0;i!=fullSizeSpace.size();++i)
//		if(fullSizeSpace[i].size() % PAGE_SIZE != 0)
//			return 1;
//
//
//}

void VirtualManager::enableMMU(InitFunctionPtr jmpFunc,void *newSp)
{
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

void VirtualManager::updateTTBR0(Descriptor4KBL0 *l0Table)
{
	auto ttbr0 = RegTTBR0_EL1::make(0);
	ttbr0.BADDR = reinterpret_cast<uint64_t>(translateVAToPA(l0Table))>>1;
	ttbr0.write();
	asm_isb();
}
void VirtualManager::updateTTBR1(Descriptor4KBL0 *l0Table)
{
	auto ttbr1 = RegTTBR1_EL1::make(0);
	ttbr1.BADDR =reinterpret_cast<uint64_t>(translateVAToPA(l0Table))>>1;
	ttbr1.write();
	asm_isb();
}

void*  VirtualManager::translateVAToPA(const void * va)
{
	if(va)
	{
		auto p = asm_at(reinterpret_cast<uint64_t>(va));
		if(!p.S0.F)// 使用static_cast表明至少有64位
			return reinterpret_cast<void*>((static_cast<uint64_t>(p.S0.PA51_48) << 48)|
					(static_cast<uint64_t>(p.S0.PA47_12) << 12)|getBits(reinterpret_cast<uint64_t>(va),0,11));
	}
	return nullptr;
}
uint64_t  VirtualManager::translateVAToPA(uint64_t va)
{
	return reinterpret_cast<uint64_t>(translateVAToPA(reinterpret_cast<void*>(va)));
}

Vector<AddressSpaceDescriptor> VirtualManager::makeFullOrderedDescriptors(const Vector<AddressSpaceDescriptor> &config)
{
	Vector<int>         lowOrders(config.size());
	for(size_t i=0;i!=lowOrders.size();++i)
		lowOrders[i]=i;

	// 使用冒泡排序重新按从低到高排序所有地址
	for(size_t i=0;i < lowOrders.size()-1;++i)//外层循环arrSize-1次
	{
		for(size_t j=0;j < lowOrders.size() - 1 - i;++j) // 内层循环arrSize-1-i次
		{
			if(config[lowOrders[j]].addr()>config[lowOrders[j+1]].addr())
			{
				size_t temp=lowOrders[j];
				lowOrders[j]=lowOrders[j+1];
				lowOrders[j+1]=temp;
			}
		}
	}
	Vector<AddressSpaceDescriptor> res(config.size() * 2);
	for(size_t i=0;i!=lowOrders.size();++i)
	{
		size_t base=0;
		if(i>0)
			base=reinterpret_cast<size_t>(config[lowOrders[i-1]].addr()) + config[lowOrders[i-1]].size();
		if(base  > reinterpret_cast<size_t>(config[lowOrders[i]].addr()))// 存在重叠的情况
		{
			res.clear();
			break;
		}
		auto &thisConfig=config[lowOrders[i]];
		// 地址不重要.
		res[i*2].size(reinterpret_cast<size_t>(thisConfig.addr()) - base);
		res[i*2].type(AddressSpaceDescriptor::T_NORMAL);// 默认的补齐属性
		res[i*2].readOnly(false);
		res[i*2].cacheable(true);

		res[i*2+1].size(thisConfig.size());
		res[i*2+1].type(thisConfig.type());
		res[i*2+1].readOnly(thisConfig.readOnly());
		res[i*2+1].cacheable(thisConfig.cacheable());//原来的属性
	}

	return std::move(res);
}
