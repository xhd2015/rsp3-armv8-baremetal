/*
 * FAT_BPB.cpp
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef SRC_FILESYSTEM_FAT_FAT_BPB_CPP_
#define SRC_FILESYSTEM_FAT_FAT_BPB_CPP_

#include <filesystem/fat/FAT_BPB.h>


size_t FAT_BPB::uni_getRootDirSecCount()const
{
	return  (rootEntCnt * 32 + (bytesPerSec-1)) / bytesPerSec;
}
FAT_BPB::FATType FAT_BPB::getFATType()const
{
	return UNKNOWN;
}




#endif /* SRC_FILESYSTEM_FAT_FAT_BPB_CPP_ */
