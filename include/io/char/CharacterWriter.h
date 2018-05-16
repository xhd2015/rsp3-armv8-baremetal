/*
 * CharacterWriter.h
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHARACTERWRITER_H_
#define INCLUDE_IO_CHARACTERWRITER_H_
#include <def.h>
class CharacterWriter{
public:
	virtual ~CharacterWriter()=default;
	virtual size_t  write(char ch) = 0;
	virtual void  flush() = 0;
};

#endif /* INCLUDE_IO_CHARACTERWRITER_H_ */
