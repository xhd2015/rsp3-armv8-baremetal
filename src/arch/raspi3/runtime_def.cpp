#include <runtime_def.h>

ExceptionLevel exceptionLevel=ExceptionLevel::EL0;
SecurityState securityState=SecurityState::S_NS_1S;

char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};
Output kout;


MemoryManager mman {nullptr,0,false};
MemAbort m_abort;

BCM2835MiniUART miniUART {nullptr};
PL011           pl011 {nullptr};

BCM2835InterruptController intc { nullptr};
BCM2836LocalIntController localIntc{nullptr};
BCM2836MailBox mailBox { nullptr};


GPIO gpio{nullptr};

GenericTimer  ktimer;
BCM2835SystemTimer sysTimer{nullptr};
uint32_t           sysTimerTick=0;

