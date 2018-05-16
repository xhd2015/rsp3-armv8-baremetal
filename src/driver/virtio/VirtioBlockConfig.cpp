/*
 * VirtioBlockConfig.cpp
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */


#include <driver/virtio/VirtioBlockConfig.h>


void VirtioBlockConfig::dump()const
{
	kout << "VirtioBlockConfig: ";
	kout
		<< " capacity = " << capacity << ","
		<< " size_max = " << size_max << ","
		<< " seg_max = " << seg_max << ","
			<< " cylinders = " << geometry.cylinders << ","
			<< " heads = " << geometry.heads << ","
			<< " sectors = " << geometry.sectors << ","
		<< " blk_size = " << blk_size << ","
			<< " physical_block_exp = " << topology.physical_block_exp << ","
			<< " alignment_offset = " << topology.alignment_offset << ","
			<< " min_io_size = " << topology.min_io_size << ","
			<< " opt_io_size = " << topology.opt_io_size << ","
		<< " writeback = " << writeback << ","
		<< "\n";
}

