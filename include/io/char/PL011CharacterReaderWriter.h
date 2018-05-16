/*
 * PL011CharacterReaderWriter.h
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_PL011CHARACTERREADERWRITER_H_
#define INCLUDE_IO_CHAR_PL011CHARACTERREADERWRITER_H_
#include <driver/uart/PL011.h>
#include <io/char/CharacterReader.h>
#include <io/char/CharacterWriter.h>
#include <programming/define_members.h>
#include <generic_util.h>
class PL011CharacterReaderWriter
	:public CharacterReader,
	 public CharacterWriter
{
public:
	PL011CharacterReaderWriter(PL011 * driver):_driver(driver){}
	DELETE_COPY(PL011CharacterReaderWriter);
	virtual ~PL011CharacterReaderWriter()=default;
	void    rebase(uint64_t diff){rebasePointer(_driver, diff);}
	virtual char  read();
	virtual size_t  write(char ch) ;
	virtual void  flush();
private:
	PL011 * _driver;
};



#endif /* INCLUDE_IO_CHAR_PL011CHARACTERREADERWRITER_H_ */
