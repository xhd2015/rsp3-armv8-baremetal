################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/arch/host/global_variables_impl.cpp \
../src/arch/host/main_TestVector.cpp \
../src/arch/host/main_debug_mman.cpp \
../src/arch/host/main_fat_test.cpp \
../src/arch/host/template_init1.cpp \
../src/arch/host/template_init2.cpp \
../src/arch/host/util_impl.cpp 

OBJS += \
./src/arch/host/global_variables_impl.o \
./src/arch/host/main_TestVector.o \
./src/arch/host/main_debug_mman.o \
./src/arch/host/main_fat_test.o \
./src/arch/host/template_init1.o \
./src/arch/host/template_init2.o \
./src/arch/host/util_impl.o 

CPP_DEPS += \
./src/arch/host/global_variables_impl.d \
./src/arch/host/main_TestVector.d \
./src/arch/host/main_debug_mman.d \
./src/arch/host/main_fat_test.d \
./src/arch/host/template_init1.d \
./src/arch/host/template_init2.d \
./src/arch/host/util_impl.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/host/%.o: ../src/arch/host/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


