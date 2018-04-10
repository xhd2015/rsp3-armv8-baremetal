/*
 * VirtualProxyKernel.cpp
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */
#include <filesystem/VirtualProxyKernel.h>
#include <cstring>
VirtualProxyKernel::VirtualProxyKernel(MemoryManager &mman)
	:_mman(mman),
	 _curFile(nullptr)
{}

VirtualProxyKernel::~VirtualProxyKernel()
{}

bool     VirtualProxyKernel::cd(const VectorRef<String> &path)
{
	if(path.getSize()==0)
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

size_t VirtualProxyKernel::ls(Vector<String> &res,
		VirtualProxyVectorResizeCapacityOp opPtr,
		VirtualProxyStringResizeOp strResizer)
{
	size_t count=0;
	auto handler=[&res,&count,opPtr,strResizer](VirtualFile *file){
		bool resized=opPtr(res, res.size()+1);//resize capacity
		assert(resized);
		res.emplaceBack(0,false);//无内存分配
		resized=strResizer(res[res.size()-1],file->name().size());//自定义内存分配
		assert(resized);
		std::memcpy(res[res.size()-1].data(), file->name().data(), file->name().size());
		++count;
	};
	if(!_curFile)
	{
		vfs.foreachRootFile(handler);
	}else{
		_curFile->foreachFile(handler);
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
		return reinterpret_cast<uint64_t>(new VirtualProxyKernel(*reinterpret_cast<MemoryManager*>(args[0])));
		break;
	case VP_DELETE:
		delete insPtr;
		break;
	case VP_CD:
		return insPtr->cd(*reinterpret_cast<const VectorRef<String>*>(args[0]));
		break;
	case VP_LS:
	{
		void ** opArr=reinterpret_cast<void**>(args[1]);
		return insPtr->ls(*reinterpret_cast<Vector<String>*>(args[0]),
				reinterpret_cast<VirtualProxyVectorResizeCapacityOp>(opArr[0]),
				reinterpret_cast<VirtualProxyStringResizeOp>(opArr[1])
		);
		break;
	}
	}
	return true;
}



