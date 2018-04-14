#include <runtime_def.h>

ExceptionLevel exceptionLevel=ExceptionLevel::EL0;
SecurityState securityState=SecurityState::S_NS_1S;

char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};
Output kout;


MemoryManager mman {nullptr,0,false};
MemAbort m_abort;

BCM2835MiniUART miniUART {nullptr};

