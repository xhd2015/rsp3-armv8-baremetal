/*
 * SystemFeature.cpp
 *
 *  Created on: Mar 19, 2018
 *      Author: 13774
 */
#include <SystemFeatures.h>

// inline 会导致不编译
void SystemFeatures::updatePreconfigured()
{
	auto aa64id0=RegID_AA64MMFR0_EL1::read();
	if(aa64id0.ASIDBits == 0)
		_asidBits=0;
	else if(aa64id0.ASIDBits == 0b01)
		_asidBits=1;
	else
		_asidBits=0b11;

	_support4KBPage = (aa64id0.TGran4==0);
	_support16KBPage = (aa64id0.TGran16==0);
	_support64KBPage = (aa64id0.TGran64==0);

	int paBitsMap[] =   {32,  36,  40,  42,  44,  48,  52};
	_addrBits = paBitsMap[aa64id0.PARange];

}
uint64_t SystemFeatures::addrBits() const {
	return _addrBits;
}

void SystemFeatures::addrBits(uint64_t addrBits )
{
	_addrBits = addrBits;
}

Architecture SystemFeatures::architecture() const {
	return static_cast<Architecture>(_architecture);
}

void SystemFeatures::architecture(Architecture architecture )
{
	_architecture = static_cast<uint64_t>(architecture);
}

uint64_t SystemFeatures::asidBits() const {
	return (_asidBits+1)*8;
}

void SystemFeatures::asidBits(uint64_t asidBits )
{
	_asidBits = (asidBits/8 - 1);
}

uint64_t SystemFeatures::cores() const {
	return _cores;
}

void SystemFeatures::cores(uint64_t cores )
{
	_cores = cores;
}

bool SystemFeatures::support4KBPage() const {
	return _support4KBPage;
}

void SystemFeatures::support4KBPage(bool support4KbPage )
{
	_support4KBPage = support4KbPage;
}

bool SystemFeatures::support16KBPage() const {
	return _support16KBPage;
}

void SystemFeatures::support16KBPage(bool support16KbPage )
{
	_support16KBPage = support16KbPage;
}

bool SystemFeatures::support64KBPage() const {
	return _support64KBPage;
}

void SystemFeatures::support64KBPage(bool support64KbPage )
{
	_support64KBPage = support64KbPage;
}

uint64_t SystemFeatures::asidSelector() const {
	return _asidSelector;
}

void SystemFeatures::asidSelector(uint64_t asidSelector)
{
	_asidSelector = asidSelector;
}
