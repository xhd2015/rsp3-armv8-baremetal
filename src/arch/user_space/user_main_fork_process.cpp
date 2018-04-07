/*
 * user_main_fork_process.cpp
 *
 *  Created on: Mar 19, 2018
 *      Author: 13774
 */
#include <interrupt/svc_call.h>
#include <schedule/PidManager.h>
#include <io/Output.h>

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
		svc_call<SvcFunc::scheduleNext>(); // 主动切换到下一个就绪进程
	}else{ // child process
		kout << INFO << "in child process \n";
		kout.flush();
	}

	return 0;
}

