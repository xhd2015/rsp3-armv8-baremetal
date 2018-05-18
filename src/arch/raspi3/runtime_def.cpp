#include <runtime_def.h>

ExceptionLevel exceptionLevel=ExceptionLevel::EL0;
SecurityState securityState=SecurityState::S_NS_1S;

char koutBuf[koutBufSize]={0};
extern const char EMPTY_STR[1]={0};


// io
Queue<uint16_t>  inputBuffer {0};
BCM2835MiniUART miniUART {nullptr};
SDDriverV3 sddriver {0};
MiniUARTCharacterReaderWriter miniUARTChReaderWriter{nullptr};
PL011           pl011 {nullptr};
PL011CharacterReaderWriter    pl011ChReader{nullptr};
Output kout{ nullptr };
Input kin { nullptr };
ProcessManager::ProcessLink * activeInputCatcher { nullptr};

MemoryManager mman {nullptr,0,false};
MemAbort m_abort;

VirtualManager virtman;


BCM2835InterruptController intc { nullptr};
BCM2836LocalIntController localIntc{nullptr,nullptr};
BCM2836MailBox mailBox { nullptr};


GPIO gpio{nullptr};

GenericTimer  ktimer;
BCM2835SystemTimer sysTimer{nullptr};
uint32_t           sysTimerTick=0; // DOCME sysTimerTick表明调度的时间延迟，ms作为单位


// interrupt
// DOCME 这里实例化模板有点特殊，没有采用与data类似的tempdecl的方式。
//   这是由于，在我们的系统中，这种类只需要一个。
#include "../src/interrupt/InterruptHandler.cpp"
template class InterruptHandler<BCM2836LocalIntController>;
InterruptHandler<BCM2836LocalIntController>  intHandler{nullptr};
ExceptionLevel highestEL;

// 进程
ProcessManager processManager;
PidManager pidManager;

// 文件系统
VirtualFileSystem vfs;
