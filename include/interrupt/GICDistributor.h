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
		nscar=0xE00, // - 0xEFC
		sgir=0xF00, // WO
	};
	template <class ... Args>
	GICDistributor(Args && ... args)
		: MemBasedRegReader(std::forward<Args>(args)...)
	{}
	int init(uint8_t initPriorty);

	// indivadual settings
	template <IntID id0,IntID...Args>
	AS_MACRO void enableIntID(){enableIntID<id0>();enableIntID<Args...>();}
	AS_MACRO void enableIntID(){}
	template <IntID id0>
	AS_MACRO void enableIntID(){reg32<isenabler + (id0/32)*4>() = bitOnes<id0%32>();}

	template <IntID id0,IntID...Args>
	AS_MACRO void disableIntID(){disableIntID<id0>();disableIntID<Args...>();}
	AS_MACRO void disableIntID(){}
	template <IntID id0>
	AS_MACRO void disableIntID(){reg32<icenabler + (id0/32)*4>() = bitOnes<id0%32>();}

	void intPriority(IntID id,uint8_t prty);

	template <int grp>
	void enableGroup(bool enable);

	void clearAllPendings();
	void disableAllInterrupts();
private:


};


#include <templates_implementation/interrupt/GICDistributor.h>



#endif /* INCLUDE_INTERRUPT_GICDISTRIBUTOR_H_ */
