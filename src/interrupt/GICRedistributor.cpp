/*
 * GICRedistributor.cpp
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#include <interrupt/GICRedistributor.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>

int GICRedistributor::init(uint8_t initPrty)
{
	awake();
	auto ingrp0 = RegGICR_IGROUPR0::make(0xFFFFFFFF);
	ingrp0.write(regPtr(igroupr0));

	auto en0 = RegGICR_ISENABLER0::make(0xFFFFFFFF);
	en0.write(regPtr(isenabler0));

	auto prty0 = RegGICR_IPRIORITYR::make(0);
	prty0.p0=initPrty;
	prty0.p1=initPrty;
	prty0.p2=initPrty;
	prty0.p3=initPrty;
	for(size_t i=0;i!=8;++i)
		prty0.write(regPtr(ipriortiy0 + 4*i));

	return 0;
}
// 必须采用read,write的方式实现
void GICRedistributor::awake()
{
	auto l_waker=RegGICR_WAKER::read(regPtr(waker));
	l_waker.ProcessorSleep=0;// if not writing this bit,ChildrenAsleep will hang
	l_waker.write(regPtr(waker));
	while(l_waker.update(regPtr(waker)).ChildrenAsleep)
		;
}
void GICRedistributor::clearAllPendings()
{
	auto idiot=RegGICR_ICPENDR0::make(0xFFFFFFFF);
	idiot.write(regPtr(icpender0));
}
