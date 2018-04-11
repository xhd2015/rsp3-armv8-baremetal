/*
 * String2.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_STRING_H_
#define INCLUDE_DATA_STRUCTURES_STRING_H_

#include <data_structures/Vector.h>

#undef _ARG_DO_GENERATE
#define _ARG_DO_GENERATE

#undef _ARG_GEN_DEFINITIONS
#define _ARG_GEN_DECL

#undef _ARG_NAME
#define _ARG_NAME String

#undef _ARG_BASE_TYPE
#define _ARG_BASE_TYPE Vector

#undef _ARG_GLOBAL
#define _ARG_GLOBAL
#include <data_structures/GenerateString.h>



#endif /* INCLUDE_DATA_STRUCTURES_STRING_H_ */
