/*
 * SystemFeature.h
 *
 *  Created on: Mar 19, 2018
 *      Author3774
 */

#ifndef INCLUDE_SYSTEMFEATURE_H_
#define INCLUDE_SYSTEMFEATURE_H_

#include <def.h>
#include <runtime_def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>

enum class Architecture:uint64_t{
	UNKONW,
	AARCH64,
	AARCH32,
	x86_64,
};

// 默认值是9
class SystemFeatures{
public:
	SystemFeatures()=default;
	void updatePreconfigured();

	uint64_t addrBits() const;
	void addrBits(uint64_t addrBits);
	Architecture architecture() const;
	void architecture(Architecture architecture);
	uint64_t asidBits() const;
	void asidBits(uint64_t asid16Bits);
	uint64_t cores() const;
	void cores(uint64_t cores);
	bool support4KBPage() const;
	void support4KBPage(bool support4KbPage);
	bool support16KBPage() const;
	void support16KBPage(bool support16KbPage);
	bool support64KBPage() const;
	void support64KBPage(bool support64KbPage);
	uint64_t asidSelector() const;
	void asidSelector(uint64_t asidSelector);

private:
	uint64_t _architecture:5; // at most 32 architectures
	uint64_t _addrBits:6; // 0~64
	uint64_t _asidBits:2; // 0=8,1=16,others reserved,11 invalid
	uint64_t _support4KBPage:1;
	uint64_t _support16KBPage:1;
	uint64_t _support64KBPage:1;
	uint64_t _cores:8; //0~256 cpus
	uint64_t _asidSelector:1; //0-->TTBR0,1-->TTBR1
//	uint64_t _

}__attribute__((packed));


#ifndef _NOT_NEED_SystemFeatures
extern SystemFeatures systemFeatures;
#endif



#endif /* INCLUDE_SYSTEMFEATURES_H_ */
