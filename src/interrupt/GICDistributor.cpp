/*
 * GICDistributor.cpp
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */

#include <interrupt/GICDistributor.h>
#include <generic_util.h>
#include <arch/common_aarch64/registers/system_common_registers.h>


int GICDistributor::init(uint8_t initPriorty,GICRedistributor *redistr)
{
	// disable distributor
	reg32(ctrl)=0;
	while(bitsAnySet<31>(reg32(ctrl))); //wait for RWP to complete
	// 如果为NS_2S，则在crt0中已经初始化igroupr和igrpmodr
	if(securityState != SecurityState::S_NS_2S) // set in group1,irq
	{
		if(redistr)
			redistr->reg32(GICRedistributor::igroupr0)=0xFFFFFFFF;
		for(size_t i=1;i!=INT_GRP_NUM;++i) // assume that sysmtem is in non-secure mode
			reg32(igroupr+i*4)=0xFFFFFFFF;
	}
	// level triggered
	if(redistr)
	{
		redistr->reg32(GICRedistributor::icfgr0)=0;
		redistr->reg32(GICRedistributor::icfgr0+4)=0;
	}
	for(size_t i=1;i!=INT_GRP_NUM*2;++i) //每个寄存器一次配置16个中断， 需要两个配置才能完成一组32个中断
		reg32(icfgr + i*4) = 0;

	// set priority
	RegGICD_IPRIORITYR idiotPrty1=RegGICD_IPRIORITYR::make(0);
	idiotPrty1.p0=initPriorty;
	idiotPrty1.p1=initPriorty;
	idiotPrty1.p2=initPriorty;
	idiotPrty1.p3=initPriorty;
	if(redistr)
	{
		for(size_t i=0;i!=8;++i)
			redistr->reg32(GICRedistributor::ipriortiy0 +i*4)=idiotPrty1.get();
	}
	for(size_t i=1;i!=INT_GRP_NUM * 8;++i) // 每组仅能配置4个,需要原来8倍的遍历次数
		reg32(ipriority + i*4 ) = idiotPrty1.get();
	// 禁用所有中断
	if(redistr)
	{
		redistr->reg32(GICRedistributor::icavtiver0)=0xFFFFFFFF;
		redistr->reg32(GICRedistributor::icenabler0)=0xFFFFFFFF;
	}
	for(size_t i=1;i!=INT_GRP_NUM;++i)
	{
		reg32(icactiver + i*4) = 0xFFFFFFFF;
		reg32(icenabler + i*4) = 0xFFFFFFFF;
	}

	// re-enable group1
	auto ctl = RegGICD_CTLR::make(0);
	if(securityState==SecurityState::S_NS_2S)
	{
		ctl.S1.ARE_NS=1; // non-secure
		ctl.S1.EnableGrp1=1;
		ctl.S1.EnableGrp1A=1;
	}else if(securityState==SecurityState::S_S_2S){
		ctl.S0.ARE_NS=1;
		ctl.S0.ARE_S=1;
		ctl.S0.EnableGrp1NS=1;
		ctl.S0.EnableGrp1S=1;
	}else{
		ctl.S2.ARE=1;
		ctl.S2.EnableGrp1=1;
		ctl.S2.EnableGrp0=1;
	}
	ctl.write(regPtr(ctrl));
	while(bitsAnySet<31>(reg32(ctrl))); //wait for RWP to complete
	//route all to current cpu
	auto m=RegMPIDR_EL1::read();
	uint64_t aff = (static_cast<uint64_t>(m.Aff3) << 32)| (m.Aff2 << 16) | (m.Aff1<<8) | (m.Aff0);
	// 没有router0
	for(size_t i=0;i!=INT_GRP_NUM*32;++i)
		reg64(irouter)=aff;

	return 0;
}

void GICDistributor::intPriority(IntID id,uint8_t prty)
{
//	auto p=RegGICD_IPRIORITYR::read(regPtr(ipriority + (id/4)*4));
	auto lowerBound=(id%4)*4;
	setBits(
			reg32(RegOffset::ipriority + (id/4)*4),
			lowerBound, lowerBound + 7,
			prty);
}
void GICDistributor::clearAllPendings()
{
	auto idiot=RegGICD_ICPENDR::make(0xFFFFFFFF);
	for(size_t i=0;i!=INT_GRP_NUM;++i)
		idiot.write(regPtr(icpender + i*4));
}


void GICDistributor::disableAllInterrupts()
{
	auto idiot=RegGICD_ICENABLER::make(0xFFFFFFFF);
	for(size_t i=0;i!=INT_GRP_NUM;++i)
		idiot.write(regPtr(icenabler + i*4));
}
