################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/default_impl/printk.cpp 

OBJS += \
./src/default_impl/printk.o 

CPP_DEPS += \
./src/default_impl/printk.d 


# Each subdirectory must supply rules for building sources it contributes
src/default_impl/printk.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/default_impl/printk.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


