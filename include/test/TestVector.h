/*
 * testVector.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEST_TESTVECTOR_H_
#define INCLUDE_TEST_TESTVECTOR_H_
#include <data_structures/Vector.h>

class TestVector
		:private Vector<int>
{
public:
	void setup();
	void teardown();

	bool initializeCorrectly();
	bool minimalCapacityEnsured();
	bool capacityIncreasedCorrectly();
	bool capacityDecreasedCorrectly();
	bool popBackWhenEmptyNoException();
	bool pushBackCorrectly();
	bool eraseCorrectly();
	bool insertCorrectly();
	bool resizeCorrectly();
};





#endif /* INCLUDE_TEST_TESTVECTOR_H_ */
