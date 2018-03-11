

#include <arch/common_aarch64/exception/svc_call.h>
#include <asm_instructions.h>
#include <arch/common_aarch64/system_common_registers.h>

// 将该分区链接到用户空间
__attribute__((section(".text.main")))
int main()
{
	auto num=svc_call(SvcFunc::puts, reinterpret_cast<uint64_t>("Hello Kernel\n"),0);

	(void)num;
	while(true);
	return 0;
}
