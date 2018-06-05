/*
 * RAMFileCharacterWriter.h
 *
 *  Created on: May 22, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHAR_RAMFILECHARACTERWRITER_H_
#define INCLUDE_IO_CHAR_RAMFILECHARACTERWRITER_H_
#include <filesystem/RAMVirtualFile.h>
#include <io/char/CharacterWriter.h>
#include <programming/define_members.h>

class RAMFileCharacterWriter
	:public CharacterWriter
{
public:
	RAMFileCharacterWriter(RAMVirtualFile* file)
		:_file(file)
	{}
	DELETE_COPY(RAMFileCharacterWriter);
	virtual ~RAMFileCharacterWriter()=default;
	/**
	 * 前置条件：_file不为空
	 * @param ch
	 * @return
	 */
	virtual size_t  write(char ch) override ;
	virtual void  flush() override {}
	AS_MACRO RAMVirtualFile *file(){return _file;}
	AS_MACRO void  file(RAMVirtualFile *file){_file=file;}
private:
	RAMVirtualFile * _file;
};

#endif /* INCLUDE_IO_CHAR_RAMFILECHARACTERWRITER_H_ */
