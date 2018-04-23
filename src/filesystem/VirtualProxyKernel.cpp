/*
 * VirtualProxyKernel.cpp
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */
#include <filesystem/VirtualProxyKernel.h>
#include <cstring>
VirtualProxyKernel::VirtualProxyKernel()
	:_curFile(nullptr)
{}

VirtualProxyKernel::~VirtualProxyKernel()
{}

bool     VirtualProxyKernel::cd(VirtualProxyCdHandler handler,void *instPtr)
{
	Vector<StringRef> path;
	size_t i=0;
	size_t len=0;
	while(true)
	{
		const char * s = handler(instPtr,i, len);
		if(!s)break;
		path.emplaceBack(s, len);
		++i;
	}
	if(path.size()==0)
		return true;
	if(!_curFile)
	{
		_curFile=vfs.findRootFile(path);
		return _curFile!=nullptr;
	}else{
		auto p = _curFile->findFile(path);
		if(p)
		{
			_curFile=p;
			return true;
		}else{
			return false;
		}
	}
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
		return insPtr->cd(reinterpret_cast<VirtualProxyCdHandler>(args[0]),
				reinterpret_cast<void*>(args[1]));
		break;
	case VP_LS:
	{
		return insPtr->ls(reinterpret_cast<VirtualProxyLsHandler>(args[0]),
				reinterpret_cast<void*>(args[1])
		);
		break;
	}
	}
	return true;
}



