/*
 * VirutalFileSystem.h
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_VIRUTALFILESYSTEM_H_
#define INCLUDE_FILESYSTEM_VIRUTALFILESYSTEM_H_

#include <filesystem/VirtualFile.h>
#include <runtime_def.h>

// 实现通常是树结构
// 定义 路径寻址方式
class VirtualFileSystem{
public:
	VirtualFileSystem();
	~VirtualFileSystem();
	/**
	 * 重新设置基地址
	 * @param offset
	 */
	void   rebase(size_t offset);
	VirtualFileSystem(const VirtualFileSystem &rhs)=delete;
	VirtualFileSystem & operator=(const VirtualFileSystem &rhs)=delete;
	AS_MACRO void addRootFile(VirtualFile *file){ _root->addFile(file);}
	AS_MACRO VirtualFile * findRootFile(const String &name){return _root->findFile(name);}
	AS_MACRO VirtualFile * findRootFile(const VectorRef<String> &path){ return _root->findFile(path);}
private:
	VirtualFile *_root;
};

#ifndef _NOT_NEED_VirtualFileSystem
extern VirtualFileSystem vfs;
#endif


#endif /* INCLUDE_FILESYSTEM_VIRUTALFILESYSTEM_H_ */
