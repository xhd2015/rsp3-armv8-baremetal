################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/memory/MemoryChunk.cpp \
../src/memory/MemoryManager_aarch64.cpp \
../src/memory/MemoryManager_host.cpp 

OBJS += \
./src/memory/MemoryChunk.o \
./src/memory/MemoryManager_aarch64.o \
./src/memory/MemoryManager_host.o 

CPP_DEPS += \
./src/memory/MemoryChunk.d \
./src/memory/MemoryManager_aarch64.d \
./src/memory/MemoryManager_host.d 


# Each subdirectory must supply rules for building sources it contributes
src/memory/%.o: ../src/memory/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


