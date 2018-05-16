/*
 * RAMVirtualFile.cpp
 *
 *  Created on: May 16, 2018
 *      Author: 13774
 */

#include <filesystem/RAMVirtualFile.h>

RAMVirtualFile::RAMVirtualFile(const String &name,FileType type)
	:VirtualFile(name),
	 _type(type),
	 _data()
{

}

RAMVirtualFile::~RAMVirtualFile()
{
}

RAMVirtualFile::FileType RAMVirtualFile::type() const {
	return _type;
}


RAMVirtualFile::SubFileSystemType RAMVirtualFile::subFSType() const {
	return FS_RAMFS;
}

size_t RAMVirtualFile::size() const {
	return _type==F_FILE?_data.size():0;
}

String RAMVirtualFile::read(size_t offset, size_t maxBytes) {
	return _data.subString(offset, maxBytes);
}

size_t RAMVirtualFile::write(const StringRef& ref, size_t offset) {
	if(_data.resize(offset + ref.size()))
	{
		for(size_t i=offset;i!=ref.size();++i)
			_data[i]=ref[i-offset];
		return ref.size();
	}
	return 0;
}
