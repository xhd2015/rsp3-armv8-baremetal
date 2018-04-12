
#include <generic_util.h>
#include <filesystem/fat/FATLongNameEntry.h>
#include <utility>

String FATLongNameEntry::getAsAsciiName(bool skipHeadingSpace)const
{
	String res;
	size_t i = 0;
	char curCh=0;
	if(skipHeadingSpace)
		while(i < sizeof(name1) && unicodeCharToAsciiChar(name1+i)==' ' )i+=2;
	for(;i!=sizeof(name1) && (curCh=unicodeCharToAsciiChar(name1+i));i+=2)
		res.pushBack(curCh);
	if(curCh)
		for(i=0;i!=sizeof(name2) && (curCh=unicodeCharToAsciiChar(name2+i));i+=2)
			res.pushBack(curCh);
	if(curCh)
		for(i=0;i!=sizeof(name3) && (curCh=unicodeCharToAsciiChar(name3+i));i+=2)
			res.pushBack(curCh);
	return std::move(res);
}
bool FATLongNameEntry::uni_isLongNameEntry()const
{
	return (attr & 0x3f) == 0xf;
}


const FATLongNameEntry *FATLongNameEntry::getLastAppearEntry()const
{
	const FATLongNameEntry *p=this;
	while((++p)->uni_isLongNameEntry());// must be true for p=this
	return (p-1);
}
const FATDirEntry *FATLongNameEntry::getOwnerDirectoryEntry()const
{
	return reinterpret_cast<const FATDirEntry*>(getLastAppearEntry()+1);
}
FATLongNameEntry *FATLongNameEntry::getLastAppearEntry()
{
	return const_cast<FATLongNameEntry*>(static_cast<const FATLongNameEntry*>(this)->getLastAppearEntry());
}

FATDirEntry *FATLongNameEntry::getOwnerDirectoryEntry()
{
	return const_cast<FATDirEntry*>(static_cast<const FATLongNameEntry*>(this)->getOwnerDirectoryEntry());
}

bool FATLongNameEntry::nameEqulasAsciiName(const StringRef &asciiNullTermStr,bool allowAsciiStrMore)const
{
	size_t nullcharOffset = lookupFirstNullChar();
	int place = (nullcharOffset < sizeof(name1)?
					1 :
					(nullcharOffset < sizeof(name1)+sizeof(name2)?
								2:3));
	switch(place)
	{
	case 1:
		return unicodeNameMatchesAsciiName(name1, sizeof(name1), asciiNullTermStr, allowAsciiStrMore);
		break;
	case 2:
		return unicodeNameMatchesAsciiName(name1, sizeof(name1), asciiNullTermStr, true) && unicodeNameMatchesAsciiName(name2, sizeof(name2), strOffset(asciiNullTermStr.data(),sizeof(name1)/2), allowAsciiStrMore);
		break;
	case 3:
		return unicodeNameMatchesAsciiName(name1, sizeof(name1), asciiNullTermStr, true) && unicodeNameMatchesAsciiName(name2, sizeof(name2), strOffset(asciiNullTermStr.data(),sizeof(name1)/2), true) && unicodeNameMatchesAsciiName(name3, sizeof(name3), strOffset(asciiNullTermStr.data(), (sizeof(name1) + sizeof(name2))/2), allowAsciiStrMore);
		break;
	}
	return false;
}
bool FATLongNameEntry::nameEqulasAsciiNameUpto(const FATLongNameEntry *lastCmpEntr,const StringRef& asciiNullTermStr,bool allowAsciiStrMore)const
{
	const FATLongNameEntry *p=this;
	StringRef pasciiStr = asciiNullTermStr;
	while(p!=lastCmpEntr)
	{
		if(!p->nameEqulasAsciiName(pasciiStr, true))
			return false;
		--p;
		size_t advanceLen =  getNameBytesCount()/2;
		if(pasciiStr.size() > advanceLen)
		{
			pasciiStr.data(pasciiStr.data() + advanceLen);
			pasciiStr.size(pasciiStr.size() - advanceLen);
		}else{
			pasciiStr.data(EMPTY_STR);
			pasciiStr.size(0);
		}
	}
	return p->nameEqulasAsciiName(pasciiStr, allowAsciiStrMore);
}

size_t FATLongNameEntry::lookupFirstNullChar()const
{
#define LOOKUP_HELPER(nameN,base) \
	for(size_t i=0;i!=sizeof(nameN);i+=2)\
	{ \
		char transferedChar = unicodeCharToAsciiChar(nameN + i); \
		if(transferedChar == NULL_CHAR) \
			return (base)+i;\
	}
	LOOKUP_HELPER(name1,0);
	LOOKUP_HELPER(name2,sizeof(name1));
	LOOKUP_HELPER(name3,sizeof(name1) + sizeof(name2));
	return SIZE_MAX;
#undef LOOKUP_HELPER
}
bool FATLongNameEntry::unicodeNameMatchesAsciiName(const char* unicodeName,size_t unicodeNameBytesLen,const StringRef &asciiNullTermStr,bool allowAsciiStrMore)
{
	// 如果两种在i处比较结束,i < unicode长度，返回asciiStr[i]==unicode[i]..
	// 在i=unicde长度处结束，若ascii[i]=NULL_CHAR，返回true；否则返回allowAsciiStMore
	size_t i=0;
	for(;i!=unicodeNameBytesLen;i+=2)
	{
		char transferedChar = unicodeCharToAsciiChar(unicodeName+i);
		char asciiChar = asciiNullTermStr[i/2];
		if(transferedChar != asciiChar)
			return false; // end at i < LEN,differs
		if(asciiChar==NULL_CHAR)// end at i < LEN,the same
			return true;
	}
	return (asciiNullTermStr[i/2]==NULL_CHAR || allowAsciiStrMore);// or it does not have more,or it is allowed to have more
}

char FATLongNameEntry::unicodeCharToAsciiChar(const void *p)
{
	return static_cast<char>(*reinterpret_cast<const uint16_t*>(p));
}
