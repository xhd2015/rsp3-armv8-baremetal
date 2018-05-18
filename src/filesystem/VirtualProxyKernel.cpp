/*
 * VirtualProxyKernel.cpp
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */
#include <filesystem/VirtualProxyKernel.h>
#include <cstring>
VirtualProxyKernel::VirtualProxyKernel()
	:_curFile(vfs.rootFile())
{}

VirtualProxyKernel::~VirtualProxyKernel()
{}

bool     VirtualProxyKernel::cd(const VectorRef<String> * path)
{
	if(_curFile)
	{
		auto p = _curFile->findFile(*path);
		if(p)
		{
			_curFile=p;
			return true;
		}
	}
	return false;
}

size_t VirtualProxyKernel::ls(VirtualProxyLsHandler handler,void *instPtr)
{
	size_t count=0;
	auto vhandler=[handler,instPtr,&count](VirtualFile *file){
		handler(instPtr,file->name().data(), file->name().size());
		++count;
	};
	if(!_curFile)
	{
		vfs.foreachRootFile(vhandler);
	}else{
		_curFile->foreachFile(vhandler);
	}
	return count;
}
bool        VirtualProxyKernel::currentDir(VirtualProxyCurrentDirHandler handler,void *instPtr)
{
	size_t n=0;
	auto p=_curFile;
	if(p)
	{
		do{
			++n;
			p=p->parent();
		}while(p && p->parent()); //p is not root
		p=_curFile;
		for(size_t i=0;i!=n;++i)
		{
			handler(instPtr,n, n-i-1,p->name().data(),p->name().size());
			p = p->parent();
		}
		return true;
	}
	return false;
}

bool     VirtualProxyKernel::create(const StringRef &filename,FileType type)
{
	auto foundFile =_curFile->findFile(filename);
	if(foundFile)
		return false;

	auto createdFile = _curFile->createFile(filename, type);
	if(createdFile)
	{
		_curFile->addFile(createdFile);
		return true;
	}else
		return false;
}
bool     VirtualProxyKernel::move( const StringRef &filename,
		const StringRef &newname)
{
	auto foundFile =_curFile->findFile(filename);
	if(!foundFile)
			return false;
	if(_curFile->findFile(newname))
		return false;
	foundFile->name(newname);
	return true;
}

bool             VirtualProxyKernel::remove(const StringRef &filename)
{
	auto f = _curFile->removeFile(filename);
	if(f)
	{
		VirtualFile::destroyFileRecursively(f);
		return true;
	}
	return false;
}
bool  VirtualProxyKernel::copy(const StringRef &filename,
		const StringRef &copyname)
{
	auto foundFile =_curFile->findFile(filename);
	if(!foundFile || foundFile->type()!=FileType::F_FILE)
			return false;
	if(_curFile->findFile(copyname))
		return false;
	auto f = foundFile->copy();
	if(f)
	{
		f->name(copyname);
		_curFile->addFile(f);
	}
	return f!=nullptr;
}
bool             VirtualProxyKernel::getContent(VirtualProxyContentHandler handler,
		void *instPtr,const StringRef &filename)
{
	auto foundFile =_curFile->findFile(filename);
	if(!foundFile || foundFile->type()!=FileType::F_FILE)
			return false;
	auto content=foundFile->read(0, foundFile->size());
	handler(instPtr,content.data(),content.size());
	return true;
}
bool             VirtualProxyKernel::fileExists(const StringRef &filename)
{
	return _curFile->findFile(filename)!=nullptr;
}

uint64_t    VirtualProxyKernel::handleVFSProxySVC(uint64_t * savedRegs)
{
	auto insPtr = reinterpret_cast<VirtualProxyKernel*>(savedRegs[0]);
	VirtualProxyFunction func = static_cast<VirtualProxyFunction>(savedRegs[1]);
	uint64_t  *args = savedRegs + 2;

	switch(func)
	{
	case VP_NEW:
		return reinterpret_cast<uint64_t>(new VirtualProxyKernel());
		break;
	case VP_DELETE:
		delete insPtr;
		break;
	case VP_CD:
		return insPtr->cd(reinterpret_cast<const VectorRef<String>*>(args[0]));
		break;
	case VP_LS:
	{
		return insPtr->ls(reinterpret_cast<VirtualProxyLsHandler>(args[0]),
				reinterpret_cast<void*>(args[1])
		);
		break;
	}
	case VP_CURRENT_DIR:
		return insPtr->currentDir(
				reinterpret_cast<VirtualProxyCurrentDirHandler>(args[0]),
				reinterpret_cast<void*>(args[1]));
		break;
	case VP_GET_CONTENT:
		return insPtr->getContent(
				reinterpret_cast<VirtualProxyContentHandler>(args[0]),
				reinterpret_cast<void*>(args[1]),
				*reinterpret_cast<const StringRef*>(args[2])
		);
		break;
	case VP_MOVE:
		return insPtr->move(*reinterpret_cast<const StringRef*>(args[0]),
				*reinterpret_cast<const StringRef*>(args[1]));
		break;
	case VP_COPY:
		return insPtr->copy(*reinterpret_cast<const StringRef*>(args[0]),
				*reinterpret_cast<const StringRef*>(args[1]));
		break;
	case VP_CREATE:
		return insPtr->create(*reinterpret_cast<const StringRef*>(args[0]),
				static_cast<VirtualFile::FileType>(args[1]));
		break;
	case VP_REMOVE:
		return insPtr->remove(*reinterpret_cast<const StringRef *>(args[0]));
		break;
	}
	return true;
}



