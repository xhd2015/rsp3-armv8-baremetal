#include <filesystem/fat/FAT32Entry.h>

/*
 * FAT32Entry.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */



FAT32Entry::FAT32Entry(uint32_t low28bits)
	: effBits(low28bits & MASK),reservedNotTouched(0){}

bool FAT32Entry::isAlloced()const
{
	return (this->effBits >= 2 && effBits<MAX_BOUND) || effBits==FREE;
}
bool FAT32Entry::isBad()const
{
	return this->effBits == BAD;
}
bool FAT32Entry::isLast()const
{
	return this->effBits==LAST;
}
bool FAT32Entry::isFree()const
{
	return this->effBits==FREE;
}

uint32_t FAT32Entry::getAsInt()const
{
	return this->effBits;
}

