#include <io/block/SectorReaderToByteReader.h>
#include <tuple>
#include <cstring>
#include <memory/MemoryManager.h>
#include <generic_util.h>


SectorReaderToByteReader::SectorReaderToByteReader(SectorReader &sreader)
	:sreader(sreader),buffer(nullptr)
    {}

SectorReaderToByteReader::~SectorReaderToByteReader()
{
	if(buffer)
	{
		mman.deallocate(buffer);
		buffer=nullptr;
	}

}

/**
 * 读一个扇区，然后将其内容的需求部分复制到需要的扇区
 * 读取剩余的扇区到中间部分
 * 实际上，分配的空间可以更少，只需要一个扇区的空间
 */
String SectorReaderToByteReader::read(size_t byteStart,size_t maxCount)
{
	String data(maxCount);
	size_t readBytes = read(byteStart, data.data(), maxCount);
	data.resize(readBytes);
	return std::move(data);
}

size_t	    SectorReaderToByteReader:: write(size_t byteStart,const StringRef &dataRef)
{
	return write(byteStart,dataRef.data(),dataRef.size());
}
size_t       SectorReaderToByteReader::read(size_t byteStart,void *buffer,size_t maxCount)
{
	using T = char;
//	Vector<T> vec(maxCount);
	char  * byteData = reinterpret_cast<char*>(buffer);
	// 开始部分
	size_t startCount = alignAhead(byteStart, getSectorSize()) - byteStart;
	if(oneSectorPartialReadOrWrite(byteStart, startCount, nullptr, byteData)!=startCount)
		return 0;
	// 结尾部分
	size_t endByte = byteStart +  maxCount * sizeof(T);
	size_t endCount = endByte %  getSectorSize(); // 结尾部分需要读写的数量
	// 中间部分的大小
	size_t middleCount = maxCount * sizeof(T) - startCount - endCount;
	if(oneSectorPartialReadOrWrite(endByte - endCount, endCount, nullptr, byteData + startCount + middleCount)!=endCount)
		return startCount;
	size_t middleSecCount =   middleCount / getSectorSize();
	size_t middleReadCount = 0;
	if(middleCount > 0)
		middleReadCount =  sreader.read( (byteStart + startCount)/getSectorSize(), byteData + startCount,middleSecCount);

	if(middleReadCount==middleSecCount)
		return maxCount;
	else // 中间部分不完整，则只能计算开始和已读取的中间部分
		return startCount + middleReadCount*getSectorSize();

}
size_t       SectorReaderToByteReader::write(size_t byteStart,const void *buffer,size_t maxCount)
{
	using T = char;
	auto  byteData = reinterpret_cast<const char*>(buffer);
	// 开始部分
	size_t startCount = alignAhead(byteStart, getSectorSize()) - byteStart;
	if(oneSectorPartialReadOrWrite(byteStart, startCount, byteData,nullptr)!=startCount)
		return 0;
	// 结尾部分
	size_t endByte = byteStart +  maxCount * sizeof(T);
	size_t endCount = endByte %  getSectorSize(); // 结尾部分需要读写的数量
	// 中间部分的大小
	size_t middleCount = maxCount * sizeof(T) - startCount - endCount;
	if(oneSectorPartialReadOrWrite(endByte - endCount, endCount, byteData + startCount + middleCount,nullptr)!=endCount)
		return startCount;
	size_t middleSecCount =   middleCount / getSectorSize();
	size_t middleWriteCount = 0;
	if(middleCount > 0)
		middleWriteCount =  sreader.write( (byteStart + startCount)/getSectorSize(), byteData + startCount,middleSecCount);

	if(middleWriteCount==middleSecCount)
		return maxCount;
	else // 中间部分不完整，则只能计算开始和已读取的中间部分
		return startCount + middleWriteCount*getSectorSize();
}


size_t SectorReaderToByteReader::oneSectorPartialReadOrWrite(size_t byteStart,size_t count,const char *src,char *dst)
{
	if(count == 0||byteStart%getSectorSize() + count > getSectorSize()) // 0或者超出一个扇区的限制
		return 0;

	size_t adjustSector = byteStart / getSectorSize();
	if(!readSectorToBuffer( adjustSector ))
		return 0;
	if(src)// write to sector
	{
		std::memcpy(buffer + byteStart, src, count); // 把待写入的数据复制到内部缓冲区
		if(!writeSectorFromBuffer( adjustSector ))
			return 0;
	}else if(dst)
	{
		std::memcpy(dst,buffer + byteStart,count);
	}
	return count;
}


bool SectorReaderToByteReader::readSectorToBuffer(size_t sectorIndex)
{
	ensureSectorBuffer();
	return sreader.read(sectorIndex, buffer, 1)==1;
}

bool SectorReaderToByteReader::writeSectorFromBuffer(size_t sectorIndex)
{
	ensureSectorBuffer();
	return sreader.write(sectorIndex, buffer, 1)==1;
}

void	 SectorReaderToByteReader::ensureSectorBuffer()
{
	if(!buffer)
		buffer = mman.allocateAs<char*>(getSectorSize());
}
