/*
 * VirtualProxyUser.cpp
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */
#include <filesystem/VirtualProxyUser.h>
#include <interrupt/svc_call.h>


VirtualProxyUser::VirtualProxyUser()
	:_proxyKernel(reinterpret_cast<void*>(svc_call<SvcFunc::vfsProxy>(0,VP_NEW,reinterpret_cast<uint64_t>(&mman))))
{}
VirtualProxyUser::~VirtualProxyUser()
{
	if(_proxyKernel)
		svc_call<SvcFunc::vfsProxy>(reinterpret_cast<uint64_t>(_proxyKernel),VP_DELETE);
}

bool     VirtualProxyUser::cd(const VectorRef<String> &path)
{
	if(_proxyKernel)
	{
		return svc_call<SvcFunc::vfsProxy>(reinterpret_cast<uint64_t>(_proxyKernel),VP_CD,reinterpret_cast<uint64_t>(&path));
	}else{
		return false;
	}
}
Vector<String>           VirtualProxyUser::ls()
{
	Vector<String> res;
	if(_proxyKernel)
	{
		svc_call<SvcFunc::vfsProxy>(reinterpret_cast<uint64_t>(_proxyKernel),
				VP_LS,
					reinterpret_cast<uint64_t>(&res),
					reinterpret_cast<uint64_t>(MEM_OPS)
				);
	}
	return std::move(res);
}
bool VirtualProxyUser::resizeVectorString(Vector<String> &res,size_t newCapacity)
{
	return res.ensureEnoughCapacity(newCapacity);
}
bool VirtualProxyUser::resizeString(String &res,size_t newSize)
{
	return res.resize(newSize);
}


void * const VirtualProxyUser::MEM_OPS[] = {
		reinterpret_cast<void*>(&VirtualProxyUser::resizeVectorString),
		reinterpret_cast<void*>(&VirtualProxyUser::resizeString)};



