################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/schedule/PidManager.cpp \
../src/schedule/Progress.cpp 

OBJS += \
./src/schedule/PidManager.o \
./src/schedule/Progress.o 

CPP_DEPS += \
./src/schedule/PidManager.d \
./src/schedule/Progress.d 


# Each subdirectory must supply rules for building sources it contributes
src/schedule/%.o: ../src/schedule/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


