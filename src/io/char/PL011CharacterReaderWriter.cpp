/*
 * PL011CharacterReaderWriter.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */
#include <io/char/PL011CharacterReaderWriter.h>

char  PL011CharacterReaderWriter::read()
{
	while(!_driver->readReady());
	return _driver->rawRead();
}
size_t  PL011CharacterReaderWriter::write(char ch)
{
	while(!_driver->writeReady());
	_driver->rawWrite(ch);
	return 1;
}
void  PL011CharacterReaderWriter::flush()
{
	// do nothing
}



