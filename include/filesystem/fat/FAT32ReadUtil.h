/*
 * fat32_read.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FS_FAT32READERUTIL_H_
#define INCLUDE_FS_FAT32READERUTIL_H_

#include <filesystem/fat/FAT32Entry.h>
#include <filesystem/fat/FATDirEntry.h>
#include <io/block/SectorReader.h>
#include <data/Vector.h>
#include <data/String.h>

#include <utility>

// operations that no need to modify any content
class FAT32ReadUtil{
public:
	// find information of a directory entry
	// find a specific name in a dir
	//
	// its LongNameEntry and ShortNameEntry
	// shortName finding is performed by comparing
	static size_t findByShortName(const FATDirEntry *content,size_t itemCount,const char * mainPart,const char *extPart);

	static size_t findByLongName(const FATDirEntry *content,size_t itemCount,const char  * asciiLongName);

	//provide the content of some sectors
	static Vector<FATDirEntry> readAllDirEntries(const Vector<FAT32Entry> &fat,size_t beginIndex,const FAT32ExtBPB *ebpb,SectorReader &sreader);


	static size_t getEntryCount(const Vector<FAT32Entry> &fat,size_t beginIndex);
	static size_t getNextEntryIndex(const FAT32Entry *fat,size_t clusterIndex);
	// get the last cluster of this chain
	static size_t getLastClusterIndex(const FAT32Entry *fat,size_t startCluster);
	// reserved 0,1 is not searched.it is searched from startFrom to MAX
	static size_t findFirstFreeClusterIndex(const FAT32Entry *fat,size_t itemCount,size_t startFrom);

	// 保留文件和目录
	static Vector<const FATDirEntry*> filterInDirFileEntries(const Vector<FATDirEntry> & entries);

	// create short name's main & ext part,based on the input.
	// 创建文件时，首先确定其短文件名和长文件名形式，确定这两个形式都必须是唯一的。
	// when it is impossible to shorten a file's name.
	// if the filesystem support long filename,then set all them to zero and keep it tracked through long file name
	// else, refuse to do that.

};





#endif /* INCLUDE_FS_FAT32READERUTIL_H_ */
