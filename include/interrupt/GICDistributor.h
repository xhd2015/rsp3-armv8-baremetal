/*
 * GICDistributor.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GICDISTRIBUTOR_H_
#define INCLUDE_INTERRUPT_GICDISTRIBUTOR_H_

#include <interrupt/GICDefinitions.h>

class GICDistributor{
public:
	template <IntID...Args>
	void enableIntID();
	template <IntID...Args>
	void disableIntID();

	template <uint8_t Grp>
	void enableGroup()=delete;

	template <>
	void enableGroup<0>();

	template <>
	void enableGroup<1>();

	template <uint8_t Grp>
	void disableGroup()=delete;

	template <>
	void disableGroup<1>();

	template <uint8_t Grp>
	void disableGroup<0>();


};




#endif /* INCLUDE_INTERRUPT_GICDISTRIBUTOR_H_ */
