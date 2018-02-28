/*
 * util.h
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_AARCH64_UTIL_H_
#define INCLUDE_ARCH_AARCH64_UTIL_H_
#include <def.h>
AS_MACRO void CPUWaitForEvent()
{
	__asm__ ("wfe \n\t");
}

#endif /* INCLUDE_ARCH_AARCH64_UTIL_H_ */
