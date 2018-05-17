/*
 * RAMVirtualFile.cpp
 *
 *  Created on: May 16, 2018
 *      Author: 13774
 */

#include <filesystem/RAMVirtualFile.h>

RAMVirtualFile::RAMVirtualFile(const StringRef &name,FileType type)
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
	return std::move(_data.subString(offset, maxBytes));
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
VirtualFile* RAMVirtualFile::createFile(const StringRef &name,FileType type)const
{
	return new RAMVirtualFile(name, type);
}

VirtualFile*   RAMVirtualFile::copy()const
{
	if(type() != F_FILE)
		return nullptr;

	auto f=createFile(name(), F_FILE);
	auto typedf = static_cast<RAMVirtualFile*>(f);
	if(typedf)
		typedf->_data = _data;
	return typedf;
}
