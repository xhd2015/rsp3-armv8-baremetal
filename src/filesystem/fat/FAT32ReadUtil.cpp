
#include <filesystem/fat/FAT32Debugger.h>
#include <filesystem/fat/FAT32ReadUtil.h>
#include <memory/MemoryManager.h>
#include <io/Output.h>


size_t FAT32ReadUtil::findByShortName(const FATDirEntry *content,size_t itemCount,const char * mainPart,const char *extPart)
{
	for(size_t i=0;i!=itemCount;++i)
	{
		if(!content[i].uni_isLongNameEntry() && content[i].shortNameEquals(mainPart, extPart)) // not long name
			return i; // they are unique
	}
	return SIZE_MAX;
}
size_t FAT32ReadUtil::findByLongName(const FATDirEntry *content,size_t itemCount,const char  * asciiLongName)
{
	size_t i=0;
	while(true)
	{
		while(i != itemCount && !content[i].uni_isLongNameEntry())++i;
		if(i==itemCount)
			return SIZE_MAX;
		const FATLongNameEntry *firstAppearEntry=reinterpret_cast<const FATLongNameEntry*>(content+i);
		const FATLongNameEntry *lastAppearEntry=firstAppearEntry->getLastAppearEntry();
		if(lastAppearEntry->nameEqulasAsciiNameUpto(firstAppearEntry, asciiLongName, false))
			return i;
		else
			i+= lastAppearEntry - firstAppearEntry + 1;//advance to the next group.
	}
}

Vector<FATDirEntry> FAT32ReadUtil::readAllDirEntries(const Vector<FAT32Entry> &fat,size_t beginIndex,const FAT32ExtBPB *ebpb,SectorReader &sreader)
{
	size_t clusCount = getEntryCount(fat, beginIndex);
	const size_t entryPerClus = (ebpb->secPerClus*ebpb->bytesPerSec)/sizeof(FATDirEntry);
	Vector<FATDirEntry> res( clusCount * entryPerClus );
	for(size_t i=0;i!=clusCount;++i)
	{
		sreader.read(ebpb->getClusterFirstSector(beginIndex), res.data() + i*entryPerClus, ebpb->secPerClus);
		beginIndex = fat[beginIndex].getAsInt();
	}
	return std::move(res);
}

size_t FAT32ReadUtil::getEntryCount(const Vector<FAT32Entry> &fat,size_t beginIndex)
{
	if(beginIndex < 2 || !fat[beginIndex].isAlloced())
		return 0;
	size_t count=0;
	while(true)
	{
		++count;
		if(fat[beginIndex].isLast())
			break;
		beginIndex = fat[beginIndex].getAsInt();
	}
	return count;
}
size_t FAT32ReadUtil::getNextEntryIndex(const FAT32Entry *fat,size_t clusterIndex)
{
	return fat[clusterIndex].getAsInt();
}
size_t FAT32ReadUtil::getLastClusterIndex(const FAT32Entry *fat,size_t startCluster)
{
	if(startCluster < 2)
		return SIZE_MAX;
	while( fat[startCluster].isLast())
		++startCluster;
	return startCluster;
}

size_t FAT32ReadUtil::findFirstFreeClusterIndex(const FAT32Entry *fat,size_t itemCount,size_t startFrom)
{
	if(startFrom < 2)
		startFrom = 2;
	while(startFrom!=itemCount && !fat[startFrom].isFree() )
		++startFrom;
	return startFrom==itemCount? SIZE_MAX:startFrom;
}
Vector<const FATDirEntry*> FAT32ReadUtil::filterInDirFileEntries(const Vector<FATDirEntry> & entries)
{
	Vector<const FATDirEntry*> res;
	for(size_t i=0;i!=entries.size();++i)
	{
		if(!entries[i].uni_isLongNameEntry() && !entries[i].isVolumeID())//is file or dir
		{
			res.pushBack(entries.data() + i);
		}
	}
	return std::move(res);
}
