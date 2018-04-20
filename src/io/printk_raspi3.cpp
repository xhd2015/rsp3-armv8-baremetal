/*
 * printk_raspi3.cpp
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#include <io/Output.h>
#include <driver/uart/PL011.h>
#include <generic/cpu.h>
// _FIXME FIXED 为什么一定需要delay操作？如果这里需要，那么其他地方是否也需要呢？
//		 虚拟内存启用之后，这里并没有正确设置，写入总是会覆盖先前的字符，导致输出不完整;
size_t printk(char ch)
{
	pl011.writeDataBlocked(ch);
	return 1;
//	while(!miniUART.sendReady());
////	miniUART.write(ch=='\n'?'\r':ch);//'\n'可能显示不正确
//	miniUART.write(ch);// 注：需要设置PuTTY的 "Implicity CR in every LF", 因为\n只是换行，\r只是回车。
//	return 1;
}
void flush()
{

}


