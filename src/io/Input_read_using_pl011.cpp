/*
 * Input_read_using_pl011.cpp
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#include <io/Input.h>
#include <driver/uart/PL011.h>
#include <generic/error.h>
uint16_t   Input::read()
{
	return pl011.readDataBlocked();
}

