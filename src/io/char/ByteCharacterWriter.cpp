/*
 * ByteCharacterWriter.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */

#include <io/char/ByteCharacterWriter.h>

size_t ByteCharacterWriter::write(char ch)
{
	if(_buffer.full())
		flush();
	_buffer.put(ch);
	return 1;
}
void  ByteCharacterWriter::flush()
{
	if(!_buffer.empty())
	{
		_byteReader->write(_bytePosBase,_buffer.data(),_buffer.size());
		_buffer.reset(0);
	}
}
