/*
 * Input_read_getchar_qemu_virt.cpp
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#include <io/Input.h>
#include <data_structures/Queue.h>

uint16_t   Input::read()
{
	while(inputBuffer.empty())
		;
	return inputBuffer.remove();
}

