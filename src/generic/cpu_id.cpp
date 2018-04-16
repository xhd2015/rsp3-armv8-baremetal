/*
 * cpu_id.cpp
 *
 *  Created on: Apr 15, 2018
 *      Author: 13774
 */
#include <generic/cpu.h>
#include <arch/common_aarch64/registers/system_common_registers.h>

/**
 * 对于cortex a53, 只需返回Aff0即可。
 * @return
 */
size_t  cpuID()
{
	return RegMPIDR_EL1::read().Aff0;
}
