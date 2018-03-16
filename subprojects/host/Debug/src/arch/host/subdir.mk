################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/host/main_debug_mman.cpp 

OBJS += \
./src/arch/host/main_debug_mman.o 

CPP_DEPS += \
./src/arch/host/main_debug_mman.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/host/main_debug_mman.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/host/main_debug_mman.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


