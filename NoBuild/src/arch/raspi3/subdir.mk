################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/arch/raspi3/crt0.cpp \
../src/arch/raspi3/printk_impl.cpp \
../src/arch/raspi3/uart1.cpp \
../src/arch/raspi3/util.cpp 

OBJS += \
./src/arch/raspi3/crt0.o \
./src/arch/raspi3/printk_impl.o \
./src/arch/raspi3/uart1.o \
./src/arch/raspi3/util.o 

CPP_DEPS += \
./src/arch/raspi3/crt0.d \
./src/arch/raspi3/printk_impl.d \
./src/arch/raspi3/uart1.d \
./src/arch/raspi3/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/raspi3/%.o: ../src/arch/raspi3/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


