/*
 * init.cpp
 *
 *  Created on: Mar 13, 2018
 *      Author: 13774
 */

#include <def.h>
#include <memory/VirtualAddress.h>
#include <new>
#include <schedule/schedule_forward.h>
#include <runtime_def.h>
#include <io/IntegerFormatter.h>

// DOCME 不能使用exit作为退出名称
extern void destroy(int errCode);
extern int main(int argc,char *argv[]);

extern char freeRamStart[];
extern char freeRamEnd[];

// bssStart必然是8字节对齐的，为了最大效率的将它们置零
extern uint64_t bssStart[];
extern uint64_t bssEnd[];

__attribute__((section(".text.init")))
void init(Pid pid,int argc,char *argv[])
{
	// ==== must be first
	// 清空bss区
	for(uint64_t len=bssEnd-bssStart,i=0;i!=len;++i)
		bssStart[i]=0;

	::pid=pid;

	new (&mman) MemoryManager(reinterpret_cast<void*>(freeRamStart),
			freeRamEnd-freeRamStart,false);
	new (&chWriter) UserSpaceCharacterWriter(100);
	new (&chReader) UserSpaceCharacterReader();
	new (&inputBuffer) Queue<uint16_t>(512);
	new (&kout) Output(&chWriter);
	new (&kin)  Input(&chReader);

	kout << INFO << "freeRamStart = " <<
			Hex(reinterpret_cast<uint64_t>(freeRamStart)) << "\n";
	kout << INFO << "freeRamSize = " <<
			Hex(freeRamEnd - freeRamStart) << "\n";
	if(argc>0)
		kout << INFO << "process name = " << argv[0] << "\n";
	kout << INFO << "init, pid = " << pid << "\n";

	int res=main(argc,argv);
	destroy(res);
}

