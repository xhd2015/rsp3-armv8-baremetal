/*
 * InterruptManager.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_
#define INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_

#include <def.h>
#include <interrupt/InterruptHandler.h>
#include <interrupt/GICDefinitions.h>
#include <interrupt/GICDistributor.h>
#include <interrupt/GICRedistributor.h>
#include <interrupt/GICCPUInterface.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
// 更加直接的读写方式
// 不需要中间变量
// 某个功能就是直接对寄存器变量的读写

class InterruptManager
	: private GICDistributor,
	  private GICRedistributor,
	  private GICCPUInterface
{
public:
	static constexpr IntID INT_IS_SECURE_GRP1=1020,//由IAR0返回
			        INT_IS_NON_SECURE_GRP1=1021,
			        INT_LEGACY=1022,
					INT_VIRTUAL_MAINTENCE=5,
					INT_HYP_TIMER=26,
					INT_VIRTUAL_TIMER=27,
					INT_S_PHY_TIMER=29,
				    INT_NS_PHY_TIMER=30,
					INT_SPURIOUS=1023 // no interrupt
					;
	static constexpr IntID	INT_INPUT = 33; //  UART的中断

	enum CPUIntBit{FIQ=6,IRQ=7,SError=8,Debug=9};
	InterruptManager(void *gicdAddr,void *gicrAddr)
		:GICDistributor(gicdAddr),
		 GICRedistributor(gicrAddr),
		 GICCPUInterface()
	{}

	// 所有中断默认都是启用的， 将Redistributor唤醒
	int init(void * vecAddr,EOIMode mode,uint8_t lowestPrty,uint8_t initPrty);
	AS_MACRO void rebase(size_t diff) { GICDistributor::rebase(diff);GICRedistributor::rebase(diff);}

	void cpuIntEnable(CPUIntBit intBit,bool v);

	AS_MACRO bool systemRegistersSupported()const
	{
		return RegID_AA64PFR0_EL1::read().GIC;
	}

	// 重载RegVBAR的operator=
	AS_MACRO void    vectorAddr(void *addr){		RegVBAR_EL1::make(reinterpret_cast<uint64_t>(addr)).write();}
	template <class Base>
	AS_MACRO Base & cast(){return *static_cast<Base*>(this);}
	template <class Base>
	AS_MACRO const Base & cast()const{return *static_cast<const Base*>(this);}

	void clearAllPendings();
	void disableAllInterrupts();
	AS_MACRO volatile uint32_t & enableWord(int intGrp){return readWriteWord(GICRedistributor::isenabler0,GICDistributor::isenabler, intGrp,0);}
	volatile uint32_t & disableWord(int intGrp){return readWriteWord(GICRedistributor::icenabler0,GICDistributor::icenabler, intGrp,0);}
	volatile uint32_t & activeWord(int intGrp){return readWriteWord(GICRedistributor::isactiver0,GICDistributor::isactiver, intGrp,0);}
	volatile uint32_t & deactiveWord(int intGrp){return readWriteWord(GICRedistributor::icavtiver0,GICDistributor::icactiver, intGrp,0);}
	volatile uint32_t & pendingWord(int intGrp){return readWriteWord(GICRedistributor::ispendr0,GICDistributor::ispender, intGrp,0);}
	volatile uint32_t & clearPendingWord(int intGrp){return readWriteWord(GICRedistributor::icpender0,GICDistributor::icpender, intGrp,0);}
	volatile uint32_t & groupAssignWord(int intGrp){return readWriteWord(GICRedistributor::igroupr0,GICDistributor::igroupr, intGrp,0);}
	volatile uint32_t & groupModifierWord(int intGrp){return readWriteWord(GICRedistributor::igrpmodr0,GICDistributor::igrpmodr, intGrp,0);}
	volatile uint32_t & triggerConfigWord(int intGrp){return readWriteWord(GICRedistributor::icfgr0,GICDistributor::icfgr, intGrp,1);}
	volatile uint32_t & priorityWord(int intGrp){return readWriteWord(GICRedistributor::ipriortiy0,GICDistributor::ipriority, intGrp,7);}

	using GICCPUInterface::sgiTarget;
	using GICCPUInterface::sgiSelf;
	using GICCPUInterface::sgiTargetList;
	using GICCPUInterface::sgiAllOtherCPUs;
	using GICCPUInterface::ack;
	using GICCPUInterface::eoi;

	using GICDistributor::enableGroup;

	// TODO 具体实现方法 -- 等到需要在qemu上测试再做。
	// DOCME InterruptHandler需要
	// 标准接口
	IntID  standardIntID(StandardInterruptType type)const;
	void   endInterrupt(ExceptionType type,IntID id);
	AS_MACRO void    enableInterrupt(IntID id,bool enable)
		{ setBit(enableWord(id/32),id%32,enable);}

	/**
	 * 当在EL3时，配置在EL1不能配置的寄存器。
	 * 包括EL3，EL2的SRE两个寄存器，均配置为允许
	 * 主要是igroupr和igrpmodr, 配置中断的分组： group和secure与否。当配置为non-secure时，group为1
	 */
	static void preconfigEL3(volatile void *distrBase,volatile void *redistrBase,bool secure,int group,bool allowGroup1S,bool allowGroup1NS);
private:
	volatile uint32_t & readWriteWord(size_t offset0,size_t offsetOther,int grp,int delimGrp=0);
private:
};

#ifndef _NOT_NEED_InterruptManager
extern InterruptManager intm;
#endif



#endif /* INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_ */
