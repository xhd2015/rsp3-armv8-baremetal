/*
 * BCM2836MailBox.h
 *
 *  Created on: Apr 16, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_GPU_BCM2836MAILBOX_H_
#define INCLUDE_DRIVER_GPU_BCM2836MAILBOX_H_
#include <io/MemBasedRegReader.h>
#include <generic/error.h>
#include <generic_util.h>
#include <generic/cpu.h>

/**
 * BASE= 0x3F00B880
 */
class BCM2836MailBox
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		MBOX_READ=0,
		MBOX_POLL=0x10,
		MBOX_SENDER=0x14,
		MBOX_STATUS=0x18,
		MBOX_CONFIG=0x1C,
		MBOX_WRITE=0x20
	};
	static constexpr size_t MBOX_REQUEST=0;
	static constexpr size_t MBOX_RESPONSE=0x80000000u;
	enum Request :uint8_t{ REQ_CH_POWER=0, REQ_CH_FB=1, REQ_CH_VUART=2, REQ_VCHIQ=3,REQ_CH_LEDS=4,REQ_CH_BTNS=5,REQ_CH_TOUCH=6,REQ_CH_COUNT=7,REQ_CH_PROP=8};
	enum Tag { T_GETSERIAL=0x10004, T_SETCLKRATE=0x38002,T_LAST=0 };
	enum Flags { F_FULL=31,F_RESP=31, F_EMPTY=30};
	template <class ... Args>
	BCM2836MailBox(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
		{}
	AS_MACRO bool writeable() const { return bitsNonSet<F_FULL>(reg32(MBOX_STATUS));}
	AS_MACRO bool readable() const { return bitsNonSet<F_EMPTY>(reg32(MBOX_STATUS));}
	AS_MACRO volatile uint32_t * mbox() { return _mbox;}
	AS_MACRO const volatile uint32_t *mbox() const {return _mbox;}
	/**
	 * mailbox调用
	 * @param req
	 * @return  0 失败，非0成功
	 */
	int call(Request req);
	/**
	 * 比如4MHz=4000000
	 * @param freq
	 */
	void setUARTClockRate(uint32_t freq);
private:
	volatile uint32_t _mbox[36] __attribute__((aligned(16)));

};

#ifndef _NOT_NEED_BCM2836MailBox
extern BCM2836MailBox mailBox;
#endif
#endif /* INCLUDE_DRIVER_GPU_BCM2836MAILBOX_H_ */
