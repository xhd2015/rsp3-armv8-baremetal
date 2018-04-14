#include <io/Output.h>
#include <new>
#include <generic/cpu.h>
int main()
{
	new (&miniUART) BCM2835MiniUART(UART_BASE);
//	miniUART.init(); // 这一步没有必要，如果调用的话反而不能输出

	while(true)
	{
		kout << "Hello raspi3\n";
		delayCPU(1000*1000); // 经过测定，这样的发送速率刚好符合人的测试需要。
	}
	return 0;
}
