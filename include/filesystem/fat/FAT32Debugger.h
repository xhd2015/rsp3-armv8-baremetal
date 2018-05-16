/*
 * fat32_info.h
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FS_FAT32_INFO_H_

#define INCLUDE_FS_FAT32_INFO_H_

#include <filesystem/fat/FAT_BPB.h>
#include <filesystem/fat/FATDirEntry.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <filesystem/fat/FATLongNameEntry.h>


/**
 *  debug may be unnecessary,so it can be exclude from build when releasing.
 */
class Fat32Dubugger{
public:
	static void dumpBPBTypeInformation();
	static void dumpBPB(FAT_BPB *bpb);
	static void dumpExtBPB32(FAT32ExtBPB *bpb);
	static void dumpDirectoryEntry(FATDirEntry dentry);
	static void dumpDirNames(FATDirEntry dentry);
	static void dumpDirNames(FATDirEntry *dentry,size_t count);
};


#endif /* INCLUDE_FS_FAT32_DEBUG_H_ */
