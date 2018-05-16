/*
 * ByteCharacterReader.h
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_BYTECHARACTERREADER_H_
#define INCLUDE_IO_CHAR_BYTECHARACTERREADER_H_


#include <data/Queue.h>
#include <io/block/ByteReader.h>
#include <io/char/CharacterReader.h>
/**
 * DOCME 从命名的角度区分它们， byte表示原始的数据，因此是从block设备中读取的
 * 						 character表示可表示的字符数据，因此是从字符设备中读取的
 * 						 ByteCharacterReader就是将block中读取的byte转换成可表示的character
 * 使用缓冲区高效地实现读写
 */
class ByteCharacterReader
	:public CharacterReader
{
public:
	ByteCharacterReader(ByteReader * byteReader);
	ByteCharacterReader(const ByteCharacterReader &)=delete;
	ByteCharacterReader &operator=(const ByteCharacterReader &)=delete;
	virtual ~ByteCharacterReader()=default;
	virtual char  read() override;
private:
	/**
	 * 保证buffer中有数据，因此如果这样的准备失败了，就会抛出异常
	 */
	void   ensureBufferHasData();
private:
	ByteReader * _byteReader;
	Queue<char>  _buffer;
	size_t       _bytePosBase;// 起始位置
};


#endif /* INCLUDE_IO_CHAR_BYTECHARACTERREADER_H_ */
