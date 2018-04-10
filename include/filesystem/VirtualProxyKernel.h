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
#include <data_structures/Vector.h>
#include <data_structures/VectorRef.h>
#include <data_structures/String.h>
#include <filesystem/VirtualProxyDefinitions.h>
#include <utility>
#include <programming/define_members.h>

// 使用内核和用户态都能理解的数据结构。
class VirtualProxyKernel{
public:
	using VirtualProxyFunction=::VirtualProxyFunction;
	VirtualProxyKernel(MemoryManager &mman);
	DELETE_COPY(VirtualProxyKernel);
	~VirtualProxyKernel();
	bool             cd(const VectorRef<String> &path);
	size_t           ls(Vector<String> &res,
			VirtualProxyVectorResizeCapacityOp opPtr,
			VirtualProxyStringResizeOp strResizer);

	/**
	 * savedRegs[0] 作为insPtr
	 * savedRegs[1] 作为功能参数
	 * @param savedRegs
	 * @return
	 */
	static uint64_t    handleVFSProxySVC(uint64_t * savedRegs);
private:
	MemoryManager &_mman;
	VirtualFile   *_curFile;// 当其为nullptr时认为与root等价
};





#endif /* INCLUDE_FILESYSTEM_VIRTUALPROXYKERNEL_H_ */
