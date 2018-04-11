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
	path.emplaceBack(vec[0].data(),vec[0].size());
	vp.cd(path);

	kout << "ls " << path[0] << ":\n";
	kout.flush();
	auto vec2 = vp.ls();
	for(size_t i=0;i!=vec2.size();++i)
		kout << vec2[i] << "\n";
	kout << "\n";

	kout << "END.\n";
	kout.flush();
	while(true);

	return 0;
}

// drive me on

