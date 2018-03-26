/*
 * VirtioQueueLayout.cpp
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */

#ifndef SRC_IO_VIRTIO_VIRTIOQUEUELAYOUT_CPP_
#define SRC_IO_VIRTIO_VIRTIOQUEUELAYOUT_CPP_

#include <io/virtio/VirtioQueueLayout.h>
#include <generic_util.h>

size_t VirtioQueueLayout::memSize()const
{
	auto prefix = sizeof(VirtioQueueDescriptor)*_queueSize +
			6 + 2*_queueSize;
	auto alignedPrefix = alignAhead(prefix, _usedRingAlignment);
	return alignedPrefix + 6  + 8 * _queueSize;
}


#endif /* SRC_IO_VIRTIO_VIRTIOQUEUELAYOUT_CPP_ */
