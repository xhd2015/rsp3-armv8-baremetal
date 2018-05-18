/*
 * VirtualFileSystem.cpp
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */
#include <filesystem/VirutalFileSystem.h>
#include <memory/MemoryManager.h>
#include <io/Output.h>
#include <asm_instructions.h>

VirtualFileSystem::VirtualFileSystem()
	:_root( new VirtualFile(""))
{
	if(!_root)
	{
		kout << FATAL << "VirtualFileSystem init failed\n";
		asm_wfi_loop();
	}
}

VirtualFileSystem::~VirtualFileSystem()
{
	if(_root)
	{
		delete _root;
	}
}

void   VirtualFileSystem::rebase(size_t offset)
{
	if(_root)
		_root = reinterpret_cast<VirtualFile*>(reinterpret_cast<char*>(_root) + offset);
}

