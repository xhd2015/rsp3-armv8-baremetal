/*
 * error.cpp
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#include <generic/error.h>
#include <io/Output.h>
#include <asm_instructions.h>

void abort()
{
	kout << FATAL << "-- ABORT -- \n";
	kout.flush();
	asm_wfe_loop();
}

void resume()
{

}


void assert(bool v)
{
	if(!v)
		abort();
}


