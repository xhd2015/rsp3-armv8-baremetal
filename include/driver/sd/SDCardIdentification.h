/*
 * SDCardIdentification.h
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_SD_SDCARDIDENTIFICATION_H_
#define INCLUDE_DRIVER_SD_SDCARDIDENTIFICATION_H_
#include <def.h>
#include <programming/ScalarBase.h>
class SDCardIdentification
	:public ScalarBase<SDCardIdentification,uint64_t>
{
public:
	void dump()const;
public:
	uint64_t _res1:1;
	uint64_t _crc7:1;
	uint64_t _manufacturingData:12;
	uint64_t _res0:4;
	uint64_t _productSerialNumber:32;
	uint64_t _productRevision:8;
	uint64_t _productName:40;
	uint64_t _oemID:16;
	uint64_t _manufacturerID:8;
}__attribute__((packed));




#endif /* INCLUDE_DRIVER_SD_SDCARDIDENTIFICATION_H_ */
