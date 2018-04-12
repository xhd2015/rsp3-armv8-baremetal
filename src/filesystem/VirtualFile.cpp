/*
 * VirtualFile.cpp
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */

#include <filesystem/VirtualFile.h>
VirtualFile::VirtualFile(const String&   name)
	:_name(name),
	 _parent(nullptr),
	 _nextFile(nullptr),
	 _subFile(nullptr)
{

}
VirtualFile::~VirtualFile()
{
	_parent=nullptr;
	_nextFile=nullptr;
	_subFile=nullptr;
}
VirtualFile::FileType VirtualFile::type()const
{
	return F_ROOTFS;
}
VirtualFile::SubFileSystemType VirtualFile::subFSType()const
{
	return FS_ROOTFS;
}
size_t   VirtualFile::size()const
{
	return 0;
}

bool          VirtualFile::addFile(const VectorRef<String>& path,VirtualFile *file)
{
	auto f = findFile(path);
	if(f)
		return f->addFile(file);
	else
		return false;
}
bool          VirtualFile::addFile(VirtualFile *file)
{
	auto p=this;
	if(!p->_subFile)
	{
		p->_subFile=file;
		file->_parent=this;
	}else{
		p=this->_subFile;
		while(p->_nextFile)
			p=p->_nextFile;
		p->_nextFile=file;
		file->_parent = this;
	}
	return true;
}
VirtualFile*          VirtualFile::removeFile(const VectorRef<String> &path)
{
	if(path.size()==0)
		return nullptr;
	else if(path.size()==1)
		return removeFile(path[0]);
	else{
		VectorRef<String> refReduced(path.data(), path.size()-1);
		auto p = findFile(refReduced);
		if(p)
			return p->removeFile(path[path.size()-1]);
		else
			return nullptr;
	}
}
VirtualFile*          VirtualFile::removeFile(const StringRef &name)
{
	auto p=this->_subFile;
	if(StringRef(p->_name)==name)
	{
		p->_parent=nullptr;
		this->_subFile = p->_nextFile;
		if(this->_subFile)
			this->_subFile->_parent=this;
		p->_nextFile = nullptr;
		return p;
	}else{
		auto prev = p;
		p=p->_nextFile;
		while(p)
		{
			if(StringRef(p->_name) == name)
			{
				prev->_nextFile=p->_nextFile;
				p->_nextFile=nullptr;
				return p;
			}
			prev=p;
			p=p->_nextFile;
		}
	}
	return nullptr;

}
VirtualFile*  VirtualFile::findFile(const VectorRef<String> &path)
{
	auto p=this;
	for(size_t i=0;i!=path.size();++i)
	{
		p=p->findFile(path[i]);
		if(!p)
			return nullptr;
	}
	return p;
}

VirtualFile*  VirtualFile::findFile(const Vector<StringRef> &path)
{
	auto p=this;
	for(size_t i=0;i!=path.size();++i)
	{
		p=p->findFile(path[i]);
		if(!p)
			return nullptr;
	}
	return p;
}

void          VirtualFile::foreachFile(VirtualFileHandler handler)
{
	auto p=this->subFile();
	while(p)
	{
		handler(p);
		p=p->_nextFile;
	}
}
VirtualFile*  VirtualFile::findFile(const StringRef &name)
{
	auto p=this->_subFile;
	while(p)
	{
		if(StringRef(p->_name) == name)
			return p;
		p=p->_nextFile;
	}
	return nullptr;
}

String         VirtualFile::read(size_t offset,size_t maxBytes)
{
	return "";
}
size_t         VirtualFile::write(const StringRef & ref,size_t offset)
{
	return 0;
}
