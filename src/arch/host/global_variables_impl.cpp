/*
 * global_variables.cpp
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#include <MemoryManager.h>
#include <global_variables.h>
#include <mem_config.h>
#include <arch/host/SectorReaderHelper.h>
#include "../../../include/io/printk.h"

char koutBuf[koutBufSize];
Output kout;
MemoryManager mman{RAM_START,RAM_SIZE};
const char EMPTY_STR[1]={0};
SectorReaderHelper sys_sectorReaderHelper;

