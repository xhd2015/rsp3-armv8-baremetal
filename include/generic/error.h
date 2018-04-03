/*
 * error.h
 *
 *  Created on: Mar 26, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_ERROR_H_
#define INCLUDE_GENERIC_ERROR_H_

void reportError();

// 程序不能继续运行
void abort();

void resume();


void assert(bool v);



#endif /* INCLUDE_GENERIC_ERROR_H_ */
