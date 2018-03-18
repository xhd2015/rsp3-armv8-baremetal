/*
 * init.cpp
 *
 *  Created on: Mar 13, 2018
 *      Author: 13774
 */

#include <def.h>
#include <kernel.h>
#include <arch/common_aarch64/mmu/VirtualAddress.h>
#include <memory/MemoryManager.h>
#include <schedule/Process.h>
#include <io/Output.h>
#include <new>

extern void destroy(int errCode);
extern int main();

// user_space所提供的全局变量
// 在代码中重新初始化
MemoryManager mman(0,0);
const char EMPTY_STR[1]={0};

// prink相关的
char koutBuf[koutBufSize];
Output kout;

extern char freeRamStart[];
extern char freeRamEnd[];

// bssStart必然是8字节对齐的，为了最大效率的将它们置零
extern uint64_t bssStart[];
extern uint64_t bssEnd[];

__attribute__((section(".text.init")))
void init()
{
	// 清空bss区
	for(uint64_t len=bssEnd-bssStart,i=0;i!=len;++i)
		bssStart[i]=0;

	// 初始化全局mman
	auto adjVa = reinterpret_cast<char*>(alignNext(reinterpret_cast<uint64_t>(freeRamStart), MemoryManager::MINIMAL_ALIGNMENT));

	new (&mman) MemoryManager(reinterpret_cast<void*>(adjVa),freeRamEnd-adjVa,true);
	new (&kout) Output();


	int res=main();
	destroy(res);
}

