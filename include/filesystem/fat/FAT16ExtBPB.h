/*
 * FAT16ExtBPB.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FAT16EXTBPB_H_
#define INCLUDE_FILESYSTEM_FAT_FAT16EXTBPB_H_

#include <filesystem/fat/FAT_BPB.h>

/**
 * for FAT12 and FAT16 only,ignored if FAT32
 */
class ExtBPB16
	:public FAT_BPB
{
public:
	uint8_t BS_DrvNum;
	uint8_t BS_Reserved1;
	uint8_t BS_BootSig;
	uint32_t BS_VolID;
	char BS_VolLab[11];
	char BS_FilSysType[8];
	uint8_t undefined[448];
	uint16_t Signature_word;

	size_t getClusterEntryOffset(size_t n)const;
	size_t getRootDirFirstSector()const;
	FAT_BPB::FATType getFATType()const;
	uint16_t   calculateFATSz16(size_t diskSize)const;

}__attribute__((packed));

/**
 * ExtBPB12 has exactly the same fields with ExtBPB16,except properties not represented in the real memory field.
 */
class ExtBPB12
	:public ExtBPB16
{
public:
	FAT_BPB::FATType getFATType()const;
};




#endif /* INCLUDE_FILESYSTEM_FAT_FAT16EXTBPB_H_ */
