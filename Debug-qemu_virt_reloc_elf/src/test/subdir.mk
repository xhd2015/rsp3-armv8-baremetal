################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/test/TestMemoryManager.cpp \
../src/test/TestVector.cpp \
../src/test/testFAT32SizeIsSecSize.cpp 

OBJS += \
./src/test/TestMemoryManager.o \
./src/test/TestVector.o \
./src/test/testFAT32SizeIsSecSize.o 

CPP_DEPS += \
./src/test/TestMemoryManager.d \
./src/test/TestVector.d \
./src/test/testFAT32SizeIsSecSize.d 


# Each subdirectory must supply rules for building sources it contributes
src/test/%.o: ../src/test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\chap003\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


