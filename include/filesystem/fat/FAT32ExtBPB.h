/*
 * FAT32ExtBPB.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FAT32EXTBPB_H_
#define INCLUDE_FILESYSTEM_FAT_FAT32EXTBPB_H_

#include <filesystem/fat/FAT_BPB.h>
#include <io/char/CharacterReader.h>

/**
 * NOTE: if you are given a raw data of an FAT header,you do not know what kind it is.Then you can safely assume that it is an FAT32 filesystem type,and use methods prefixed with uni_ (which means universal) to retrieve information from it.
 * Once you get the real type of it(through uni_determineFATType()),then you can cast that region of memory to ExtBPB32 or ExtBPB16, and use non-prefixed method of that class.
 */
class FAT32ExtBPB
	:public FAT_BPB
{
public:
	enum { BIT_MASK = 0x0FFFFFFF ,ENTRY_SIZE = 32 };

	// sectors that FATs occupies
	uint32_t FATSz32;

	// bit0-3 zero-based number of active FAT. valid if mirroring is disabled.
	// bit4-6 reserved
	// bit7 =0 means FAT is mirrored  =1 only one FAT is active,indicate by bit0-3
	// bit8-15 reserved
	uint16_t extFlags;

	// must be 0
	uint16_t FSVer;

	// root directory's first cluster number.
	// should be 2 or the first useable value.
	uint32_t rootClus;

	// sector number where fsinfo lies
	// usually 1
	uint16_t FSInfo;

	// 0 or 6, if non-zero,indicates where the copy lies
	uint16_t bkBootSe;

	// reserved
	// must be 0
	uint8_t	reserved[12];

	// used by int0x13
	// 0x80 or 0x0
	uint8_t BS_DrvNum;

	// reserved
	// must be 0
	uint8_t BS_Reserved1;

	// indicates whether BS_VolID,BS_VolLab exists
	// 0x29 indicates existing.
	uint8_t BS_BootSig;
	uint32_t BS_VolID;
	char	BS_VolLab[11];

	// informational
	// set to "FAT32   "
	char	BS_FilSysType[8];


	uint8_t 	undefined[420];

	// 0xaa55
	uint16_t Signature_word;

	FAT32ExtBPB()=default;
	size_t uni_getFatSize()const;

	size_t uni_getTotalSecCount()const;
	// 数据区域的扇区数目,用于决定文件系统的类型
	size_t uni_getDataRegionSectorCount()const;
	// 总的数据簇数目
	size_t uni_getClustersCount()const;

	// fatNo, starting from 1 to numFATs
	size_t getClusterEntryOffset(size_t fatNo,size_t n)const;
	size_t getClusterFirstSector(size_t n)const;
	uint32_t getRootFATEntry()const;

	size_t getRootDirFirstSector()const;

	FAT_BPB::FATType uni_determineFATType()const;
	FAT_BPB::FATType getFATType()const;
	uint32_t calculateFATSz32(size_t diskSize)const;

	size_t  getClusterByteSize()const;
}__attribute__((packed));




#endif /* INCLUDE_FILESYSTEM_FAT_FAT32EXTBPB_H_ */
