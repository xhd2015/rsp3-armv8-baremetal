/*
 * UserSpaceCharacterReader.h
 *
 *  Created on: May 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_USERSPACECHARACTERREADER_H_
#define INCLUDE_IO_CHAR_USERSPACECHARACTERREADER_H_

#include <io/char/CharacterReader.h>
class UserSpaceCharacterReader
	:public CharacterReader
{
public:
	virtual ~UserSpaceCharacterReader()=default;
	virtual char  read() override ;
private:
};



#endif /* INCLUDE_IO_CHAR_USERSPACECHARACTERREADER_H_ */
