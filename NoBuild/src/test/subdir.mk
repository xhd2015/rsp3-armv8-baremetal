################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/test/TestMemoryManager.cpp \
../src/test/TestPidManager.cpp \
../src/test/TestVector.cpp \
../src/test/testFAT32SizeIsSecSize.cpp 

OBJS += \
./src/test/TestMemoryManager.o \
./src/test/TestPidManager.o \
./src/test/TestVector.o \
./src/test/testFAT32SizeIsSecSize.o 

CPP_DEPS += \
./src/test/TestMemoryManager.d \
./src/test/TestPidManager.d \
./src/test/TestVector.d \
./src/test/testFAT32SizeIsSecSize.d 


# Each subdirectory must supply rules for building sources it contributes
src/test/%.o: ../src/test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


