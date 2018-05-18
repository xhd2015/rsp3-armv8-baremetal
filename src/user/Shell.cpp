/*
 * Shell.cpp
 *
 *  Created on: May 17, 2018
 *      Author: 13774
 */

#include <user/Shell.h>
#include <schedule/schedule_forward.h>
#include <runtime_def.h>
#include <interrupt/svc_call.h>
#include <generic/cpu.h>
#include <schedule/Process.h>

Shell::Shell()
	:_exitCode(0),
	 _exitRepl(false),
	 _vp()
{}

void Shell::run(int argc,char *argv[])
{
	if(argc>=2)
	{
		execute(argc - 1, argv + 1);
	}
	else if(argc==1)
	{
		// 将当前进程设置为输入进程
//		svc_call<SvcFunc::setInputCatcher>(static_cast<uint64_t>(PID_CURRENT));
		// 允许输入
		uint64_t args[][2] = {
				{Process::ARG_CATCH_INPUT,true},
				{Process::ARG_INPUT_BUFFER_PTR, reinterpret_cast<uint64_t>(&inputBuffer)}
		};
		svc_call<SvcFunc::setProcessArgument>(
				PID_CURRENT,
				arrsizeof(args),
				reinterpret_cast<uint64_t>(args));
		repl();
	}
}
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
			if(ensureEnoughArgument(2, cmd.size(), "argument not enough"))
			{
				_exitCode = !(_vp.cd(cmd[1]));
			}
		}else if(c=="mkdir"){
			if(ensureEnoughArgument(2, cmd.size(), "argument not enough"))
			{
				_exitCode = !(_vp.create(cmd[1], FileType::F_DIRECTORY));
			}
		}else if(c=="rm"){
			if(ensureEnoughArgument(2, cmd.size(), "argument not enough"))
			{
				_exitCode = !(_vp.remove(cmd[1]));
			}
		}else if(c=="cat"){
			if(ensureEnoughArgument(2, cmd.size(), "argument not enough"))
			{
				String content;
				_exitCode = !_vp.getContent(cmd[1], content);
				if(_exitCode==0)
				{
					kout << content;
					if(content.size()==0 || content.last()!='\n'||content.last()!='\r')
						kout << "\n";
				}
			}
		}else if(c=="cp"){
			if(ensureEnoughArgument(3, cmd.size(), "argument not enough"))
			{
				_exitCode = !(_vp.copy(cmd[1],cmd[2]));
			}
		}else if(c=="mv"){
			if(ensureEnoughArgument(3, cmd.size(), "argument not enough"))
			{
				_exitCode = !(_vp.move(cmd[1],cmd[2]));
			}
		}else if(c=="pwd"){
			if(ensureEnoughArgument(1, cmd.size(), "argument not enough"))
			{
				Vector<String> res;
				_exitCode = !(_vp.currentDir(res));
				if(_exitCode==0)
				{
					if(res.size()==0)
						kout << "/";
					else
						for(size_t i=0;i!=res.size();++i)
						{
							kout << "/" << res[i];
						}
					kout << "\n";
				}
			}
		}else if(c=="shell" || c=="bg" ){
			VectorRef<String> args(cmd);
			uint64_t fg_or_bg=0;
			if(c=="bg")
				fg_or_bg=1;
			auto shellpid = static_cast<Pid>(
					svc_call<SvcFunc::createShell>(
							reinterpret_cast<uint64_t>(&args),fg_or_bg)
					);
			if(shellpid==PID_INVALID)
				_exitCode=1;
			else
				kout << "created shell pid:"<<shellpid<<"\n";
		}else if(c=="sleep"){
			if(ensureEnoughArgument(2, cmd.size(), "argument not enough"))
			{
				bool failed=false;
				size_t n=stoi(cmd[1].data(),cmd[1].size(), &failed);
				if(!failed)
				{
					delayMS(n);
				}else{
					_exitCode=1;
				}
			}
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
				 // FIXME 完善ppid,shutdown,reboot等命令
				 //<< "    " << "ppid          -- show parent process id\n"
				 //<< "    " << "shutdown      -- power off \n"
				 //<< "    " << "reboot        -- reboot the computer\n"
				 << "    " << "mkdir  DIR    -- create a directory\n"
				 << "    " << "rm     FILE   -- remove a file or directory \n"
				 << "    " << "cat    FILE   -- print the content of a file\n"
				 << "    " << "cp     F1 F2  -- copy file \n"
				 << "    " << "mv     F1 F2  -- move or change filename \n"
				 << "    " << "shell  CMD    -- execute command in new shell\n"
				 << "    " << "bg     CMD    -- execute command in new shell,background \n"
				 << "    " << "sleep  MS     -- sleep current process for time in ms\n"
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

bool Shell::ensureEnoughArgument(size_t expect,size_t real,const char *prompt)
{
	if(real < expect)
	{
		kout << FATAL << prompt << "\n";
		_exitCode=1;
		return false;
	}
	return true;
}

