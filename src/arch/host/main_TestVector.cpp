/*
 * main_TestVector.cpp
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */


#include <def.h>
#include <test/TestVector.h>
#include <test/test_base.h>
#include "../../../include/io/printk.h"

int main()
{
	TestVector testVector;

	RUN_TEST(testVector.minimalCapacityEnsured);
	RUN_TEST(testVector.capacityIncreasedCorrectly);
	RUN_TEST(testVector.capacityDecreasedCorrectly);
	RUN_TEST(testVector.initializeCorrectly);
	RUN_TEST(testVector.resizeCorrectly);
	RUN_TEST(testVector.pushBackCorrectly);
	RUN_TEST(testVector.eraseCorrectly);
	RUN_TEST(testVector.insertCorrectly);
	RUN_TEST(testVector.eraseCorrectly);

	kout << INFO << "All tests ended.\n";

	return 0;
}
