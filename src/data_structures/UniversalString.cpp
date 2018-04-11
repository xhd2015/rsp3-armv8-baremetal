/*
 * UniversalStrings.cpp
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#include <data_structures/UniversalString.h>
#include <data_structures/StringRef.h>

#undef _ARG_DO_GENERATE
#define _ARG_DO_GENERATE

#undef _ARG_GEN_DEFINITIONS
#define _ARG_GEN_DEFINITIONS

#undef _ARG_GEN_DECL
//#define _ARG_GEN_DECL

#undef _ARG_NAME
#define _ARG_NAME UniversalString

#undef _ARG_GLOBAL
//#define _ARG_GLOBAL

#undef _ARG_BASE_TYPE
#define _ARG_BASE_TYPE UniversalVector
#include <data_structures/GenerateString.h>
