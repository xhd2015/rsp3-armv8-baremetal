/*
 * GICDistributor.cpp
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */

#include <interrupt/GICDistributor.h>
#include <generic_util.h>


int GICDistributor::init(uint8_t initPriorty)
{
	// 注意，在禁用了安全扩展的情况下，这些域是RW的
	// 组映射，默认情况下所有的int都由irq处理
	RegGICD_IGROUPR idiotGrp=RegGICD_IGROUPR::make(0xFFFFFFFF);
	for(size_t i=0;i!=32;++i)
		idiotGrp.write(regPtr(igroupr + i*4));

	// every priority becomes the lowest
	RegGICD_IPRIORITYR idiotPrty=RegGICD_IPRIORITYR::make(0);
	idiotPrty.p0=initPriorty;
	idiotPrty.p1=initPriorty;
	idiotPrty.p2=initPriorty;
	idiotPrty.p3=initPriorty;
	for(size_t i=0;i!=255;++i)
		idiotPrty.write(regPtr(ipriority + i*4));
	GICDistributor::enableGroup<0>(true);
	GICDistributor::enableGroup<1>(true);

	// enable all interrupts
	auto en=RegGICD_ISENABLER::make(0xFFFFFFFF);
	for(size_t i=0;i!=32;++i)
		en.write(regPtr(isenabler+i*4));

	enableGroup<0>(true);
	enableGroup<1>(true);
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
