/*
 * ByteCharacterReader.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */
#include <io/char/ByteCharacterReader.h>
char  ByteCharacterReader::read()
{
	ensureBufferHasData();
	return _buffer.remove();
}

void   ByteCharacterReader::ensureBufferHasData()
{
	if(_buffer.empty())
	{
		_buffer.reset(0);
		auto n = _byteReader->read(_bytePosBase, _buffer.data(), _buffer.capacity());
		assert(n!=0);
		_buffer.reset(n);
	}
}

