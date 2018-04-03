/*
 * GICRedistributor.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GICREDISTRIBUTOR_H_
#define INCLUDE_INTERRUPT_GICREDISTRIBUTOR_H_


#include <interrupt/GICDefinitions.h>

class GICRedistributor{
public:
	// Args只能从0-31,0-15 SGI, 16-31 PPI
	template <IntID ... Args>
	void enableIntIDs()const;

	template <IntID ... Args>
	void disableIntIDs()const;

	void awake();

private:
	RegGICR_WAKER _weaker;
};




#endif /* INCLUDE_INTERRUPT_GICREDISTRIBUTOR_H_ */
