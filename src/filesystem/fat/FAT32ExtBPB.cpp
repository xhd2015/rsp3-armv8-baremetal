/*
 * FAT32ExtBPB.cpp
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#include <filesystem/fat/FAT32ExtBPB.h>

size_t FAT32ExtBPB::uni_getFatSize()const
{
	return FATSz16==0?FATSz32:FATSz16;
}

size_t FAT32ExtBPB::uni_getTotalSecCount()const
{
	return totSec16==0?totSec32:totSec16;
}

// 数据区域的扇区数目,用于决定文件系统的类型
size_t FAT32ExtBPB::uni_getDataRegionSectorCount()const
{
	return uni_getTotalSecCount() - (rsvdSecCnt + (numFATs * uni_getFatSize()) + uni_getRootDirSecCount());
}

// 总的数据簇数目
size_t FAT32ExtBPB::uni_getClustersCount()const
{
	return uni_getDataRegionSectorCount() / secPerClus;
}
size_t FAT32ExtBPB::getClusterEntryOffset(size_t fatNo,size_t n)const
{
	return rsvdSecCnt*bytesPerSec +(fatNo * FATSz32 * bytesPerSec) + (n*4);
}
// 每个FAT有多少entry？32位
size_t FAT32ExtBPB::getClusterFirstSector(size_t n)const
{
	// FAT[0],FAT[1] is reserved,and do not corresponde to any cluster.
	// cluster[0] is from entry 2
	if(n < 2)
		return 0;
	else
		return rsvdSecCnt + (numFATs * FATSz32) + (n-2)*secPerClus;
}

uint32_t FAT32ExtBPB::getRootFATEntry()const
{
	return rootClus;
}

size_t FAT32ExtBPB::getRootDirFirstSector()const
{
	return getClusterFirstSector(rootClus);
}

FAT_BPB::FATType FAT32ExtBPB::uni_determineFATType()const
{
	size_t count= uni_getClustersCount();
	if(count < 4085)
		return FAT12;
	else if(count < 65525)
		return FAT16;
	else
		return FAT32;
}
FAT_BPB::FATType FAT32ExtBPB::getFATType()const
{
	return FAT32;
}
uint32_t FAT32ExtBPB::calculateFATSz32(size_t diskSize)const
{
	size_t tmp1 = diskSize - rsvdSecCnt;
	size_t tmp2 = ((256 * secPerClus ) + numFATs)/2;
	return  static_cast<uint32_t>((tmp1 + (tmp2-1))/tmp2);
}

size_t  FAT32ExtBPB::getClusterByteSize()const
{
	return bytesPerSec * secPerClus;
}



