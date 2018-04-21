/*
 * MemoryDebugger.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */


#include <debug/MemoryDebugger.h>
#include <io/Input.h>
#include <io/Output.h>
#include <data/Vector.h>
#include <generic/error.h>
#include <generic_util.h>
#include <arch/common_aarch64/registers/system_common_registers.h>


#define SizeType1 uint8_t
#define SizeType2 uint16_t
#define SizeType4 uint32_t
#define SizeType8 uint64_t
#define MATCH_CASE(n,what) \
	case n: \
	{ \
		what ; \
		break;\
	}
#define DUMP_MEM(p,n) \
		kout << Hex(*reinterpret_cast<const SizeType##n*>(p)) << "\n"
#define WRITE_MEM(p,n,v) \
		*reinterpret_cast<SizeType##n*>(p)=static_cast<SizeType##n>(v)

const char *  const MemoryDebugger::REG_NAME_MAP[] __attribute__((section(".relocptr"))) ={
		"general",
		"vbar",
		"currentel",
};

int MemoryDebugger::mainloop(const String &prompt)
{
	String spaceChars="\t ";
	int   status=0;
	while(true)
	{
		status=0;
		kout << prompt;
		kout.flush();
		String line = kin.readline();
		line.popBack(); // 去除换行符
		auto   words = line.splitByChars(spaceChars);
		if(words.size() > 0)
			status=executeCommand(words);

		// 唯一的退出路径
		if(status == ARG_NOT_ENOUGH)
			kout << FATAL << "argument not enough \n";
		else if(status == INVALID_COMMAND)
			kout << FATAL << "unknow command" << "\n";
		else if(status==EXIT)
		{
			status=0;
			break;
		}else if(status!=0)//other failed
			kout << FATAL << "command failed\n";

		kout.flush();
	}
	kout.flush();
	return status;
}


int MemoryDebugger::executeCommand(const Vector<String> & cmd)
{
	assert(cmd.size() > 0);
//	kout << INFO << "MemoryDebugger execute command" << cmd[0] << "\n";
	if(cmd[0]=="read")
	{
		if(cmd.size() < 2) // has default
			return ARG_NOT_ENOUGH;
		if(!parseAddr(cmd[1]))
			return 1;
		const void *p = reinterpret_cast<const void*>(_val);
		if(!parseOptional(cmd, 2,8))
			return 1;
		size_t len = _val;
		return executeRead(p, len);
	}else if(cmd[0]=="write"){
		if(cmd.size() < 3)
			return ARG_NOT_ENOUGH;
		if(!parseAddr(cmd[1]))
			return 1;
		void * ptr = reinterpret_cast<void*>(_val);
		if(!parseUnsigned(cmd[2]))
			return 1;
		size_t val=_val;
		if(!parseOptional(cmd, 3, 8))
			return 1;
		size_t len=_val;
		return executeWrite(ptr, val, len);
	}else if(cmd[0]=="dumpreg"){
		if(cmd.size() < 2)
			return ARG_NOT_ENOUGH;
		bool failed=false;
		size_t index=stoi(cmd[1].data(),cmd[1].size(), &failed);
		if(failed)
		{
			for(index=0;index!=arrsizeof(REG_NAME_MAP);++index)
				if(REG_NAME_MAP[index]==cmd[1])
					break;
			if(index==arrsizeof(REG_NAME_MAP))
				return 1;
		}
		return executeDumpReg(static_cast<RegName>(index),0);
	}else if(cmd[0]=="base"){
		if(cmd.size() < 2)
		{
			kout << Hex(_base) << "\n";
			return 0;
		}else if(!parseUnsigned(cmd[1]))
			return 1;
		_base = _val;
		return 0;
	}else if(cmd[0]=="len"){
		if(cmd.size() < 2){
			kout << Hex(_len) << "\n";
			return 0;
		}else if(!parseUnsigned(cmd[1])){
			return 1;
		}
		if(_val!=8 && _val!=4 && _val!=2 && _val!=1)
			return 1;
		_len = _val;
		return 0;
	}else if(cmd[0]=="help"){
		kout << "Commands: read, write, dumpreg, help,exit, base,len \n";
		return 0;
	}else if(cmd[0]=="exit"){
		return EXIT;
	}else{
		return INVALID_COMMAND;
	}
}

int MemoryDebugger::executeRead(const void *p,size_t length)
{
	switch(length)
	{
		MATCH_CASE(1,DUMP_MEM(p,1))
		MATCH_CASE(2,DUMP_MEM(p,2))
		MATCH_CASE(4,DUMP_MEM(p,4))
		MATCH_CASE(8,DUMP_MEM(p,8))
	default:
		kout << "invalid bits length\n";
		return 1;
	}
	return 0;
}
int MemoryDebugger::executeWrite(void *p,size_t val,size_t length)
{
	switch(length)
	{
		MATCH_CASE(1,WRITE_MEM(p,1,val))
		MATCH_CASE(2,WRITE_MEM(p,2,val))
		MATCH_CASE(4,WRITE_MEM(p,4,val))
		MATCH_CASE(8,WRITE_MEM(p,8,val))
	default:
		kout << "invalid bits length\n";
		return 1;
	}
	return 0;
}
int MemoryDebugger::executeDumpReg(RegName name, size_t optArg)
{
	switch(name)
	{
	case R_GENERAL:
	{
		kout << "Unimplemented\n";
		break;
	}
	case R_VBAR:
	{
		RegVBAR_EL1::read().dump();
		break;
	}
	default:
	{
		kout << "Unimplented\n";
		return 1;
	}
	}
	return 0;
}
bool MemoryDebugger::parseAddr(const String &s)
{
	bool failed=false;
	if(s.startswith('*'))
		_val=stoi(s.data()+1, s.size() -1 , &failed);
	else
		_val=_base + stoi(s.data() ,s.size(), &failed);
	return !failed;
}

bool MemoryDebugger::parseUnsigned(const String &s)
{
	bool failed=false;
	_val=stoi(s.data(),s.size(),&failed);
	return !failed;
}

bool MemoryDebugger::parseOptional(const Vector<String> &s, size_t index,size_t defaultVal)
{
	if(index >= s.size())
	{
		_val=defaultVal;
		return true;
	}
	bool failed=false;
	_val = stoi(s[index].data(), s[index].size(), &failed);
	return !failed;

}

