/*
 * user_main_fork_process.cpp
 *
 *  Created on: Mar 19, 2018
 *      Author: 13774
 */
#include <interrupt/svc_call.h>
#include <schedule/PidManager.h>
#include <io/Output.h>
// 待实现的命令： ls,cd,cat,mkdir,echo,rmdir,rm,pid,ppid,exit,shutdown,reboot
//   简单： echo, pid, ppid,exit
//   文件系统：ls,cat,mkdir,rmdir,rm
//   管理：shutdown reboot
int main()
{
	Pid pid = svc_call<SvcFunc::fork>();
	if(pid == PID_INVALID)
	{
		kout << FATAL << "fork failed\n";
		kout.flush();
		return 1;
	}else if(pid != PID_CURRENT){ //  parent process
		kout << INFO << "in parent process, child process id = " << pid << " \n";
		kout.flush();
	}else{ // child process
		kout << INFO << "in child process \n";
		kout.flush();
	}

	kout << "END:" << pid <<"\n";
	kout.flush();
	while(true);

	return 0;
}

// drive me on

