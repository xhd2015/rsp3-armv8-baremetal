/*
 * SectorReaderToByteReader.h
 *
 *  Created on: Apr 7, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_SECTORREADERTOBYTEREADER_H_
#define INCLUDE_IO_SECTORREADERTOBYTEREADER_H_


#include <memory/MemoryManager.h>
#include <data/Vector.h>
#include <data/VectorRef.h>
#include <data/String.h>
#include <data/StringRef.h>
#include <io/block/ByteReader.h>
#include <io/block/SectorReader.h>
#include <utility>

// 将一个SectorReader转换成ByteReader
class SectorReaderToByteReader
	:public ByteReader
{
public:
	SectorReaderToByteReader(SectorReader &sreader);
	SectorReaderToByteReader(const SectorReaderToByteReader &)=delete;
	SectorReaderToByteReader & operator=(const SectorReaderToByteReader &)=delete;
	virtual ~SectorReaderToByteReader();
	virtual String read(size_t start,size_t maxLen) override;
	virtual size_t	     write(size_t start,const StringRef &dataRef)override;
	/**
	 * @brief 从给定字节处开始，读取至多maxCount个字节。
	 * 该方法使用oneSectorPartialReadOrWrite读写首尾的扇区的非对齐部分，然后使用完整的扇区读写读写中间部分（该部分是扇区对齐的）
	 * @param byteStart
	 * @param buffer
	 * @param maxCount
	 * @return  实际读取的字节数目
	 */
	virtual size_t       read(size_t byteStart,void *buffer,size_t maxCount) override;
	virtual size_t       write(size_t start,const void *buffer,size_t maxLen) override;

	/**
	 * 读取/写入至多一个扇区的数据
	 * @param byteStart  需要读的字节位置
	 * @param count    字节数量，注意， byteStart + count不能大于sectorSize,否则直接返回0，不读写任何数据
	 * @param src       该参数不为nullptr时，表明写
	 * @param dst         src为nullptr且该参数不为nullptr时，表明读
	 * @return  实际读写的数目，或者是0，或者是count。 0时表明参数错误，或者内部读写错误
	 * 读取字节所在位置的一个扇区到内部缓冲区中，
	 * 如果指定写，则先将指定缓冲区的数据的期望写部分复制到内部缓冲区，然后写入一个扇区；
	 * 如果读，则将期望的数据从内部缓冲区复制到指定的缓冲区
	 */
	size_t 		oneSectorPartialReadOrWrite(size_t byteStart,size_t count,const char *src,char *dst);

	AS_MACRO size_t   getSectorSize()const { return 512;}

private:
	/**
	 * returns good or bad(sector read is success or failed)
	 */
	bool     readSectorToBuffer(size_t sectorIndex);
	bool     writeSectorFromBuffer(size_t sectorIndex);

	void			ensureSectorBuffer();

private:
	SectorReader &sreader;
	char		 *buffer;

};



#endif /* INCLUDE_IO_SECTORREADERTOBYTEREADER_H_ */
