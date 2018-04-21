/*
 * VirtualProxyUser.h
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_VIRTUALPROXYUSER_H_
#define INCLUDE_FILESYSTEM_VIRTUALPROXYUSER_H_
#include <filesystem/VirtualProxyDefinitions.h>
#include <data/VectorRef.h>
#include <data/Vector.h>
#include <data/String.h>
#include <data/StringRef.h>
#include <programming/define_members.h>

class VirtualProxyUser{
public:
	using VirtualProxyFunction = ::VirtualProxyFunction;
	VirtualProxyUser();
	DELETE_COPY(VirtualProxyUser);
	~VirtualProxyUser();
	bool                                       cd(const StringRef &name);
	bool                                       cd(const VectorRef<String> &path);
	Vector<String>                             ls();
private:
	static const char * cdHandler(VirtualProxyUser *insPtr,size_t index, size_t &len);
	static void         lsHandler(VirtualProxyUser *insPtr,const char *s,size_t len);
private:
	void * _proxyKernel;
	void * _curArgs;
};




#endif /* INCLUDE_FILESYSTEM_VIRTUALPROXYUSER_H_ */
