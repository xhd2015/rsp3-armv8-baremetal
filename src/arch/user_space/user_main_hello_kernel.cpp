//
#include <asm_instructions.h>
#include <arch/common_aarch64/system_common_registers.h>
#include <interrupt/svc_call.h>
#include <memory/MemoryManager.h>
#include <IntegerFormatter.h>


int main()
{
	// 一个svc(supervisor call, 系统调用)示例
	auto num=svc_call<SvcFunc::puts>(reinterpret_cast<uint64_t>("Hello Kernel\n"),0);

	// 使用kout进行输出
	kout << "Using kout to ouput, num = " << Hex(num) << "\n";
	kout.flush();

	void *p=mman.allocate(100);
	kout << "allocated != nullptr?" << (p!=nullptr) << "\n";
	kout.flush();

	mman.deallocate(p);
	return 0;
}
