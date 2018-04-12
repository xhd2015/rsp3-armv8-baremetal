#include <interrupt/svc_call.h>
#include <schedule/PidManager.h>
#include <io/Output.h>
#include <filesystem/VirtualProxyUser.h>
int main()
{
	VirtualProxyUser vp;
	auto vec = vp.ls();
	kout << "ls root:\n";
	kout.flush();
	for(size_t i=0;i!=vec.size();++i)
		kout << vec[i] << "\n";
	kout << "\n";
	kout.flush();

	Vector<String> path;
	path.emplaceBack(vec[0]);
	vp.cd(path);

	kout << "ls " << path[0] << ":\n";
	kout.flush();
	auto vec2 = vp.ls();
	for(size_t i=0;i!=vec2.size();++i)
		kout << vec2[i] << "\n";
	kout << "\n";

	path.clear();
	path.emplaceBack(vec2[0]);
	kout << "cd " << path[0] << "\n";
	bool v=vp.cd(path);
	kout << "cd succeed? " << v<<"\n";
	if(v)
	{
		kout << "ls " << path[0] << "\n";
		auto vec3=vp.ls();
		for(size_t i=0;i!=vec3.size();++i)
			kout <<"\""<< vec3[i] << "\"\n";
		kout.flush();
	}

	kout << "END.\n";
	kout.flush();
	while(true);

	return 0;
}

// drive me on

