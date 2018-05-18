/*
 * error.cpp
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#include <generic/error.h>
#include <io/Output.h>
#include <asm_instructions.h>
#include <cstdlib> // for abort

void abort()
{
	kout << FATAL << "-- ABORT -- \n";
	kout.flush();
	asm_wfi_loop();
}

void resume()
{

}

void reportError(const char *s)
{
	kout << FATAL << s << "\n";
	abort();
}

void report_assert_error(const char *file,size_t line,const char *func,const char *expr)
{
	kout << "at line " << line << ", file \"" << file << "\", function \""<<func<<"\", fails\n\t \""<<expr<<"\"\n";
	abort();
}


