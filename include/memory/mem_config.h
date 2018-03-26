

#ifndef MEM_CONFIG_H__
#define MEM_CONFIG_H__

#include <def.h> //for MiB,GiB,size_t

#ifdef TARGET_ARCH_IS_aarch64
constexpr size_t RASPI_WHOLE_RAM=1*GiB;
constexpr size_t RASPI_GPU_RAM=64*MiB;

constexpr char * const RAM_START = reinterpret_cast<char*>(0x0);
constexpr size_t RAM_SIZE =RASPI_WHOLE_RAM - RASPI_GPU_RAM;

#elif defined(TARGET_ARCH_IS_qemu_virt)
//#define RAM_START reinterpret_cast<char *>(CONFIG_RAM_START)
//#define RAM_SIZE static_cast<size_t>(1*GiB)
#elif defined(TARGET_ARCH_IS_host)
char * const RAM_START = new char[1024*1024];
constexpr const size_t RAM_SIZE = 1024*124;
#else
#endif


#endif //MEM_CONFIG_H__
