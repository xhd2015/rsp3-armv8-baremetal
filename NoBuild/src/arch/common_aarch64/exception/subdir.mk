################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/arch/common_aarch64/exception/exceptions.cpp 

OBJS += \
./src/arch/common_aarch64/exception/exceptions.o 

CPP_DEPS += \
./src/arch/common_aarch64/exception/exceptions.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/common_aarch64/exception/%.o: ../src/arch/common_aarch64/exception/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


