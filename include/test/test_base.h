/*
 * test.h
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEST_TEST_BASE_H_
#define INCLUDE_TEST_TEST_BASE_H_

#include <def.h>
#include <io/Output.h>
#include <io/IntegerFormatter.h>


#define EXPECT_EXPR_EQUAL(expr,value) \
	{do{ \
		if((expr)!=(value))\
		    kout << FATAL << #expr << "!="<<value<<",the real value is " << expr << "\n"; \
	}while(false);}

#define RUN_TEST(testCallable) if(!(testCallable())) \
	{ kout << FATAL << " [TEST] `"<< #testCallable << "` failed.\n";}

#endif /* INCLUDE_TEST_TEST_BASE_H_ */
