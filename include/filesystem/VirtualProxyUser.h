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
	bool                         cd(const StringRef &name);
	bool                         cd(const VectorRef<String> &path);
	Vector<String>               ls();
	bool                         fileExists(const StringRef &name);
	bool                         create(const StringRef &name,FileType type);
	bool                         move(const StringRef &name,const StringRef &newname);
	bool                         copy(const StringRef &name,const StringRef &copyname);
	bool                         remove(const StringRef &name);
	bool                         getContent(const StringRef &name,String &content);
	bool                         getSize(const StringRef &name,size_t &size);
	bool                         currentDir(Vector<String> & path);


private:
	static void         lsHandler(VirtualProxyUser *insPtr,const char *s,size_t len);
	static void         currentDirHandler(VirtualProxyUser *instPtr,size_t sum,size_t i,
			const char *name,size_t namelen);
	static void         contentHandler(VirtualProxyUser *instPtr,const char *data,size_t len);
private:
	void * _proxyKernel;
	void * _curArgs;
};




#endif /* INCLUDE_FILESYSTEM_VIRTUALPROXYUSER_H_ */
