/*
 * VirtualProxyKernel.h
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_VIRTUALPROXYKERNEL_H_
#define INCLUDE_FILESYSTEM_VIRTUALPROXYKERNEL_H_
#include <memory/MemoryManager.h>
#include <filesystem/VirtualFile.h>
#include <filesystem/VirutalFileSystem.h>
#include <data/Vector.h>
#include <data/VectorRef.h>
#include <data/String.h>
#include <filesystem/VirtualProxyDefinitions.h>
#include <utility>
#include <programming/define_members.h>

// 使用内核和用户态都能理解的数据结构。
class VirtualProxyKernel{
public:
	using VirtualProxyFunction=::VirtualProxyFunction;
	VirtualProxyKernel();
	DELETE_COPY(VirtualProxyKernel);
	~VirtualProxyKernel();
	bool             cd(const VectorRef<String> * path);
	size_t           ls(VirtualProxyLsHandler handler,void *instPtr);
	bool             currentDir(VirtualProxyCurrentDirHandler handler,void *instPtr);
	bool             create(const StringRef &filename,FileType type);
	bool             move(const StringRef &filename,const StringRef &newname);
	bool             remove(const StringRef &filename);
	bool             copy(const StringRef &filename,const StringRef &copyname);
	bool             getContent(VirtualProxyContentHandler handler,void *instPtr,
								const StringRef &filename);
	bool             fileExists(const StringRef &filename);

	/**
	 * savedRegs[0] 作为insPtr
	 * savedRegs[1] 作为功能参数
	 * @param savedRegs
	 * @return
	 */
	static uint64_t    handleVFSProxySVC(uint64_t * savedRegs);
private:
	VirtualFile   *_curFile;// 当其为nullptr时认为与root等价
};





#endif /* INCLUDE_FILESYSTEM_VIRTUALPROXYKERNEL_H_ */
