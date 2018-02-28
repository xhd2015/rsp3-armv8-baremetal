/*
 * testMemoryManager.cpp
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */


#include <MemoryManager.h>
#include <mem_config.h>
#include <printk.h>
#include <IntegerFormatter.h>
#include <test/test_base.h>

bool testMemoryManager()
{
	//	constexpr int n=20;
	//	char buffer[n];


		MemoryManager mm{RAM_START,RAM_SIZE};
		void *p = mm.allocate(1024);

	//	itox(reinterpret_cast<size_t>(p),buffer, n);
	//	printk("allocated pointer is ");
	//	printk(buffer);
	//	printk("\n");

		kout << "allocated pointer is " << Hex(p) << "\n";

		return true;
}
