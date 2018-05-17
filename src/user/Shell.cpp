/*
 * Shell.cpp
 *
 *  Created on: May 17, 2018
 *      Author: 13774
 */

#include <user/Shell.h>
#include <schedule/schedule_forward.h>
#include <runtime_def.h>

Shell::Shell()
	:_exitCode(0),
	 _exitRepl(false),
	 _vp()
{}
void Shell::repl()
{
	while(!_exitRepl)
	{
		kout << "$";
		kout.flush();
		String line=kin.readline();
		line.popBack();// 去除换行符
		Vector<String> parsed = line.splitByChars(" \t");
		execute(line, parsed);
	}
}
void Shell::execute(String &line,Vector<String> &cmd)
{
	_exitCode=0;
	if(cmd.size()>0)
	{
		auto &c=cmd[0];
		if(c=="ls")
		{
			auto vec=_vp.ls();
			for(size_t i=0;i!=vec.size();++i)
			{
				kout << vec[i];
				if(i%4==0 || i==vec.size()-1)
					kout << "\n";
				else
					kout << " ";
			}
		}else if(c=="cd"){
			assert(cmd.size()==2);
			_exitCode = !(_vp.cd(cmd[1]));
		}else if(c=="mkdir"){
		}else if(c=="rm"){
		}else if(c=="rmdir"){
		}else if(c=="cat"){
		}else if(c=="cp"){
		}else if(c=="mv"){
		}else if(c=="pwd"){

		}else if(c=="shutdown"){
			// 关机
		}else if(c=="reboot"){

		}else if(c=="pid"){
			kout << pid << "\n";
		}else if(c=="ppid"){

		}else if(c=="echo"){
			size_t i=line.findFirst(0, ' ');
			if(i!=SIZE_MAX)
			{
				kout.print(line.data()+i+1,line.size() - i -1);
				kout << "\n";
			}
		}else if(c=="exit"){//进程退出
			_exitRepl=true;
			return;
		}else if(c=="help"){
			kout << "supported commands:\n";
			kout << "    " << "help          -- show this message\n"
				 << "    " << "ls            -- list files/dirs \n"
				 << "    " << "cd  DIR       -- change working directory\n"
				 << "    " << "pwd           -- show working directory\n"
				 << "    " << "echo STRING   -- print whatever input\n"
				 << "    " << "exit          -- exit this program and destroy the process\n"
				 << "    " << "pid           -- show process id \n"
				 << "    " << "ppid          -- show parent process id\n"
				 << "    " << "shutdown      -- power off \n"
				 << "    " << "reboot        -- reboot the computer\n"
				 << "    " << "mkdir  DIR    -- create a directory\n"
				 << "    " << "rm     FILE   -- remove a file \n"
				 << "    " << "rmdir  DIR    -- remove an empty directory\n"
				 << "    " << "cat    FILE   -- print the content of a file\n"
				 << "    " << "cp     F1 F2  -- copy file \n"
				 << "    " << "mv     F1 F2  -- move or change filename \n"
				 << "    " << "shell  CMD    -- execute command in new shell\n"
				 << "[1] Please note, this program is designed specifically for raspberry pi,the OS development details can be found at https://github.com/xhd2015/rsp3-armv8-baremetal\n"
				 << "[2] Please note, some commands are currently not implemented but surely will soon be realized\n";
		}else{
			_exitCode=1;
			kout << FATAL << "unkown command:\""<< c << "\"\n";
		}
	}
	if(_exitCode!=0)
		kout << WARNING << "`" << line << "` failed\n";

	kout.flush();
}

void Shell::execute(int argc,char *argv[])
{
	if(argc>0)
	{
		String line;
		Vector<String> args;
		for(int i=0;i!=argc;++i)
		{
			line.append(argv[i]);
			if(i<argc-1)
				line.append(" ");
			args.emplaceBack(argv[i]);
		}
		execute(line, args);
	}
}

