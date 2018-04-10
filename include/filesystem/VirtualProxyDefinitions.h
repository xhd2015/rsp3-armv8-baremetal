/*
 * VirtualProxyFunctions.h
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_FILESYSTEM_VIRTUALPROXYFUNCTIONS_H_
#define INCLUDE_FILESYSTEM_VIRTUALPROXYFUNCTIONS_H_
#include <def.h>
#include <data_structures/Vector.h>
#include <data_structures/String.h>

enum VirtualProxyFunction{
	VP_NEW, // (nullptr,VP_NEW), 第一个参数被忽略
	VP_LS,  // (insPtr, VP_LS, VectorAddr)
	VP_CD,  // (insPtr, VP_CD, VectorRefAddr)
	VP_DELETE, // (insPtr,VP_DELETE)
};
// 用于为res新增空间
using VirtualProxyVectorResizeCapacityOp = bool (*)(Vector<String> &res,size_t newCapacity);
using VirtualProxyStringResizeOp = bool (*)(String &s,size_t newSize);


#endif /* INCLUDE_FILESYSTEM_VIRTUALPROXYDEFINITIONS_H_ */
