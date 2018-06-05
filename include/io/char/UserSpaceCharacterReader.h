/*
 * UserSpaceCharacterReader.h
 *
 *  Created on: May 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_USERSPACECHARACTERREADER_H_
#define INCLUDE_IO_CHAR_USERSPACECHARACTERREADER_H_

#include <io/char/CharacterReader.h>
#include <def.h>
#include <data/Queue.h>

class UserSpaceCharacterReader
	:public CharacterReader
{
public:
	UserSpaceCharacterReader()
		:_inputBuffer(512)
	{}
	virtual ~UserSpaceCharacterReader()=default;
	virtual char  read() override ;
	AS_MACRO Queue<uint16_t> & inputBuffer() { return _inputBuffer;}
private:
	Queue<uint16_t> _inputBuffer;
};



#endif /* INCLUDE_IO_CHAR_USERSPACECHARACTERREADER_H_ */
