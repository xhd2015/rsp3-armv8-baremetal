

#include <arch/common_aarch64/exception/svc_call.h>
#include <asm_instructions.h>
#include <arch/common_aarch64/system_common_registers.h>
#include <memory/MemoryManager.h>
#include <IntegerFormatter.h>

// 将该分区链接到用户空间
__attribute__((section(".text.main")))
int main()
{
	// 一个示例
	auto num=svc_call(SvcFunc::puts, reinterpret_cast<uint64_t>("Hello Kernel\n"),0);

	kout << "Using kout to ouput, num = " << Hex(num) << "\n";
	kout.flush();

	void *p=mman.allocate(100);
	kout << "allocated != nullptr?" << (p!=nullptr) << "\n";
	kout.flush();

	(void)num;
	while(true);
	return 0;
}
