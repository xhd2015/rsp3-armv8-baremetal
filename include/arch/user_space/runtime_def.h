/*
 * runtime_def.h
 *
 *  Created on: Apr 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_USER_SPACE_RUNTIME_DEF_H_
#define INCLUDE_ARCH_USER_SPACE_RUNTIME_DEF_H_

//io
#include <data/Queue.h>
#include <io/Output.h>
#include <io/Input.h>
#include <io/char/UserSpaceCharacterReader.h>
#include <io/char/UserSpaceCharacterWriter.h>
// memory
#include <memory/MemoryManager.h>

//io
extern Queue<uint16_t> inputBuffer;
extern UserSpaceCharacterReader chReader;
extern UserSpaceCharacterWriter chWriter;

//进程
#include <schedule/schedule_forward.h>
extern Pid     pid;



#endif /* INCLUDE_ARCH_USER_SPACE_RUNTIME_DEF_H_ */
