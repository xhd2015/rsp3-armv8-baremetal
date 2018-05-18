/*
 * VirtualFile.cpp
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */

#include <filesystem/VirtualFile.h>
VirtualFile::VirtualFile(const StringRef&   name)
	:_name(name),
	 _parent(nullptr),
	 _previousFile(nullptr),
	 _nextFile(nullptr),
	 _subFile(nullptr)
{

}
VirtualFile::~VirtualFile()
{
	_parent=nullptr;
	_previousFile=nullptr;
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
	if(!p->_subFile) // no _subFile
	{
		p->_subFile=file;
		file->_parent=this;
	}else{
		p=this->_subFile;
		while(p->_nextFile) // find last node
			p=p->_nextFile;
		p->_nextFile=file;
		file->_previousFile=p;
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
	// may changes: this->_subFile, p,p->previous,p->next
	// find first file whose names matches
	auto p=findFile(name);
	if(!p) // not found
		return nullptr;
	auto prev=p->_previousFile;
	auto next=p->_nextFile;
	// clear all p's fields
	p->_parent=nullptr;
	p->_nextFile=nullptr;
	p->_previousFile=nullptr;
	// change this,prev and next
	if(this->_subFile==p)
		this->_subFile=next;
	if(prev)
		prev->_nextFile = next;
	if(next)
		next->_previousFile=prev;

	return p;
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
	if(name == "..")
		return _parent;
	if(name==".")
		return this;
	auto p=this->_subFile;
	while(p && !(StringRef(p->_name)==name) )
		p=p->_nextFile;
	return p;
}

String VirtualFile::read(size_t offset,size_t maxBytes)
{
	return "";
}
size_t         VirtualFile::write(const StringRef & ref,size_t offset)
{
	return 0;
}

VirtualFile*  VirtualFile::createFile(const StringRef &name,FileType type)const
{
	return new VirtualFile(name);
}
VirtualFile*   VirtualFile::copy()const
{
	return new VirtualFile(name());
}
void   VirtualFile::destroyFileRecursively(VirtualFile *file)
{
	if(file)
	{
		destroyFileRecursively(file->subFile());
		destroyFileRecursively(file->nextFile());
		delete file;
	}
}
