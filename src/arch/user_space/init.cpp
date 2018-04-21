/*
 * init.cpp
 *
 *  Created on: Mar 13, 2018
 *      Author: 13774
 */

#include <def.h>
#include <memory/MemoryManager.h>
#include <schedule/Process.h>
#include <io/Output.h>
#include <memory/VirtualAddress.h>
#include <new>
#include <schedule/schedule_forward.h>
#include <runtime_def.h>

// DOCME 不能使用exit作为退出名称
extern void destroy(int errCode);
extern int main();

// user_space所提供的全局变量
// 在代码中重新初始化
//MemoryManager mman(0,0);
//const char EMPTY_STR[1]={0};
//
//// prink相关的
//char koutBuf[koutBufSize];
//Output kout;

extern char freeRamStart[];
extern char freeRamEnd[];

// bssStart必然是8字节对齐的，为了最大效率的将它们置零
extern uint64_t bssStart[];
extern uint64_t bssEnd[];

__attribute__((section(".text.init")))
void init(Pid pid)
{
	// ==== must be first
	// 清空bss区
	for(uint64_t len=bssEnd-bssStart,i=0;i!=len;++i)
		bssStart[i]=0;

	::pid=pid;

	new (&mman) MemoryManager(reinterpret_cast<void*>(freeRamStart),
			freeRamEnd-freeRamStart,true);
	new (&kout) Output();

	kout << INFO << "init, pid = " << pid << "\n";

	int res=main();
	destroy(res);
}

