#include <runtime_def.h>

ExceptionLevel exceptionLevel=ExceptionLevel::EL0;
SecurityState securityState=SecurityState::S_NS_1S;

char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};
Output kout;

// io
Input kin;
Queue<uint16_t>  inputBuffer {0};
SDDriverV3 sddriver {0};

MemoryManager mman {nullptr,0,false};
MemAbort m_abort;

VirtualManager virtman;

BCM2835MiniUART miniUART {nullptr};
PL011           pl011 {nullptr};

BCM2835InterruptController intc { nullptr};
BCM2836LocalIntController localIntc{nullptr,intc};
BCM2836MailBox mailBox { nullptr};


GPIO gpio{nullptr};

GenericTimer  ktimer;
BCM2835SystemTimer sysTimer{nullptr};
uint32_t           sysTimerTick=0; // DOCME sysTimerTick表明调度的时间延迟，ms作为单位


// interrupt系统
#include "../src/interrupt/InterruptHandler.cpp" // 实例化
InterruptHandler<BCM2836LocalIntController>  intHandler{localIntc};
template class InterruptHandler<BCM2836LocalIntController>;

// 进程
ProcessManager processManager;
PidManager pidManager;

// 文件系统
VirtualFileSystem vfs;
