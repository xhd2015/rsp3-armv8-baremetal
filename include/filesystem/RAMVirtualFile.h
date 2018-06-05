/*
 * RAMVirtualFile.h
 *
 *  Created on: May 16, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_RAMVIRTUALFILE_H_
#define INCLUDE_FILESYSTEM_RAMVIRTUALFILE_H_

#include <filesystem/VirtualFile.h>
#include <data/String.h>

class RAMVirtualFile:
		public VirtualFile
{
public:
	RAMVirtualFile(const StringRef &name,FileType type);
	virtual ~RAMVirtualFile();
	virtual FileType type()const override;
	virtual SubFileSystemType subFSType()const override;
	virtual size_t         size()const override;
	virtual String         read(size_t offset,size_t maxBytes)override;
	virtual size_t         write(const StringRef & ref,size_t offset)override;
	virtual VirtualFile*   createFile(const StringRef &name,FileType type)const override;
	virtual VirtualFile*   copy()const override;
	void                   append(char ch);
private:
	FileType   _type;
	String     _data;
};

#endif /* INCLUDE_FILESYSTEM_RAMVIRTUALFILE_H_ */
