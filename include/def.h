
#ifndef DEF_H__
#define DEF_H__

//freestanding c headers
// 没有函数生成，仅仅包含一些必要的定义

#include <cstddef>
#include <cstdint>

#define AS_MACRO __attribute__((always_inline)) inline
#define arrsizeof(arr) (sizeof(arr)/sizeof(arr[0]))
#define NULL_CHAR '\0'

// for print information
//extern const char * INFO;
//extern const char * WARNING;
//extern const char * FATAL;
//constexpr const char * INFO = "[INFO] ";
//constexpr const char * WARNING = "[WARNING] ";
//constexpr const char * FATAL = "[FATAL] ";
#define INFO "[INFO] "
#define WARNING "[WARNING] "
#define FATAL "[FATAL] "


// 用于表示空字符串的全局唯一常量
extern const char EMPTY_STR[1];

// 声明用于kout的缓冲区
constexpr size_t koutBufSize = 65; // for max 64-bits,a NULL_CHAR
extern char koutBuf[koutBufSize];

constexpr int 	UNIT_K=1024;
constexpr int  KiB = UNIT_K;
constexpr int  MiB = UNIT_K * KiB;
constexpr int  GiB = UNIT_K * MiB;


#define TIE2(t1,v1,t2,v2) t1 v1;t2 v2;std::tie((v1),(v2))

//#define __concate(x,y) x##y
#define __stringify_1(x)	#x
#define __stringify(x)		__stringify_1(x)



// for readibility, 16 bits per letter
#define HEX32(a,b) 0x##a##b
#define HEX64(a,b,c,d) 0x##a##b##c##d

// 8bits per letter
#define BIN32(a,bb,c,d) 0b##a##bb##c##d
#define BIN64(a,bb,c,d,e,f,g,h) 0b##a##bb##c##d##e##f##g##h


#endif //DEF_H__
