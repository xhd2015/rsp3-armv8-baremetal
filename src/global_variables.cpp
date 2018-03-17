/*
 * global_variables.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <def.h>
#include <memory/MemoryManager.h>
#include <io/Output.h>
#include <memory/mem_config.h>
#include <new>
#include <schedule/PidManager.h>



char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[]={0};
Output kout;

MemoryManager mman{RAM_START,RAM_SIZE};
PidManager pidManager;

