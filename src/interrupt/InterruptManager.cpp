/*
 * InterruptManager.cpp
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */
#include <interrupt/InterruptManager.h>
#include <generic/error.h>
#include <arch/common_aarch64/registers/system_common_registers.h>

int InterruptManager::init(void * vecAddr,EOIMode mode,uint8_t lowestPrty,uint8_t initPrty)
{
	int status = 0;

	// shutdown all interrupts
	cpuIntEnable(IRQ,false);
	cpuIntEnable(FIQ,false);
	cpuIntEnable(SError,false);
	cpuIntEnable(Debug,false);

	// determine if GICv3/v4 supported
	if(!systemRegistersSupported())
		return 1;

	// set exception vector of EL1
	auto vbar=RegVBAR_EL1::make(reinterpret_cast<uint64_t>(vecAddr));
	vbar.write();

	GICRedistributor::awake();
	status = GICDistributor::init(initPrty, static_cast<GICRedistributor*>(this));
	if(status != 0)
		return status;

	status = GICCPUInterface::init(lowestPrty,mode);
	if(status != 0)
		return status;

	return status;
}

void InterruptManager::cpuIntEnable(CPUIntBit intBit,bool v)
{
	auto daif=RegDAIF::read();
	setBit(daif.asuint32_t(), intBit, !(v));
	daif.write();
}


void InterruptManager::clearAllPendings()
{
	GICDistributor::clearAllPendings();
	GICRedistributor::clearAllPendings();
}
void InterruptManager::disableAllInterrupts()
{
	GICDistributor::disableAllInterrupts();
}

volatile uint32_t & InterruptManager::readWriteWord(size_t offset0,size_t offsetOther,int grp,int delimGrp)
{
	if(grp<=delimGrp)
		return GICRedistributor::reg32(offset0 + grp*4);
	else
		return GICDistributor::reg32(offsetOther + grp*4);
}

void InterruptManager::preconfigEL3(volatile void *distrBase,volatile void *redistrBase,bool secure,int group,bool allowGroup1S,bool allowGroup1NS)
{
	auto iccEL3 = RegICC_SRE_EL3::read();
	iccEL3.SRE=1;
	iccEL3.Enable=1;
	iccEL3.write();
	auto iccEL2 = RegICC_SRE_EL2::read();
	iccEL2.SRE=1;
	iccEL2.Enable=1;
	iccEL2.write();

	auto iccEnEl3 = RegICC_IGRPEN1_EL3::make(0);
	iccEnEl3.EnableGrp1NS=allowGroup1NS;
	iccEnEl3.EnableGrp1S=allowGroup1S;
	iccEnEl3.write();

	assert(secure || group==1);// 非安全只能是group1
	// default secure &&group==1
	uint32_t grpVal=0;//secure or not
	uint32_t modVal=0; //mod:grp 0b00 = G0S, 0b01=G1NS, 0b10=G1S
	if(secure && group==1)
		modVal = 0xFFFFFFFF;
	else if(!secure) // non-secure
		grpVal = 0xFFFFFFFF;

	// 先禁用Distributor， know this from Linux
	volatile uint32_t * distCtrl = reinterpret_cast<volatile uint32_t*>(reinterpret_cast<volatile char*>(distrBase) + GICDistributor::ctrl);
	*distCtrl=0;
	while(bitsAnySet<31>(*distCtrl)); //等待写入完成

	volatile uint32_t * redistrGroupR = reinterpret_cast<volatile uint32_t*>(reinterpret_cast<volatile char*>(redistrBase) + GICRedistributor::igroupr0);
	volatile uint32_t * redistrGroupmodR = reinterpret_cast<volatile uint32_t*>(reinterpret_cast<volatile char*>(redistrBase) + GICRedistributor::igrpmodr0);
	redistrGroupR[0]=grpVal;
	redistrGroupmodR[0]=modVal;
	volatile uint32_t * groupR = reinterpret_cast<volatile uint32_t*>(reinterpret_cast<volatile char*>(distrBase) + GICDistributor::igroupr);
	volatile uint32_t * groupmodR = reinterpret_cast<volatile uint32_t*>(reinterpret_cast<volatile char*>(distrBase) + GICDistributor::igrpmodr);
	for(size_t i=1;i!=INT_GRP_NUM;++i)
	{
		groupR[i]=grpVal;
		groupmodR[i]=modVal;
	}
}

