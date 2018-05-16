/*
 * GICDistributor.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GICDISTRIBUTOR_H_
#define INCLUDE_INTERRUPT_GICDISTRIBUTOR_H_

#include <interrupt/GICDefinitions.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <io/MemBasedRegReader.h>
#include <utility>
#include <generic_util.h>
#include <interrupt/GICRedistributor.h>
#include <generic/error.h>

// we assert that we are in Non-secure,Single-security
// we treat all registers here as volatile
class GICDistributor
	:public MemBasedRegReader<true>
{
public:
	static constexpr size_t INT_GRP_NUM=32;
	enum RegOffset : MemBasedRegReader::RegOffset{
		ctrl=0x0,
		typer=0x4,
		statusr=0x10,
		igroupr=0x80, //0x80-0xFC grp0's equiv can be Redistributor's igroup
		isenabler=0x100, // -0x17C
		icenabler=0x180, // -0x1FC
		ispender=0x200, // - 0x27C
		icpender=0x280, // - 0x2FC,
		isactiver=0x300,// - 0x37C
		icactiver=0x380, // - 0x3FC
		ipriority=0x400, // - 0x7F8
		icfgr = 0xC00, //
		igrpmodr=0x0D00, // -0xD7C, [mod:group]=0b10==Secure Group1
		nscar=0xE00, // - 0xEFC
		irouter=0x6000,//64bits
		sgir=0xF00, // WO
	};
	template <class ... Args>
	GICDistributor(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
	{}
	/**
	 *
	 * @param initPriorty
	 * @param redistr  按照同样的配置初始化SGI和PPI所需的Redistributor对象
	 * @return
	 */
	int init(uint8_t initPriorty,GICRedistributor *redistr);
	void intPriority(IntID id,uint8_t prty);

	template <int grp>
	void enableGroup(bool enable);

	void clearAllPendings();
	void disableAllInterrupts();
private:
};

//== template

template <int grp>
void GICDistributor::enableGroup(bool enable)
{
	static_assert(grp==0||grp==1,"group must be 0,1\n");
	assert(securityState!=SecurityState::S_NS_2S || grp==1); //when NS of 2S, grp must be 1
	auto distr=RegGICD_CTLR::read(regPtr(ctrl));
	if(grp==0)
	{
		if(securityState==SecurityState::S_S_2S)
			distr.S0.EnableGrp0=enable;
//		else if(_sstate==S_NS_2S) //error
//			distr.S1.E=enable;
		else
			distr.S2.EnableGrp0=enable;
	}else{
		if(securityState==SecurityState::S_S_2S)
		{
			distr.S0.EnableGrp1NS=enable;
			distr.S0.EnableGrp1S=enable;
		}
		if(securityState==SecurityState::S_NS_2S)
		{
			distr.S1.EnableGrp1=enable;
			distr.S1.EnableGrp1A=enable;
		}else{
			distr.S2.EnableGrp1=enable;
		}
	}
	distr.write(regPtr(ctrl));
}



#endif /* INCLUDE_INTERRUPT_GICDISTRIBUTOR_H_ */
