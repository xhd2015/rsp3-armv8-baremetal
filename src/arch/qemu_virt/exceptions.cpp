#include <arch/common_aarch64/gicv3_registers.h>

#include <def.h>
#include <printk.h>
#include <IntegerFormatter.h>
#include <arch/common_aarch64/gicv3_registers.h>
#include <arch/common_aarch64/system_common_registers.h>
#include <arch/common_aarch64/timer_registers.h>





#define eret() __asm__("eret \n\t");
#define die() while(true)

__asm__(//".align  11 \n\t" // for ARM, this is lower order zero bits, but seems not working. we must get depend on the final linker script
		".section .text.vector \n\t"
		".global ExceptionVectorEL1 \n\t"
		"ExceptionVectorEL1:\n\t" // this only applies to EL1
		". = ExceptionVectorEL1 + 0x200 \n\t" //for EL1-->EL1,syn=0x200
		"SynchronousEL1:\n\t"
		"b enterSynchronousEL1ExceptionHandle_no_prologue \n\t"  // just call for it
		". = ExceptionVectorEL1 + 0x280 \n\t" // IRQ or vIRQ

		"IRQEL1:\n\t"
		"b enterIRQEL1ExceptionHandle_no_prologue \n\t"
		". = ExceptionVectorEL1 + 0x300 \n\t" // FIQ or vFIQ

		"FIQEL1:\n\t"
		"b enterFIQEL1ExceptionHandle_no_prologue \n\t"
 		". = ExceptionVectorEL1 + 0x380 \n\t" // SError or vSError

		"SErrorEL1:\n\t"
		"b enterSErrorEL1ExceptionHandle_no_prologue \n\t"

		".text \n\t" //恢复之前的分区
		);
#define SAVE_REGS() \
	__asm__ __volatile__("stp x0,x1,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x2,x3,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x4,x5,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x6,x7,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x8,x9,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x10,x11,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x12,x13,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x14,x15,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x16,x17,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x18,x19,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x20,x21,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x22,x23,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x24,x25,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x26,x27,[sp,#-16]! \n\t"); \
	__asm__ __volatile__("stp x28,x29,[sp,#-16]! \n\t");
#define RESTORE_REGS() \
	__asm__ __volatile__("ldp x28,x29,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x26,x27,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x24,x25,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x22,x23,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x20,x21,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x18,x19,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x16,x17,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x14,x15,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x12,x13,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x10,x11,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x8,x9,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x6,x7,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x4,x5,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x2,x3,[sp],#16 \n\t"); \
	__asm__ __volatile__("ldp x0,x1,[sp],#16 \n\t");


void enterSynchronousEL1ExceptionHandle()
{
	__asm__("enterSynchronousEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"mov     x0,#0 \n\t"
		"mrs     x1, esr_el1 \n\t"
		"mrs     x2, elr_el1 \n\t"
		"mrs     x3, spsr_el1 \n\t"
		"mrs     x4, far_el1 \n\t"
		"bl      SynchronousEL1Handle \n\t"
	);
	RESTORE_REGS();
	eret();
}
void enterIRQEL1ExceptionHandle()
{
	__asm__("enterIRQEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"bl      IRQEL1Handle \n\t"
	);
	RESTORE_REGS();
	eret();
}
void enterFIQEL1ExceptionHandle()
{
	__asm__("enterFIQEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"bl      FIQEL1Handle \n\t"
	);
	RESTORE_REGS();
	eret();
}

void enterSErrorEL1ExceptionHandle()
{
	__asm__("enterSErrorEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"bl      SErrorEL1Handle \n\t"
	);
	RESTORE_REGS();
	eret();
}

//========the C++ handles================


extern "C"
void SynchronousEL1Handle(uint64_t type,uint64_t esr,uint64_t elr,uint64_t spsr,uint64_t far)// in must use svc or other ExceptionGeneration instructions, out must use eret, no magics
{
	kout <<INFO<< "processing SynchronousEL1 \n";

	kout << "type=" << type << ", esr=" << Hex(esr) << ",elr = " << Hex(elr) << ", spsr = " << Hex(spsr) << ", far = " << Hex(far) << "\n";
    switch(esr>>26) {
        case 0b000000: kout << "Unknown" << "\n"; break;
        case 0b000001: kout << "Trapped WFI/WFE" << "\n"; break;
        case 0b001110: kout << "Illegal execution" << "\n"; break;
        case 0b010101: kout << "System call" << "\n"; break;
        case 0b100000: kout << "Instruction abort, lower EL" << "\n"; break;
        case 0b100001: kout << "Instruction abort, same EL" << "\n"; break;
        case 0b100010: kout << "Instruction alignment fault" << "\n"; break;
        case 0b100100: kout << "Data abort, lower EL" << "\n"; break;
        case 0b100101: kout << "Data abort, same EL" << "\n"; break;
        case 0b100110: kout << "Stack alignment fault" << "\n"; break;
        case 0b101100: kout << "Floating point" << "\n"; break;
        default: kout << "Unknown" << "\n"; break;
    }
    if(esr>>26==0b100100 || esr>>26==0b100101) {
        switch((esr>>2)&0x3) {
            case 0: kout << "Address size fault\n"; break;
            case 1: kout << "Translation fault\n"; break;
            case 2: kout << "Access flag fault\n"; break;
            case 3: kout << "Permission fault\n"; break;
        }
        switch(esr&0x3) {
            case 0: kout << " at level 0\n"; break;
            case 1: kout << " at level 1\n"; break;
            case 2: kout << " at level 2\n"; break;
            case 3: kout << " at level 3\n"; break;
        }
    }
}

extern "C"
void IRQEL1Handle()
{
	kout << INFO <<"processing IRQ_EL1 \n";

	auto iar = RegICC_IAR1_EL1::read(); // NOTE:by reading it, we  acknowledged it.So it will change to 1023 after this read
	RegICC_RPR_EL1::read().dump();
	RegICC_PMR_EL1::read().dump();
	RegGICD_ISACTIVER0::read().dump();
	RegGICR_ISACTIVER0::read().dump();
	RegGICD_ISPENDR0::read().dump();
	RegGICR_ISPENDR0::read().dump();
	RegISR_EL1::read().dump();
	iar.dump();
	RegICC_EOIR1_EL1 eoi{0};
	eoi.INTID = iar.INTID;
	eoi.write();

	// write here to make sure that the event come in order
	if(iar.INTID == 27) // virtual timer event stream
	{
		RegCNTV_CTL_EL0 ctl {0};
		ctl.ENABLE = 0;
		ctl.write();
		ctl.ENABLE = 1;
		ctl.IMASK = 0;
		ctl.write();
	}else if(iar.INTID == 30)//el1 physical timer interrupt
	{
//		RegCNTP_CTL_EL0 ctl {0};
//		ctl.ENABLE = 0;
//		writeRegCNTP_CTL_EL0(ctl);

		// rewrite this compare value will generate interrupt again
		auto cmpvPhy1 = RegCNTP_CVAL_EL0::read();
		cmpvPhy1.dump();
	//	cmpvPhy1.CompareValue = 0x2a3a4a5a;
		cmpvPhy1.CompareValue += 0x3a4a5a;
		cmpvPhy1.write();

//		ctl.ENABLE = 1;
//		ctl.IMASK = 0;
//		writeRegCNTP_CTL_EL0(ctl);
	}
}


//The CPU interface has two IARs. Reading the IAR returns the INTID, and advances the interrupt
//state machine. In a typical interrupt handler, one of the first steps when handling an interrupt is to
//read one of the IARs

extern "C"
void FIQEL1Handle()
{
	kout << INFO <<"processing FIQ_EL1 \n";
    RegICC_RPR_EL1::read().dump();
	auto iar = RegICC_IAR0_EL1::read();
	iar.dump();
	RegICC_EOIR0_EL1 eoi{0};
	eoi.INTID = iar.INTID; // this must be correctly done, else eret will causes errors
	eoi.write();
}

extern "C"
void SErrorEL1Handle()
{
	kout << INFO << "processing SErrorEL1 \n";
}





