/*
 * test.h
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEST_TEST_BASE_H_
#define INCLUDE_TEST_TEST_BASE_H_

//bool expect
//#define ExpectExpressionEqual(expr,value) do{ if((expr)!=(value)) \
//		kout << FATAL << #expr << "!="<<value<<",the real value is " << expr << "\n";
//bool expectEqual();


bool testMemoryManager();

bool testFAT32SizeIsSecSize();




#endif /* INCLUDE_TEST_TEST_BASE_H_ */
