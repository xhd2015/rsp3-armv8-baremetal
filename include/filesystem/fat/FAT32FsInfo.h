/*
 * FAT32FsInfo.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FAT32FSINFO_H_
#define INCLUDE_FILESYSTEM_FAT_FAT32FSINFO_H_

#include <def.h>

class FAT32FSInfo{
public:
	enum{ SEC_PRESENT = 1, SEC_COPY=7};
	uint32_t leadSig { 0x41615252 };
	uint8_t   reserved1[480];
	uint32_t strucSig { 0x61417272};
	uint32_t freeCount { 0xFFFFFFFF };
	uint32_t nextFree { 0xFFFFFFFF };
	uint8_t reserved2[12];
	uint32_t trailSeg { 0xAA550000 };

}__attribute__((packed));



#endif /* INCLUDE_FILESYSTEM_FAT_FAT32FSINFO_H_ */
