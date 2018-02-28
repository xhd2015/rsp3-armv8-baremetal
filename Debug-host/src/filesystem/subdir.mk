################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/filesystem/FAT32Debugger.cpp \
../src/filesystem/FAT32Entry.cpp \
../src/filesystem/FAT32ReadUtil.cpp \
../src/filesystem/fat32.cpp 

OBJS += \
./src/filesystem/FAT32Debugger.o \
./src/filesystem/FAT32Entry.o \
./src/filesystem/FAT32ReadUtil.o \
./src/filesystem/fat32.o 

CPP_DEPS += \
./src/filesystem/FAT32Debugger.d \
./src/filesystem/FAT32Entry.d \
./src/filesystem/FAT32ReadUtil.d \
./src/filesystem/fat32.d 


# Each subdirectory must supply rules for building sources it contributes
src/filesystem/%.o: ../src/filesystem/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\chap003\include" -include"D:\Pool\eclipse-workspace_aarch64\chap003\Debug-host\cxx_macros.h" -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


