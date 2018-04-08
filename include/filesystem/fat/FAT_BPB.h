/*
 * BPB.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_BPB_H_
#define INCLUDE_FILESYSTEM_FAT_BPB_H_
#include <def.h>

/**
 * BIOS Parameter Block,存在于卷上的保留区域的第一个扇区（扇区#0)
 * 从第36个字节起，FAT32的BPB和FAT16的BPB不同。
 *
 * NOTE: to be used on any platform,do not use any platform specific types
 * FORBIDDEN: size_t, int,short,long and their unsiged types, void*
 * ALLOWED:uint32_t,uint64_t,uint16_t,uint8_t,char(less recommended)
 *
 * char is used where it make sense,such as a name,or an identifier
 *
 * BS = Boot Sector, prefix means used by BS
 *
 * NOTE: this implements the Microsoft FAT32 Specification, which can be accessed at:TODO add FAT32 Spec pdf website(original and dumped)
 * TEST NOTE: must-do : check if this class and its derived class are packed as desired.
 */
//#pragma pack(push,1)
class FAT_BPB{
public:
	enum FATType{
		FAT12,FAT16,FAT32,UNKNOWN
	};

	enum {SEC_PRESENT = 0, SEC_COPY = 6 };

	// intel x86 unconditional jump instruction
	// 0xEB ?? 0x90  (frequently used)or
	// 0xE9 ?? ??
	// ?? means an 8-bit offset.
	uint8_t BS_jmpBoot[3];

	// OEM identifier,can be any value.typically the system that formatted this volume.
	char BS_OEMName[8];

	// typically 512
	uint16_t bytesPerSec;

	// define a cluster
	uint8_t  secPerClus;

	// reserved count
	uint16_t rsvdSecCnt;

	// FAT's count,2 recommended,though 1 accepted.
	uint8_t  numFATs;

	// root Entry's Count,
	// must be 0 when FAT32,because FAT32 does not fix the root entry's position
	uint16_t rootEntCnt;

	// total sector count in this valume
	// must be 0 when FAT32
	uint16_t totSec16;

	// media type.Valid values are:0xF0, 0xF8, 0xF9,0xFA, 0xFB, 0xFC, 0xFD, 0xFE, and 0xFF
	// standard value 0xF8 is "fixed" media.for removeable,use 0xF0
	uint8_t media;

	// all sectors spanned by FATs
	// muset be zero when FAT32
	uint16_t FATSz16;

	// used by int 0x13
	uint16_t secPerTrk;

	// used by int 0x13
	uint16_t numHeads;

	// used by int 0x13
	uint32_t hiddSec;

	// all sectors in this valume,in 32 bits.
	// nonzero when FAT32
	uint32_t totSec32;

	size_t uni_getRootDirSecCount()const;
	FAT_BPB::FATType getFATType()const;

}__attribute__((packed));



#endif /* INCLUDE_FILESYSTEM_FAT_BPB_H_ */
