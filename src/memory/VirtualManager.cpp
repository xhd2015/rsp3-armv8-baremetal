
#include <memory/VirtualManager.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/vmsa_descriptors.h>
#include <memory/MemoryManager.h>
#include <asm_instructions.h>
#include <new>
#include <io/Output.h>
#include <generic/error.h>
#include <asm_instructions.h>


VirtualManager::VirtualManager(size_t addressBits)
	:_addressBits(addressBits)
{}
int   VirtualManager::init()
{
	kout << INFO << "VirtualManager init\n";
	// 先判断是否支持4KB映射
	auto aa64 = RegID_AA64MMFR0_EL1::read();
	assert(aa64.TGran4 == 0b0000);

	// 初始化所有的内存属性
	RegMAIR_EL1 mair=RegMAIR_EL1::make(0);
	mair.Attr0 = 0xff; //Normal
//	mair.Attr1 = 0x04; // Device-nGnRE, PERIPHERAL
	mair.Attr1 = 0x00;// nGnRnE
//	mair.Attr1 = 0xff;
	mair.Attr2 = 0x44; //Normal,non-cacheable
	mair.write();

	// 后面设置虚拟地址的范围与物理地址范围相同, 并且只能是40,42,44,48这几个值,如果在这些值之外，就选择40
    size_t paBitsMap[]={32,  36,  40,  42,  44,  48,  52};
	size_t paIndex = aa64.PARange;
	kout << "PARangeIndex = " << aa64.PARange << "\n";
	kout << "PARange = " << paBitsMap[aa64.PARange] << "\n";
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
	tcr.SH0 = tcr.SH1 = 0b11;//inner shareable
	tcr.IRGN0 = tcr.IRGN1 = 0b01;//inner cacheable
	tcr.ORGN0 = tcr.ORGN1 =0b01;// outer cacheable
	tcr.EPD0 = tcr.EPD1 = 0; // not disable page walk on TLB miss
	tcr.write();
	asm_isb();

	return 0;
}
void VirtualManager::enableMMU(void* jmpFunc,void *virtualmap,
		void *memstart,
		size_t memsize,
		ExceptionLevel highestEL,
		void *newSp)
{
	kout << INFO << "VirtualManager enableMMU, jmpFunc = " <<
						reinterpret_cast<void*>(jmpFunc) << ","
			     << "newSp = " << newSp
				 << "\n";
	// 启用MMU
	auto sctl = RegSCTLR_EL1::read();
	sctl.RES1_2=1;
	sctl.RES1_5=1;
	sctl.RES1_6=1;
	sctl.EE = 0;//little endian
	sctl.E0E = 0; // little endian EL0
	sctl.WXN = 0; // no effect,XNs normal
	sctl.I = 0; // no instruction fetch
	sctl.SA = 0; // no SPAlignment check
	sctl.SA0 = 0; // no SP Chekc EL0
	sctl.C = 0; // no cache
	sctl.A = 0;// no data alignment check
	sctl.M = 1;
	sctl.write();
	asm_isb();

	kout << INFO << "successfully enabled MMU \n";
	kout << INFO << "jump to selected address/function\n";
	// 跳转到预定的函数处
	__asm__ __volatile__(
			"cbz %0,1f \n\t" // if(spVal!=0) sp=spVal;
			"mov sp,%0 \n\t"
			"1: \n\t"
			"mov x0,%2 \n\t"
			"mov x1,%3 \n\t"
			"mov x2,%4 \n\t"
			"mov x3,%5 \n\t"
			"mov x4,%6 \n\t"
			"br  %1 \n\t"
			::"r"(newSp),
			  "r"(jmpFunc),
			  "r"(virtualmap),
			  "r"(memstart),
			  "r"(memsize),
			  "r"(highestEL),
			  "r"(_addressBits)
			  :"x0","x1","x2","x3","x4"
			  );
}

void VirtualManager::enableTTBR0(bool enable)
{
	if(!enable)
		asm_tlbi_aside1(RegTTBR0_EL1::read().ASID);
	auto tcr=RegTCR_EL1::read();
	tcr.EPD0 = (!enable); // 表示禁用，产生Translation Fault中断而不是进行转换表遍历
	tcr.write();
	asm_tlbi_vmallel1(); // FIXME 更细粒度的控制
}

void VirtualManager::updateTTBR0(const Descriptor4KBL0 *l0Table)
{
	kout << INFO << "VirtualManager updateTTBR0\n";
	auto ttbr0 = RegTTBR0_EL1::make(0);
	ttbr0.BADDR = reinterpret_cast<uint64_t>(translateVAToPA(l0Table))>>1;
	ttbr0.write();
	asm_tlbi_vmallel1();//FIXME 更细粒度控制
}
void VirtualManager::updateTTBR1(const Descriptor4KBL0 *l0Table)
{
	kout << INFO << "VirtualManager updateTTBR1\n";
	auto ttbr1 = RegTTBR1_EL1::make(0);
	ttbr1.BADDR =reinterpret_cast<uint64_t>(translateVAToPA(l0Table))>>1;
	ttbr1.write();
	asm_tlbi_vmallel1();//FIXME 更细粒度控制
}

void*  VirtualManager::translateVAToPA(const void * va)const
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
uint64_t  VirtualManager::translateVAToPA(uint64_t va)const
{
	return reinterpret_cast<uint64_t>(translateVAToPA(reinterpret_cast<void*>(va)));
}

Vector<AddressSpaceDescriptor> VirtualManager::makeFullOrderedDescriptors(const Vector<AddressSpaceDescriptor> &config)
{
	Vector<int>         lowOrders(config.size());
	assert(lowOrders.size() >0);
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
void  VirtualManager::setTTBR0Addr(RegTTBR0_EL1 & ttbr0,uint64_t va)const
{
	ttbr0.BADDR = translateVAToPA(va)>>1;
}
