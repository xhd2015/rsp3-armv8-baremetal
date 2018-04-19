/*
 * SDCardOperationCond.h
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_SD_SDCARDOPERATIONCOND_H_
#define INCLUDE_DRIVER_SD_SDCARDOPERATIONCOND_H_
#include <def.h>
#include <generic_util.h>
#include <programming/ScalarBase.h>
class SDCardOperationCond
	:public ScalarBase<SDCardOperationCond,uint32_t>
{
public:
	void dump()const;
	AS_MACRO bool support3V3()const { return bitsAnySet<5,6>(_supportVoltage);}
//	AS_MACRO bool support1V8()const { }; //没有1.8v的检测方式
	AS_MACRO bool support3V0()const { return bitsAnySet<2,3>(_supportVoltage);}

public:
	uint32_t _res0_0:4;
	uint32_t _res0_1:3;
	uint32_t _res0_forLowVoltage:1;
	uint32_t _res0_2:7;
	uint32_t _supportVoltage:9;//2.7+i*0.1 ~ 2.7+i*0.1+0.1
	uint32_t _switch1v8Accepted:1;// only for UHS-I
	uint32_t _res0_3:4;
	uint32_t _UHS_IISupported:1; // 支持UHS-II
	uint32_t _sdsc_or_sdhc_sdxc:1;//0=sdsc,仅当_powerUpDone=1时有效  该位表示为CCS
	uint32_t _powerUpDone:1;//  该位表示busy

}__attribute__((packed));

static_assert(sizeof(SDCardOperationCond)==4,"");



#endif /* INCLUDE_DRIVER_SD_SDCARDOPERATIONCOND_H_ */
