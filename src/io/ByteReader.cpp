/*
 * ByteReader.cpp
 *
 *  Created on: Feb 3, 2018
 *      Author: 13774
 */


#include <io/ByteReader.h>
#include <cstring>



ByteReader::ByteReader(SectorReader &sreader)
	:sreader(sreader),buffer(nullptr){}

ByteReader::~ByteReader()
{
	if(buffer)
	{
		mman.deallocate(buffer);
		buffer=nullptr;
	}

}

size_t ByteReader::adjustOneSecForReadOrWrite(size_t byteStartOrEnd,bool isStartOrEnd,const char *src,char *dst)
{
	size_t remByte = byteStartOrEnd % getSectorSize();
	if(remByte!=0)
	{
		size_t adjustSector = byteStartOrEnd / getSectorSize();
		readSectorToBuffer( adjustSector );
		size_t adjustOff = 0; // default at end
		size_t adjustSize = remByte;
		if(isStartOrEnd)//start
		{
			adjustOff = remByte;
			adjustSize = getSectorSize() - remByte;
		}
		if(src)//write to sector
		{
			std::memcpy(buffer + adjustOff, src, adjustSize);
			writeSectorFromBuffer( adjustSector );
		}else if(dst)//read from sector
		{
			std::memcpy(dst,buffer + adjustOff,adjustSize);
		}
		return adjustSize;
	}
	return 0;
}

size_t   ByteReader::getSectorSize()const
{
	return 512;
}
bool ByteReader::readSectorToBuffer(size_t sectorIndex)
{
	ensureSectorBuffer();
	return sreader.read(sectorIndex, buffer, 1)==1;
}

bool ByteReader::writeSectorFromBuffer(size_t sectorIndex)
{
	ensureSectorBuffer();
	return sreader.write(sectorIndex, buffer, 1)==1;
}

void	 ByteReader::ensureSectorBuffer()
{
	if(!buffer)
		buffer = mman.allocateAs<char*>(getSectorSize());
}

