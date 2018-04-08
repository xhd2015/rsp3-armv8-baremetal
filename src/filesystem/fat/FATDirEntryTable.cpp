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
#include <io/IntegerFormatter.h>
#include <generic/cpu.h>



//FATDirEntryTable::FATDirEntryTable(ByteReader &breader,FAT32EntryTable &fat,FAT32Entry fentry,FAT32ExtBPB * e32bpb,bool load)
//	:Vector(),breader(breader),e32bpb(e32bpb),fat(fat)
//{
//	if(load)
//	{
//		size_t eachClusCount = e32bpb->secPerClus *  e32bpb->bytesPerSec;
//		auto entry = fentry;
//		while(!entry.isLast())
//		{
//			auto vec=breader.read(e32bpb->getClusterFirstSector(entry.getAsInt()) * e32bpb->bytesPerSec,eachClusCount);
//			this->append(vec.castMove<FATDirEntry>());
//			// 注意，下面的过程可能不准确，主要是因为某些项跨越两个entry的话，只有一个entry项不能完整显示。
//	//		auto data=reinterpret_cast<const FATDirEntry*>(vec.data());
//	//		auto size=vec.size() / sizeof(FATDirEntry);
//	//		for(size_t i=0;i!=size;++i)
//	//		{
//	//			if(!data[i].uni_isLongNameEntry() && !data[i].isVolumeID())//is file or dir
//	//			{
//	//				++count;
//	//				kout << "\""<< data[i].getLongName() << "\"\n";
//	//			}
//	//		}
//			entry = fat.next(entry);
//		}
//	}
//}

size_t   FATDirEntryTable::findByShortName( const StringRef & mainPart,const StringRef & extPart)const
{
	for(size_t i=0;i!=size();++i)
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
		while(i != size() && !operator[](i).uni_isLongNameEntry())++i;
		if(i==size())
			return SIZE_MAX;
		const FATLongNameEntry *firstAppearEntry=reinterpret_cast<const FATLongNameEntry*>( data() +i );
		const FATLongNameEntry *lastAppearEntry=firstAppearEntry->getLastAppearEntry();
		if(lastAppearEntry->nameEqulasAsciiNameUpto(firstAppearEntry, longFileName, false))
			return i + (lastAppearEntry - firstAppearEntry + 1);
		else
			i += lastAppearEntry - firstAppearEntry + 1;//advance to the next group.
	}
}

String  FATDirEntryTable::volumnLabel()const
{
	auto &t=*this;
	for(size_t i=0;i!=size();++i)
	{
		if(t[i].isVolumeID())
			return t[i].getVolumnLabel();
	}
	return "";
}

void     FATDirEntryTable::showAllFileNames()const
{
	auto &entries=*this;
	size_t count=0;
	for(size_t i=0;i!=entries.size();++i)
	{
		if(!entries[i].zeroEntry() &&
				!entries[i].uni_isLongNameEntry() &&
				!entries[i].isVolumeID())//is file or dir
		{
			++count;
			kout << entries[i].getLongName() << "\n";
		}
	}
	kout << "count : " << count <<"\n";
}
