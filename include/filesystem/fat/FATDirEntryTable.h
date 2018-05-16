/*
 * FATDirectioryEntryTable.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FATDIRENTRYTABLE_H_
#define INCLUDE_FILESYSTEM_FAT_FATDIRENTRYTABLE_H_
#include <data/Vector.h>
#include <data/String.h>
#include <filesystem/fat/FATDirEntry.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <filesystem/fat/FAT32EntryTable.h>
#include <data/String.h>
#include <io/block/ByteReader.h>


class FATDirEntryTable
	:private Vector<FATDirEntry>
{
public:
	FATDirEntryTable()=default;
//	FATDirEntryTable(ByteReader &breader,FAT32EntryTable &fat,FAT32Entry fentry,FAT32ExtBPB * e32bpb,bool load=false);
	FATDirEntryTable(const FATDirEntryTable &fat)=delete;
	FATDirEntryTable & operator=(const FATDirEntryTable &fat)=delete;
	void changeVolume();
//	void		 consumeFileContent( const StringRef & longFileName, size_t properBufferSize, );
	size_t   findByShortName( const StringRef & mainPart,const StringRef & extPart)const;
	// return the short name entry's index,where it must exist.
	size_t   findByLongName( const StringRef & longFileName )const;

	String   volumnLabel()const;
	void     showAllFileNames()const;

	void     load();

	template <class Base>
	AS_MACRO Base & cast()
	{
		return *static_cast<Base*>(this);
	}

	using Vector::size;
	using Vector::operator[];
	using Vector::clear;
	using Vector::append;
private:
};



#endif /* INCLUDE_FILESYSTEM_FAT_FATDIRENTRYTABLE_H_ */
