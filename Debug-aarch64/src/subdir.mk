################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/MemoryManager.cpp \
../src/printk.cpp 

OBJS += \
./src/MemoryManager.o \
./src/printk.o 

CPP_DEPS += \
./src/MemoryManager.d \
./src/printk.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	/cygdrive/d/installed/gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf/bin/aarch64-elf-g++ -std=c++14 -DKERNEL_ADDRESS=0x80000 -I"D:\Pool\eclipse-workspace_aarch64\chap002\include" -I"D:\installed\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\aarch64-elf\include\c++\7.2.1" -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


