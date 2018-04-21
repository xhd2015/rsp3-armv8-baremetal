#include <interrupt/svc_call.h>
#include <schedule/PidManager.h>
#include <filesystem/VirtualProxyUser.h>
#include <data/Queue.h>
#include <runtime_def.h>
// Read-Evaluate-Print-Loop(REPL)
//  实现一些常见的管理命令，如ls,cd,pwd,exit等，具体参见代码
int main()
{
	kout << INFO << "Process main\n";
	new (&inputBuffer) Queue<uint16_t>(512);
	VirtualProxyUser vp;
	String line;
	Vector<String> parsed;
	while(true)
	{
		kout << "$";
		kout.flush();
		line=kin.readline();
		line.popBack();// 去除换行符
//		parsed=line.split(" "); // TODO split有bug
		parsed.clear();
		size_t i=0;
		while(true)
		{
			bool hasNewWord=false;
			while(i<line.size() && (line[i]==' ' || line[i]=='\t')) // 遇到空白符，必然增加word
			{
				++i; // 跳过所有的空白符
				hasNewWord=true;
			}
			if(i==line.size())break;
			if(hasNewWord || parsed.size()==0)//如果是首次，则必须增加空间
				parsed.emplaceBack();
			parsed.last().pushBack(line[i++]);
		}
		bool good=true;
		if(parsed.size()>0)
		{
			auto &cmd=parsed[0];
			if(cmd=="ls")
			{
				auto vec=vp.ls();
				for(size_t i=0;i!=vec.size();++i)
				{
					kout << vec[i];
					if(i%4==0 || i==vec.size()-1)
						kout << "\n";
					else
						kout << " ";
				}
			}else if(cmd=="cd"){
				assert(parsed.size()==2);
				good=vp.cd(parsed[1]);
			}else if(cmd=="pwd"){

			}else if(cmd=="shutdown"){
				// 关机
			}else if(cmd=="reboot"){

			}else if(cmd=="pid"){
				kout << pid << "\n";
			}else if(cmd=="ppid"){

			}else if(cmd=="echo"){
				size_t i=line.findFirst(0, ' ');
				if(i!=SIZE_MAX)
				{
					kout.print(line.data()+i+1,line.size() - i -1);
					kout << "\n";
				}
			}else if(cmd=="exit"){//进程退出
				break;
			}else{
				good=false;
				kout << FATAL << "unkown command:\""<< cmd << "\"\n";
			}
		}
		if(!good)
			kout << WARNING << "`" << line << "` failed\n";

		kout.flush();
	}

	kout << "exit.\n";

	kout.flush();//将所有的输出刷新
	return 0;
}
