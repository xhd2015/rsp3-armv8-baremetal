/*
 * FAT32Table.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FAT32ENTRYTABLE_H_
#define INCLUDE_FILESYSTEM_FAT_FAT32ENTRYTABLE_H_

#include <data/Vector.h>
#include <filesystem/fat/FAT32Entry.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <io/block/ByteReader.h>

class FAT32EntryTable
	:public Vector<FAT32Entry>
{
public:
	using Vector::operator[];
	using Vector::size;

	using EntryHandle = std::function<void(const FAT32Entry entry,size_t index)>;

	FAT32EntryTable();
	FAT32EntryTable(const FAT32EntryTable & fat)=delete;
	FAT32EntryTable & operator=(const FAT32EntryTable &fat)=delete;

	void foreachEntry(EntryHandle handle,FAT32Entry startEntry)const;
	FAT32Entry  next(FAT32Entry fentry)const;

	size_t getEntryCount(size_t beginIndex)const;
	/**
	 *  return LAST if it overflow
	 */
	FAT32Entry  locateFileOffset(FAT32Entry fentry,size_t clusterSize,size_t offset)const;

private:
};



#endif /* INCLUDE_FILESYSTEM_FAT_FAT32ENTRYTABLE_H_ */
