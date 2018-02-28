/*
 * FATDirectioryEntryTable.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FATDIRENTRYTABLE_H_
#define INCLUDE_FILESYSTEM_FAT_FATDIRENTRYTABLE_H_
#include <data_structures/Vector.h>
#include <filesystem/fat/FATDirEntry.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <filesystem/fat/FAT32EntryTable.h>
#include <data_structures/String.h>
#include <io/ByteReader.h>


class FATDirEntryTable
	:private Vector<FATDirEntry>
{
public:
	using Vector<FATDirEntry>::operator[];

	FATDirEntryTable(ByteReader &breader,FAT32EntryTable &fat,FAT32Entry fentry,FAT32ExtBPB * e32bpb);
	FATDirEntryTable(const FATDirEntryTable &fat)=delete;
	FATDirEntryTable & operator=(const FATDirEntryTable &fat)=delete;
	void changeVolume();
	/**
	 * if byteCount is SIZE_MAX,then read all left
	 */
	Vector<char> readFile( const StringRef & longFileName, size_t offset = 0, size_t byteCount = SIZE_MAX );
//	void		 consumeFileContent( const StringRef & longFileName, size_t properBufferSize, );
	size_t   findByShortName( const StringRef & mainPart,const StringRef & extPart)const;
	// return the short name entry's index,where it must exist.
	size_t   findByLongName( const StringRef & longFileName )const;

private:
	ByteReader &breader;
	FAT32ExtBPB * e32bpb;
	FAT32EntryTable &fat;
};



#endif /* INCLUDE_FILESYSTEM_FAT_FATDIRENTRYTABLE_H_ */
