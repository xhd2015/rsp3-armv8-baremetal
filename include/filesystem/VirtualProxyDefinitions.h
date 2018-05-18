/*
 * VirtualProxyFunctions.h
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_VIRTUALPROXYFUNCTIONS_H_
#define INCLUDE_FILESYSTEM_VIRTUALPROXYFUNCTIONS_H_
#include <def.h>
#include <data/Vector.h>
#include <data/String.h>

enum VirtualProxyFunction{
	VP_NEW, // (nullptr,VP_NEW), 第一个参数被忽略

	VP_LS,  // (insPtr, VP_LS, VectorAddr)
	VP_CD,  // bool (insPtr, VP_CD, VectorRefAddr)
	VP_CURRENT_DIR, // (insPtr, VP_CURRENT_DIR,VirtualProxyCurrentDirHandler,proxyUserInstPtr)
	VP_GET_CONTENT, // (insPtr,  VP_GET_CONTENT,VirtualProxyContentHandler,proxyUserInstPtr,
	//                   nameRef)
	VP_MOVE,  // (insPtr, VP_MOVE, oldNameRef, newNameRef)
	VP_COPY,  // (insPtr, VP_COPY, oldNameRef, copyNameRef)
	VP_CREATE, // (insPtr, VP_CREATE, nameRef, FileType)
	VP_REMOVE,//(insPtr, VP_REMOVE,nameRef)

	VP_DELETE, // (insPtr,VP_DELETE) , delete the kernel proxy
};
// 这些函数只能接受scalar_type
using VirtualProxyLsHandler = void (*)(void *instPtr,const char *s,size_t len);
using VirtualProxyCurrentDirHandler =
		void (*)(void *instPtr,size_t sum,size_t i,const char *name,size_t namelen);
using VirtualProxyContentHandler = void (*)(void *instPtr,const char *data,size_t len);


enum FileType:uint16_t {
	F_NON_EXISTS,F_FILE,F_DIRECTORY,
	F_DEVICE, F_SUB_FILE_SYSTEM,F_ROOTFS
};
enum SubFileSystemType : uint16_t {
	FS_NONE,FS_RAMFS, FS_ROOTFS,FS_FAT12,FS_FAT16,FS_FAT32,
};

#endif /* INCLUDE_FILESYSTEM_VIRTUALPROXYDEFINITIONS_H_ */
