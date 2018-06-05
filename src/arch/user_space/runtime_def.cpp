/*
 * runtime_def.cpp
 *
 *  Created on: Apr 20, 2018
 *      Author: 13774
 */

#include <runtime_def.h>



//IO
UserSpaceCharacterReader chReader;
UserSpaceCharacterWriter chWriter {0};
Output      kout {nullptr};
Input       kin {nullptr};
char formatBuf[FORMAT_BUF_SIZE] {0}; // 初始化为0


// memory
MemoryManager mman {nullptr,0,true};

// EMPTY_STR
const char EMPTY_STR[1]={0};

// 进程
Pid     pid=0;
