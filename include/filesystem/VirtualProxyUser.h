/*
 * VirtualProxyUser.h
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_VIRTUALPROXYUSER_H_
#define INCLUDE_FILESYSTEM_VIRTUALPROXYUSER_H_
#include <filesystem/VirtualProxyDefinitions.h>
#include <data_structures/VectorRef.h>
#include <data_structures/Vector.h>
#include <data_structures/String.h>
#include <programming/define_members.h>

class VirtualProxyUser{
public:
	using VirtualProxyFunction = ::VirtualProxyFunction;
	VirtualProxyUser();
	DELETE_COPY(VirtualProxyUser);
	~VirtualProxyUser();
	bool     cd(const VectorRef<String> &path);
	Vector<String>           ls();

private:
	void * _proxyKernel;
};




#endif /* INCLUDE_FILESYSTEM_VIRTUALPROXYUSER_H_ */
