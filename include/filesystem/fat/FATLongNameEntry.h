/*
 * FATLongNameEntry.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FATLONGNAMEENTRY_H_
#define INCLUDE_FILESYSTEM_FAT_FATLONGNAMEENTRY_H_

#include <def.h>
#include <data/String.h>
#include <filesystem/fat/FATDirEntry.h>

// 长文件名的填充是0
class FATLongNameEntry{
public:
	uint8_t ord;
	char   name1[10];
	uint8_t attr;
	uint8_t type;
	uint8_t chksum;
	char  name2[12];
	uint16_t fstClusLO;
	char name3[4];

	static constexpr size_t getNameRequiredCapacity(){ return (sizeof(name1)+sizeof(name2)+sizeof(name3))/2 + 1; }
	// advanced capicity is (sizeof(name1)+sizeof(name2)+sizeof(name3))/2+1,the extra char is for '\0'
	String getAsAsciiName(bool skipHeadingSpace=true)const;
	bool uni_isLongNameEntry()const;
	const FATLongNameEntry *getLastAppearEntry()const;
	const FATDirEntry *getOwnerDirectoryEntry()const;
	FATLongNameEntry *getLastAppearEntry();
	FATDirEntry *getOwnerDirectoryEntry();

	bool nameEqulasAsciiName(const StringRef &asciiNullTermStr,bool allowAsciiStrMore)const;
	bool nameEqulasAsciiNameUpto(const FATLongNameEntry *lastCmpEntr,const StringRef &asciiNullTermStr,bool allowAsciiStrMore)const;
	static constexpr size_t getNameBytesCount(){ return sizeof(name1) + sizeof(name2) + sizeof(name3); }


private:
	size_t lookupFirstNullChar()const;
	// note: each character of unicodeName spans 2 bytes
	/**
	 * @param allowAsciiStrMore  是否允许用于比较的ascii字符更长，即asiccStr = unicodeName + MORE,sizeof(MORE)>0
	 */
	static bool unicodeNameMatchesAsciiName(const char *unicodeName,size_t unicodeNameBytesLen,const StringRef & asciiNullTermStr,bool allowAsciiStrMore);
	static char unicodeCharToAsciiChar(const void *p);
}__attribute__((packed));




#endif /* INCLUDE_FILESYSTEM_FAT_FATLONGNAMEENTRY_H_ */
