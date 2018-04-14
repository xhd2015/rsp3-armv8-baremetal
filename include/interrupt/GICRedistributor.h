/*
 * GICRedistributor.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GICREDISTRIBUTOR_H_
#define INCLUDE_INTERRUPT_GICREDISTRIBUTOR_H_


#include <interrupt/GICDefinitions.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <io/MemBasedRegReader.h>
#include <utility>

class GICRedistributor
	:public MemBasedRegReader<true>
{
public:
	enum{
		RDOffset=0,
		SGIOffset=64*1024,
	};
	enum RefOffset:MemBasedRegReader::RegOffset{
		ctrl=0x0,
		iidr=0x4,
		typer=0x8,
		statusr=0x10,
		waker=0x14,
		nsacr=0xE00,

		// SGI frame
		igroupr0=SGIOffset + 0x80,
		isenabler0=SGIOffset + 0x100,
		icenabler0=SGIOffset + 0x180,
		ispendr0=SGIOffset + 0x200,
		icpender0=SGIOffset + 0x280,
		isactiver0=SGIOffset + 0x300,
		icavtiver0=SGIOffset + 0x380,
		ipriortiy0=SGIOffset + 0x400, //n=0-7,s
		icfgr0=SGIOffset + 0xC00, //n=0-1
		igrpmodr0=SGIOffset + 0x0D00,

	};
	template <class ... Args>
	GICRedistributor(Args && ... args)
		: MemBasedRegReader(std::forward<Args>(args)...)
		{}
	int init(uint8_t initPrty);
	void awake();
	void clearAllPendings();

private:
};




#endif /* INCLUDE_INTERRUPT_GICREDISTRIBUTOR_H_ */
