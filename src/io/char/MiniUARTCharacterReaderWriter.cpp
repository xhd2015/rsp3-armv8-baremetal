/*
 * MiniUARTCharacterReaderWriter.cpp
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */
#include <io/char/MiniUARTCharacterReaderWriter.h>

char  MiniUARTCharacterReaderWriter::read()
{
	while(!_uartDriver->readReady());
	return _uartDriver->rawRead();
}
size_t  MiniUARTCharacterReaderWriter::write(char ch)
{
	while(!_uartDriver->writeReady());
	_uartDriver->rawWrite(ch);
	return 1;
}
void  MiniUARTCharacterReaderWriter::flush()
{

}

