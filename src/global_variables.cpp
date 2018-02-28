/*
 * global_variables.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <def.h>
#include <MemoryManager.h>
#include <global_variables.h>
#include <mem_config.h>
#include <printk.h>
#include <new>


char koutBuf[koutBufSize];
const char EMPTY_STR[]={0};
Output kout;
//const char * INFO = "[INFO] ";
//const char * WARNING = "[WARNING] ";
//const char * FATAL = "[FATAL] ";

MemoryManager mman{RAM_START,RAM_SIZE};

#ifndef TARGET_DO_NOT_NEED_VARIABLE_INIT
void globalVariablesInit()
{
	new (&mman) MemoryManager(RAM_START,RAM_SIZE);
	new (&kout) Output();
}
#endif
