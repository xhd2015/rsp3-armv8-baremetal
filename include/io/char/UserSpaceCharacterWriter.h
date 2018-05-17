/*
 * UserSpaceCharacterWriter.h
 *
 *  Created on: May 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_USERSPACECHARACTERWRITER_H_
#define INCLUDE_IO_CHAR_USERSPACECHARACTERWRITER_H_

#include <io/char/CharacterWriter.h>
#include <data/Queue.h>

class UserSpaceCharacterWriter
	:public CharacterWriter
{
public:
	UserSpaceCharacterWriter(size_t bufSize=512):_buffer(bufSize){}
	virtual ~UserSpaceCharacterWriter()=default;
	virtual size_t  write(char ch) override;
	virtual void  flush() override;
private:
	Queue<char> _buffer;
};



#endif /* INCLUDE_IO_CHAR_USERSPACECHARACTERWRITER_H_ */
