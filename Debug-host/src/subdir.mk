################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/MemoryChunk.cpp \
../src/MemoryManager_aarch64.cpp \
../src/generic_util.cpp \
../src/printk.cpp 

OBJS += \
./src/MemoryChunk.o \
./src/MemoryManager_aarch64.o \
./src/generic_util.o \
./src/printk.o 

CPP_DEPS += \
./src/MemoryChunk.d \
./src/MemoryManager_aarch64.d \
./src/generic_util.d \
./src/printk.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\chap003\include" -include"D:\Pool\eclipse-workspace_aarch64\chap003\Debug-host\cxx_macros.h" -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


