/*
 * Shell.h
 *
 *  Created on: May 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_USER_SHELL_H_
#define INCLUDE_USER_SHELL_H_
#include <data/String.h>
#include <filesystem/VirtualProxyUser.h>
/**
 * 	shell执行的命令：
 * 	   主要分为两大类：内置命令和非内置命令
 * 	命令的执行方式：
 * 		在原来的进程中执行
 * 		在新进程中执行
 * 		通过shell，可以强制在新进程中执行命令
 * 	shell是一个执行环境，可以有两种执行方式：REPL 和 执行一次命令即退出
 * 	shell的退出状态为最后一次执行的命令退出状态
 */
class Shell{
public:
	Shell();
	void run(int argc,char *argv[]);
	void repl();
	/**
	 * 执行命令
	 * @param line   原始的输入字符串
	 * @param cmd    经过解析的命令及参数
	 */
	void execute(String &line,Vector<String> &cmd);
	void execute(int argc,char *argv[]);
	bool ensureEnoughArgument(size_t expect,size_t real,const char *prompt);
	AS_MACRO int  exitCode()const { return _exitCode;}
private:
	int        _exitCode;
	bool       _exitRepl;
	VirtualProxyUser _vp;
};



#endif /* INCLUDE_USER_SHELL_H_ */
