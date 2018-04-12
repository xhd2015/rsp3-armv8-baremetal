/*
 * VirtualProxyUser.cpp
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */
#include <filesystem/VirtualProxyUser.h>
#include <interrupt/svc_call.h>


VirtualProxyUser::VirtualProxyUser()
	:_proxyKernel(reinterpret_cast<void*>(svc_call<SvcFunc::vfsProxy>(0,VP_NEW))),
	 _curArgs(nullptr)
{}
VirtualProxyUser::~VirtualProxyUser()
{
	if(_proxyKernel)
		svc_call<SvcFunc::vfsProxy>(reinterpret_cast<uint64_t>(_proxyKernel),VP_DELETE);
}

bool     VirtualProxyUser::cd(const StringRef &name)
{
	Vector<String> v;
	v.emplaceBack(name.data(), name.size());
	return cd(v);
}
bool     VirtualProxyUser::cd(const VectorRef<String> &path)
{
	if(_proxyKernel)
	{
		_curArgs = const_cast<void*>(reinterpret_cast<const void*>(&path));
		return svc_call<SvcFunc::vfsProxy>(reinterpret_cast<uint64_t>(_proxyKernel),VP_CD,reinterpret_cast<uint64_t>(&cdHandler),reinterpret_cast<uint64_t>(this));
	}else{
		return false;
	}
}
Vector<String>          VirtualProxyUser::ls()
{
	Vector<String> res;
	if(_proxyKernel)
	{
		_curArgs=&res;
		svc_call<SvcFunc::vfsProxy>(reinterpret_cast<uint64_t>(_proxyKernel),
				VP_LS,
				reinterpret_cast<uint64_t>(&lsHandler),
				reinterpret_cast<uint64_t>(this)
				);
	}
	return std::move(res);
}
const char * VirtualProxyUser::cdHandler(VirtualProxyUser *insPtr,size_t index, size_t &len)
{
	assert(insPtr && insPtr->_curArgs);
	auto& ref=*reinterpret_cast<VectorRef<String>*>(insPtr->_curArgs);
	if(index >= ref.size())
		return nullptr;
	len = ref[index].size();
	return ref[index].data();
}
void         VirtualProxyUser::lsHandler(VirtualProxyUser *insPtr,const char *s,size_t len)
{
	assert(insPtr && insPtr->_curArgs);
	auto& ref=*reinterpret_cast<Vector<String>*>(insPtr->_curArgs);
	ref.emplaceBack(s,len);
}


