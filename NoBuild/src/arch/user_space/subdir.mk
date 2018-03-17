################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/arch/user_space/exit.cpp \
../src/arch/user_space/init.cpp \
../src/arch/user_space/user_main_hello_kernel.cpp 

OBJS += \
./src/arch/user_space/exit.o \
./src/arch/user_space/init.o \
./src/arch/user_space/user_main_hello_kernel.o 

CPP_DEPS += \
./src/arch/user_space/exit.d \
./src/arch/user_space/init.d \
./src/arch/user_space/user_main_hello_kernel.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/user_space/%.o: ../src/arch/user_space/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


