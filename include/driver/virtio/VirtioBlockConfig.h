/*
 * VirtioBlockConfig.h
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_VIRTIO_VIRTIOBLOCKCONFIG_H_
#define INCLUDE_DRIVER_VIRTIO_VIRTIOBLOCKCONFIG_H_
#include <def.h>
#include <io/Output.h>

/**
 * 对V1,V2都适用
 */
class VirtioBlockConfig{
public:

	uint64_t capacity;
	uint32_t size_max;
	uint32_t seg_max;
	struct VirtioBlockGeometry {
		uint16_t cylinders;
		uint8_t heads;
		uint8_t sectors;
	} geometry;
	uint32_t blk_size;
	struct VirtioBlockTopology {
		// # of logical blocks per physical block (log2)
		uint8_t physical_block_exp;
		// offset of first aligned logical block
		uint8_t alignment_offset;
		// suggested minimum I/O size in blocks
		uint16_t min_io_size;
		// optimal (suggested maximum) I/O size in blocks
		uint32_t opt_io_size;
	} topology;
	uint8_t writeback;

	void dump()const;
}__attribute__((packed));



#endif /* INCLUDE_DRIVER_VIRTIO_VIRTIOBLOCKCONFIG_H_ */
