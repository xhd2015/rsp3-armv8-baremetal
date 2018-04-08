/*
 * testVector.cpp
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#include <test/TestVector.h>


void TestVector::setup()
{

}
void TestVector::teardown()
{

}

bool TestVector::initializeCorrectly()
{
	return true;
}
bool TestVector::minimalCapacityEnsured()
{
	Vector<int> vec0;
	Vector<int> vec1(0);
	Vector<int> vec2(Vector<int>::MINIMAL_CAPACITY-1);
	Vector<int> vec3(Vector<int>::MINIMAL_CAPACITY);
	Vector<int> vec4(Vector<int>::MINIMAL_CAPACITY + 1);
#define CMP_HELPER(vecN,op) (vecN.capacity() op Vector<int>::MINIMAL_CAPACITY)
	bool res = CMP_HELPER(vec0,==) & CMP_HELPER(vec1,==) & CMP_HELPER(vec2,==) & CMP_HELPER(vec3,==) & CMP_HELPER(vec4,>);
	return res;
#undef CMP_HELPER
}
bool TestVector::capacityIncreasedCorrectly()
{
	Vector<int> vec(Vector<int>::MINIMAL_CAPACITY);
	vec.pushBack(10);
	return vec.capacity()==(Vector<int>::MINIMAL_CAPACITY*3/2);
}
bool TestVector::capacityDecreasedCorrectly()
{
	return true;
}
bool TestVector::popBackWhenEmptyNoException()
{
	Vector<int> vec;
	vec.popBack();

	return true;
}
bool TestVector::pushBackCorrectly()
{
	return true;
}
bool TestVector::eraseCorrectly()
{
	Vector<int> vec {0, 1,2,3,4,4,5,6,7};
	vec.erase(4);
	for(size_t i=0;i!=vec.size();++i)
		if(static_cast<size_t>(vec[i])!= i)
			return false;
	return true;

}
bool TestVector::insertCorrectly()
{
	Vector<int> vec { 0,1,2,3,5,6,7};
	size_t oldSize = vec.size();
	vec.insert(oldSize+1,0);
	if(vec.size()!=oldSize)
		return false;

	vec.insert(4, 4);
	for(size_t i=0;i!=vec.size();++i)
		if(static_cast<size_t>(vec[i])!=i)
			return false;
	return true;
}
bool TestVector::resizeCorrectly()
{
	return true;
}

