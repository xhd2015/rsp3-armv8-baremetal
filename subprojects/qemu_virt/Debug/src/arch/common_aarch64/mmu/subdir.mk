################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/common_aarch64/mmu/VirtualAddress.cpp 

OBJS += \
./src/arch/common_aarch64/mmu/VirtualAddress.o 

CPP_DEPS += \
./src/arch/common_aarch64/mmu/VirtualAddress.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/common_aarch64/mmu/VirtualAddress.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/common_aarch64/mmu/VirtualAddress.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


