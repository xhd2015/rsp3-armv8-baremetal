/*
 * ByteCharacterWriter.h
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_BYTECHARACTERWRITER_H_
#define INCLUDE_IO_CHAR_BYTECHARACTERWRITER_H_

#include <data/Queue.h>
#include <io/block/ByteReader.h>
#include <io/char/CharacterWriter.h>
/**
 * 使用缓冲区高效地实现读写
 * 注意：对于缓冲区，我们保证它的数据总是从0开始存放，长度一定由size()获取
 * 也就是说，我们使用Queue的一种限制形式，将其作为定长Vector来使用。
 */
class ByteCharacterWriter
	:public CharacterWriter
{
public:
	ByteCharacterWriter(ByteReader * byteReader);
	ByteCharacterWriter(const ByteCharacterWriter &)=delete;
	ByteCharacterWriter &operator=(const ByteCharacterWriter &)=delete;
	virtual ~ByteCharacterWriter()=default;
	virtual size_t  write(char ch) override;
	virtual void  flush() override;
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


#endif /* INCLUDE_IO_CHAR_BYTECHARACTERWRITER_H_ */
