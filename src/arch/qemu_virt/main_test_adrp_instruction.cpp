/*
 * main_test_adrp_instruction.cpp
 *
 *  Created on: Mar 11, 2018
 *      Author: 13774
 */

#include <kernel.h>
#include <asm_instructions.h>
// 程序测试了adrp指令的作用，其最终的结果证明了adrp就是用于计算某个标签/地址的4KB页基地址。
// 因此使用g++编译的代码必须4KB对齐。
// 同时，在去掉__attribute__((weak))的情况下，程序还清楚地展示了局部符号和全局符号在-fPIC选项下的不同之处， 查看汇编代码可知局部符号相当于引用.got表的第0项（第一个有效项），所有的局部符号都是相同的。  这会影响所有通过 extern引用的局部符号。  所以定义符号应当使用__attribute__((weak))来引用。
// extern 引用的是.got分区的固定值，因此它们其实不具备位置无关的特性。但是只需要在位置改变后对got表进行偏移改变即可。

// 使用-pie选项正确。
__asm__ __volatile__(
		".text \n\t"
		".global label1,label2,label3 \n\t" // 使他们的值可见
		".align 12 \n\t"
		"local_label1:\n\t"
		"label1: \n\t"
		". = . + 0xc \n\t"
		"local_label2:\n\t"
		"label2: \n\t"
		".align 12 \n\t"
		". = . + 0xc \n\t"
		"local_label3:\n\t"
		"label3: \n\t"
		".4byte 0 \n\t");
// all the following are not relocateable
// extern and weak
//extern volatile char label1[] __attribute__((weak));
//extern volatile char label2[] __attribute__((weak));
//extern volatile char label3[]__attribute__((weak));
//extern volatile char local_label1[] __attribute__((weak));
//extern volatile char local_label2[] __attribute__((weak));
//extern volatile char local_label3[] __attribute__((weak));

// not weak
extern volatile char label1[];
extern volatile char label2[];
extern volatile char label3[];
extern volatile char local_label1[];
extern volatile char local_label2[];
extern volatile char local_label3[];

int main()
{
	int *refLocal1=nullptr;
	__asm__ __volatile__("adr %0,local_label1 \n\t":"=r"(refLocal1));

	int *refLocal2=nullptr;
	__asm__ __volatile__("adr %0,local_label2 \n\t":"=r"(refLocal2));

	int *refLocal3=nullptr;
	__asm__ __volatile__("adr %0,local_label3 \n\t":"=r"(refLocal3));


	kout << label1 << "," << label2 << "," << label3<<"\n";
	kout << local_label1 << "," << local_label2 << "," << local_label3<<"\n";
	kout << refLocal1 << "," << refLocal2 << "," << refLocal3<<"\n";

	kout << (local_label3==label3) << "\n"; // false
//	local_label3[0]=123;
//	kout << local_label3[0] << "\n";
//	kout << label3[0] << "\n";

	uint64_t x1=0,x2=0,x3=0;
	uint64_t x4=0,x5=0,x6=0;
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__ __volatile__("adrp %0,label1 \n\t":"=r"(x1));
	__asm__ __volatile__("adrp %0,label2 \n\t":"=r"(x2));
	__asm__ __volatile__("adrp %0,label3 \n\t":"=r"(x3));
	__asm__ __volatile__("adrp %0,local_label1 \n\t":"=r"(x4));
	__asm__ __volatile__("adrp %0,local_label2 \n\t":"=r"(x5));
	__asm__ __volatile__("adrp %0,local_label3 \n\t":"=r"(x6));
	kout << Hex(x1) << "," << Hex(x2) << "," << Hex(x3) << "\n";
	kout << Hex(x4) << "," << Hex(x5) << "," << Hex(x6) << "\n";

	uint64_t x7=0;
	__asm__ __volatile__("adr %0,local_label3 \n\t":"=r"(x7));
	kout << Hex(x7) << "\n";

	return 0;
}
