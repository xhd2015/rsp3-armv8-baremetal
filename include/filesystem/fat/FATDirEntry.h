/*
 * FATDirEntry.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT_FATDIRENTRY_H_
#define INCLUDE_FILESYSTEM_FAT_FATDIRENTRY_H_

#include <def.h>
#include <data/String.h>
#include <data/StringRef.h>

class FATDirEntry{
public:
	enum : char { ATTR_MASK = 0x3f };
	enum : char {
		ATTR_READ_ONLY=0x01,
		ATTR_HIDDEN=0x02,
		ATTR_SYSTEM=0x04,
		ATTR_VOLUME_ID = 0x08,
		ATTR_DIRECTORY = 0x10,
		ATTR_ARCHIVE = 0x20,
		ATTR_LONG_NAME = (ATTR_READ_ONLY | ATTR_HIDDEN | ATTR_SYSTEM | ATTR_VOLUME_ID)
	};
	char name[11];
	uint8_t attr;
	uint8_t NTRes;
	uint8_t crtTimeTenth;
	uint16_t crtTime;
	uint16_t crtDate;
	uint16_t lstAccData;
	uint16_t fstClusHI;
	uint16_t wrtTime;
	uint16_t wrtDate;
	uint16_t fstClusLO;
	uint32_t fileSize;

	static uint8_t chksum(char *shortName);
	bool uni_isLongNameEntry()const{return (attr & ATTR_MASK) == ATTR_LONG_NAME;}
	bool isLongNameEntry()const{return (attr & ATTR_MASK) == ATTR_LONG_NAME;}
	bool isVolumeID()const{ return (attr & ATTR_MASK) == ATTR_VOLUME_ID ;}
	bool isFile()const{return (attr & ATTR_MASK) == ATTR_ARCHIVE;}
	AS_MACRO bool isDir()const{return (attr & ATTR_MASK) == ATTR_DIRECTORY;}
	AS_MACRO bool isFileOrDir()const{ return isFile() || isDir();}


	bool shortNameEquals(const StringRef &mainPart,const StringRef &extPart)const;

	uint32_t getFirstClusIndex()const;

	/**
	 *  calling this method, you must ensure that it
	 *
	 *  NOTE: this is only meaningful when it is called from a ptr.
	 */
	String getLongName()const;
	String getShortName()const;
	String getVolumnLabel()const;
	AS_MACRO bool zeroEntry()const { return *reinterpret_cast<const uint32_t*>(this)==0;}

private:
	static bool trailingSpaceNameEquals(const StringRef & hasSpaceStr,size_t hasSpaceStrLen,const StringRef & nullTermStr);
	static size_t findFirstNonSpace(const char *s,size_t len);
	static size_t findLastNonSpace(const char *s,size_t len);
} __attribute__((packed));



#endif /* INCLUDE_FILESYSTEM_FAT_FATDIRENTRY_H_ */
