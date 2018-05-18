/*
 * error.h
 *
 *  Created on: Mar 26, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_ERROR_H_
#define INCLUDE_GENERIC_ERROR_H_
#include <def.h>

#ifdef NDEBUG
#define reportErrorOn(expr,msg) ((void)0)
#else
#define reportErrorOn(expr,msg) do{if(expr)reportError(msg);}while(false)
#endif

// STOLEN from gcc
#ifdef NDEBUG           /* required by ANSI standard */
# define assert(__e) ((void)0)
#else
# define assert(__e) ((__e) ? (void)0 : report_assert_error(__FILE__, __LINE__, \
						       __PRETTY_FUNCTION__, #__e))
#endif


void __attribute__((noreturn)) reportError(const char *s);
void resume();

void __attribute__((noreturn)) report_assert_error(const char *file,size_t line,const char *func,const char *expr);


#endif /* INCLUDE_GENERIC_ERROR_H_ */
