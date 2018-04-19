/*
 * delayCPU.h
 *
 *  Created on: Mar 21, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_DELAYCPU_H_
#define INCLUDE_GENERIC_DELAYCPU_H_
#include <def.h>

void delayCPU(size_t i);
void delayCPU(size_t i,size_t j);
void haltCPU();

void delayUS(size_t usec);
void delayMS(size_t msec);
void delayS(size_t sec);

size_t  cpuID();
/**
 *
 * @return  freq，单位Hz
 */
size_t  cpuFreq();


#endif /* INCLUDE_GENERIC_CPU_H_ */
