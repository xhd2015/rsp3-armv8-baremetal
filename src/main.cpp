/*
#include <generic_util.h>

 * main.cpp
 *
 *  Created on: Jan 28, 2018
 *      Author: 13774
 */

#include <printk.h>
#include <generic_util.h>
#include <test/test_base.h>

int main()
{
	//	printk("Waiting for connecting....\n");
	kout << "Waiting for connecting ...";


	delayCPU(10, 0xfffff); //等待将树莓派连上
//	printk("Started...\n");
	kout << "Startd...\n";
	//**====BEGINNING OF USER CODE====**//



//	testMemoryManager();
	testFAT32SizeIsSecSize();


	//**====THE END OF USER CODE====**//

	kout << "Going to infinite loop...\n";
//	printk("Going to infinite loop...\n");

	haltCPU();
//	while(true)
//	{
////		printk("Hello World,我是树莓派!\n");
////		kout << "Hello World,我是树莓派\n";
//		delayCPU(0xfffff);
//	}
	return 0;
}
