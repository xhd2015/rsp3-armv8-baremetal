/*
 * FATDirEntry.cpp
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#include <filesystem/fat/FATDirEntry.h>
#include <filesystem/fat/FATLongNameEntry.h>
#include <utility>


uint8_t FATDirEntry::chksum(char *shortName)
{
	uint8_t sum=0;
	for(size_t nameLen=11;nameLen!=0;--nameLen)
		sum = ((sum&1)?0x80:0)+(sum>>1);
	return sum;
}


bool FATDirEntry::shortNameEquals(const StringRef &mainPart,const StringRef &extPart)const
{
	return trailingSpaceNameEquals(name, 8, mainPart) &&  trailingSpaceNameEquals(name+8, 3,extPart);
}
uint32_t FATDirEntry::getFirstClusIndex()const
{
	return ((fstClusHI << 16) | fstClusLO);
}
String FATDirEntry::getLongName()const
{
	String res;
	const FATDirEntry *p= this - 1;
	if(p->uni_isLongNameEntry())
	{
		const FATLongNameEntry *entry = reinterpret_cast<const FATLongNameEntry*>(p);
		res.append(entry->getAsAsciiName(true));
		--entry;
		while(entry->uni_isLongNameEntry())
		{
			res.append(entry->getAsAsciiName(false));
			--entry;
		}
	}
	return std::move(res);
}
String FATDirEntry::getShortName()const
{
	String sname;
	size_t i=findFirstNonSpace(name, 8);
	size_t j=findLastNonSpace(name, 8);
	for(;i<=j;++i)
		sname.pushBack(name[i]);
	sname.pushBack('.');
	i=findFirstNonSpace(name+8, 3)+8;
	j=findLastNonSpace(name+8, 3)+8;
	for(;i<=j;++i)
		sname.pushBack(name[i]);
	return std::move(sname);
}

String FATDirEntry::getVolumnLabel()const
{
	String sname;
	size_t i=findFirstNonSpace(name, 8);
	size_t j=findLastNonSpace(name, 8);
	for(;i<=j;++i)
		sname.pushBack(name[i]);
	return sname;
}

bool FATDirEntry::trailingSpaceNameEquals(const StringRef &hasSpaceStr,size_t hasSpaceStrLen,const StringRef &nullTermStr)
{
	bool meetTerm=false;
	size_t i=0;
	for(;i!=hasSpaceStrLen;++i)
	{
		if(!meetTerm && nullTermStr[i]==NULL_CHAR)
			meetTerm=true;
		char thisChr = meetTerm?' ':nullTermStr[i];
		if(hasSpaceStr[i]!=thisChr)
			return false;
	}
	// nullTermStr has more.
	if(!meetTerm && nullTermStr[i]!=NULL_CHAR)
		return false;
	return true;
}
size_t FATDirEntry::findFirstNonSpace(const char *s,size_t len)
{
	for(size_t i=0;i!=len;++i)
		if(s[i]!=' ')
			return i;
	return len;
}
size_t FATDirEntry::findLastNonSpace(const char *s,size_t len)
{
	for(size_t i=len;i!=0;--i)
		if(s[i-1]!=' ')
			return i-1;
	return len;
}






