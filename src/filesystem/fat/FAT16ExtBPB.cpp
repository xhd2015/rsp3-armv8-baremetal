/*
 * FAT16ExtBPB.cpp
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#include <filesystem/fat/FAT16ExtBPB.h>

size_t ExtBPB16::getClusterEntryOffset(size_t n)const
{
	return rsvdSecCnt*bytesPerSec + (n*2);
}

size_t ExtBPB16::getRootDirFirstSector()const
{
	return rsvdSecCnt + numFATs * FATSz16;
}
FAT_BPB::FATType ExtBPB16::getFATType()const
{
	return FAT16;
}

uint16_t ExtBPB16::calculateFATSz16(size_t diskSize)const
{
	size_t tmp1 = diskSize - (rsvdSecCnt + getRootDirFirstSector());
	size_t tmp2 = (256 * secPerClus ) + numFATs;
	return static_cast<uint16_t>((tmp1 + (tmp2-1))/tmp2);
}


FAT_BPB::FATType ExtBPB12::getFATType()const
{
	return FAT16;
}




