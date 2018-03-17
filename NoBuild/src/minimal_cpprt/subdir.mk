################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/minimal_cpprt/__throw_bad_function_call.cpp \
../src/minimal_cpprt/operator_delete.cpp \
../src/minimal_cpprt/operator_new.cpp 

OBJS += \
./src/minimal_cpprt/__throw_bad_function_call.o \
./src/minimal_cpprt/operator_delete.o \
./src/minimal_cpprt/operator_new.o 

CPP_DEPS += \
./src/minimal_cpprt/__throw_bad_function_call.d \
./src/minimal_cpprt/operator_delete.d \
./src/minimal_cpprt/operator_new.d 


# Each subdirectory must supply rules for building sources it contributes
src/minimal_cpprt/%.o: ../src/minimal_cpprt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


