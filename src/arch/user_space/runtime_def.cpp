/*
 * runtime_def.cpp
 *
 *  Created on: Apr 20, 2018
 *      Author: 13774
 */

#include <runtime_def.h>



//IO
Output      kout;
char koutBuf[koutBufSize]={0};
Queue<uint16_t> inputBuffer{512};
Input       kin;

// memory
MemoryManager mman {nullptr,0,true};

// EMPTY_STR
const char EMPTY_STR[1]={0};

// 进程
Pid     pid=0;
