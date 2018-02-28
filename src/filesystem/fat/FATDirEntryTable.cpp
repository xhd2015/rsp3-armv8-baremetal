/*
 * FATDirEntryTable.cpp
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#include <filesystem/fat/FATDirEntryTable.h>
#include <filesystem/fat/FAT32EntryTable.h>
#include <filesystem/fat/FATLongNameEntry.h>
#include <filesystem/fat/FAT32ExtBPB.h>
#include <IntegerFormatter.h>



FATDirEntryTable::FATDirEntryTable(ByteReader &breader,FAT32EntryTable &fat,FAT32Entry fentry,FAT32ExtBPB * e32bpb)
	:Vector(),breader(breader),e32bpb(e32bpb),fat(fat)
{
	size_t eachClusCount = e32bpb->secPerClus *  e32bpb->bytesPerSec / sizeof(FATDirEntry);
	fat.foreachEntry([this,&breader,eachClusCount,e32bpb](FAT32Entry entry,size_t index){
		this->append(breader.read<FATDirEntry>(e32bpb->getClusterFirstSector(entry.getAsInt()) * e32bpb->bytesPerSec,eachClusCount));
	}, fentry);
}
Vector<char> FATDirEntryTable::readFile( const StringRef & longFileName,size_t offset ,size_t byteCount  )
{
	size_t i=findByLongName(longFileName);
	Vector<char> content;
	if(i < getSize()  )
	{
		FATDirEntry fentry = (*this)[i];

		FAT32Entry  fatEntry = fentry.getFirstClusIndex();
		fatEntry = fat.locateFileOffset(fatEntry, offset);
		if(!fatEntry.isLast())//can be located
		{
			size_t offsetInClus = offset % e32bpb->getClusterByteSize();
			if(byteCount==SIZE_MAX)
				byteCount = fentry.fileSize - offset;
			if(offset + byteCount <= fentry.fileSize) // not overflow
			{
				const size_t  clusBytes = e32bpb->getClusterByteSize();

				//read first cluse
				content.append(breader.read<char>(e32bpb->getClusterFirstSector(fatEntry.getAsInt())*e32bpb->bytesPerSec + offsetInClus,clusBytes - offsetInClus));
				size_t leftByte = byteCount - (clusBytes - offsetInClus);
				fatEntry = fat.next(fatEntry);
				fat.foreachEntry([this,&content,&leftByte,clusBytes](FAT32Entry entry,size_t index){
					if(leftByte)
					{
						size_t thisReadByte = leftByte > clusBytes ? clusBytes:leftByte;
						content.append(breader.read<char>(e32bpb->getClusterFirstSector(entry.getAsInt()) * e32bpb->bytesPerSec, thisReadByte / sizeof(char)));
						leftByte -= thisReadByte;
					}
				}, fatEntry);
			}
		}

	}
	return std::move(content);
}

//void FATDirEntryTable::consumeFileContent( const StringRef & longFileName )
//{
//
//}

size_t   FATDirEntryTable::findByShortName( const StringRef & mainPart,const StringRef & extPart)const
{
	for(size_t i=0;i!=getSize();++i)
	{
		if(!operator[](i).uni_isLongNameEntry() && operator[](i).shortNameEquals(mainPart, extPart)) // not long name
			return i; // they are unique
	}
	return SIZE_MAX;
}

size_t   FATDirEntryTable::findByLongName( const StringRef & longFileName )const
{
	size_t i=0;
	while(true)
	{
		while(i != getSize() && !operator[](i).uni_isLongNameEntry())++i;
		if(i==getSize())
			return SIZE_MAX;
		const FATLongNameEntry *firstAppearEntry=reinterpret_cast<const FATLongNameEntry*>( getData() +i );
		const FATLongNameEntry *lastAppearEntry=firstAppearEntry->getLastAppearEntry();
		if(lastAppearEntry->nameEqulasAsciiNameUpto(firstAppearEntry, longFileName, false))
			return i + (lastAppearEntry - firstAppearEntry + 1);
		else
			i += lastAppearEntry - firstAppearEntry + 1;//advance to the next group.
	}
}
