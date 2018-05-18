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
	return svc_call<SvcFunc::vfsProxy>(
			reinterpret_cast<uint64_t>(_proxyKernel),
			VP_CD,
			reinterpret_cast<uint64_t>(&path)
			);
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
bool                         VirtualProxyUser::fileExists(const StringRef &name)
{
	return false;
}
bool                         VirtualProxyUser::create(const StringRef &name,FileType type)
{
	return svc_call<SvcFunc::vfsProxy>(
			reinterpret_cast<uint64_t>(_proxyKernel),
			VP_CREATE,
			reinterpret_cast<uint64_t>(&name),
			static_cast<uint64_t>(type)
			);
}
bool                         VirtualProxyUser::move(const StringRef &name,const StringRef &newname)
{
	return svc_call<SvcFunc::vfsProxy>(
			reinterpret_cast<uint64_t>(_proxyKernel),
			VP_MOVE,
			reinterpret_cast<uint64_t>(&name),
			reinterpret_cast<uint64_t>(&newname)
			);
}
bool                         VirtualProxyUser::copy(const StringRef &name,const StringRef &copyname)
{
	return svc_call<SvcFunc::vfsProxy>(
			reinterpret_cast<uint64_t>(_proxyKernel),
			VP_COPY,
			reinterpret_cast<uint64_t>(&name),
			reinterpret_cast<uint64_t>(&copyname)
			);
}
bool                         VirtualProxyUser::remove(const StringRef &name)
{
	return svc_call<SvcFunc::vfsProxy>(
			reinterpret_cast<uint64_t>(_proxyKernel),
			VP_REMOVE,
			reinterpret_cast<uint64_t>(&name)
			);
}
bool                         VirtualProxyUser::getContent(const StringRef &name,String &content)
{
	_curArgs = &content;
	return svc_call<SvcFunc::vfsProxy>(
			reinterpret_cast<uint64_t>(_proxyKernel),
			VP_GET_CONTENT,
			reinterpret_cast<uint64_t>(&contentHandler),
			reinterpret_cast<uint64_t>(this),
			reinterpret_cast<uint64_t>(&name)
		);
}
bool                         VirtualProxyUser::getSize(const StringRef &name,size_t &size)
{
	return true;
}
bool                         VirtualProxyUser::currentDir(Vector<String> & path)
{
	_curArgs = &path;
	return svc_call<SvcFunc::vfsProxy>(
				reinterpret_cast<uint64_t>(_proxyKernel),
				VP_CURRENT_DIR,
				reinterpret_cast<uint64_t>(&currentDirHandler),
				reinterpret_cast<uint64_t>(this)
			);
}
void         VirtualProxyUser::lsHandler(VirtualProxyUser *insPtr,const char *s,size_t len)
{
	assert(insPtr && insPtr->_curArgs);
	auto& ref=*reinterpret_cast<Vector<String>*>(insPtr->_curArgs);
	ref.emplaceBack(s,len);
}
void         VirtualProxyUser::currentDirHandler(VirtualProxyUser *instPtr,size_t sum,size_t i,
			const char *name,size_t namelen)
{
	auto &res = *reinterpret_cast<Vector<String>*>(instPtr->_curArgs);
	if(res.size()<sum)
		res.resize(sum);
	res[i]=StringRef(name,namelen);
}

void       VirtualProxyUser::contentHandler(VirtualProxyUser *instPtr,
		const char *data,size_t len)
{
	auto &res = *reinterpret_cast<String*>(instPtr->_curArgs);
	res.append(data, len);
}

