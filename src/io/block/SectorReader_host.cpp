/*
 * SectorReader_impl.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <def.h>
#include <arch/host/SectorReaderHelper.h>
#include <io/block/SectorReader.h>
#include <runtime_def.h>

SectorReaderHelper::~SectorReaderHelper()
{
	invalidateCurrentFile();
}
void SectorReaderHelper::setCurrentFile(const char *file)
{
	invalidateCurrentFile();
	fileStream = new std::fstream(file,std::fstream::in|std::fstream::out|std::fstream::binary);
	if(!fileStream->is_open())
		fileStream->open(file,std::fstream::out|std::fstream::binary);
}
void SectorReaderHelper::invalidateCurrentFile()
{
	if(fileStream)
	{
		fileStream->close();
		mman.deallocate(fileStream);
	}
}
size_t SectorReaderHelper::read(size_t secIndex,void *dst,size_t maxNumSec)
{
	fileStream->seekg(secIndex * 512, std::fstream::beg);
	fileStream->read(reinterpret_cast<char*>(dst),maxNumSec * 512);
	return maxNumSec;
}
size_t SectorReaderHelper::write(size_t secIndex,const void *src,size_t maxNumSec)
{
	fileStream->seekp(secIndex*512, std::fstream::beg);
	fileStream->write(reinterpret_cast<const char*>(src), maxNumSec * 512);
	return maxNumSec;
}

size_t SectorReader::read(size_t secIndex,void *dst,size_t maxNumSec)
{
	return sys_sectorReaderHelper.read(secIndex,dst,maxNumSec);
}
size_t SectorReader::write(size_t secIndex,const void *src,size_t maxNumSec)
{
	return sys_sectorReaderHelper.write(secIndex, src, maxNumSec);
}
