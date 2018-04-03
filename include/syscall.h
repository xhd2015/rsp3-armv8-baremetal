/*
 * syscall.h
 *
 *  Created on: Mar 8, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SYSCALL_H_
#define INCLUDE_SYSCALL_H_
#include <def.h>
#include <asm_instructions.h>


// 任何位域，
// RES0,RES1标准属性
//   updateRead() 返回引用
// "NamePrefix","default" // 默认添加reg

// 系统调用
class Syscalls{
public:
	enum CallType{Allocate, Puts};

	// allocate a block of memory,with optional alignment
	static void * allocate(size_t size, size_t alignment = sizeof(size_t))
	{

	}

	// print something and return the printed number of characters
	static size_t puts(const char * s)
	{
		FORCE_CODE_COHERENT_WITH_VIEW();
		return syscall(Allocate,reinterpret_cast<size_t>(s));
	}
private:
	// a system call accepts at most 5 arugments, if one type of call accepts less than that, all the rest are treated as RES0
	// the return value must be size_t type, its meaning is either a number or a pointer to the final result.
	static size_t syscall(CallType type,size_t arg1=0,size_t arg2=0,size_t arg3=0,size_t arg4=0,size_t arg5=0);
};


#endif /* INCLUDE_SYSCALL_H_ */
