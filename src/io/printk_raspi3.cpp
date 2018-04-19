/*
 * printk_raspi3.cpp
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#include <io/Output.h>
#include <driver/uart/PL011.h>

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


