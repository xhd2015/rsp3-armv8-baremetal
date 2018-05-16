/*
 * MiniUARTCharacterReaderWriter.h
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_MINIUARTCHARACTERREADERWRITER_H_
#define INCLUDE_IO_CHAR_MINIUARTCHARACTERREADERWRITER_H_
#include <driver/uart/BCM2835MiniUART.h>
#include <io/char/CharacterWriter.h>
#include <io/char/CharacterReader.h>
#include <programming/define_members.h>
class MiniUARTCharacterReaderWriter
	:public CharacterReader,
	 public CharacterWriter
{
public:
	MiniUARTCharacterReaderWriter(BCM2835MiniUART * uartDriver):_uartDriver(uartDriver){}
	DELETE_COPY(MiniUARTCharacterReaderWriter);
	virtual ~MiniUARTCharacterReaderWriter()=default;
	virtual char  read();
	virtual size_t  write(char ch) ;
	virtual void  flush();
private:
	BCM2835MiniUART * _uartDriver;
};



#endif /* INCLUDE_IO_CHAR_MINIUARTCHARACTERREADERWRITER_H_ */
