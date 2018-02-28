/*
 * FAT32Entry.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_FAT32ENTRY_H_
#define INCLUDE_FILESYSTEM_FAT32ENTRY_H_

#include <def.h>
#include <functional>

class FAT32Entry{
public:
	enum { MASK = 0x0FFFFFFF, LAST=0x0FFFFFFF,MAX_BOUND = 0xFFFFFF6,FREE=0, BAD=0xFFFFFF7};
	FAT32Entry(uint32_t low28bits=0);


	uint32_t effBits:28;
	uint32_t reservedNotTouched:4; // do not touch it except during formatting

	bool isAlloced()const;
	bool isBad()const;
	bool isLast()const;
	bool isFree()const;

	uint32_t getAsInt()const;

}__attribute((packed));



#endif /* INCLUDE_FILESYSTEM_FAT32ENTRY_H_ */
