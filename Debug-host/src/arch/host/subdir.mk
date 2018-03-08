################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/arch/host/global_variables_impl.cpp \
../src/arch/host/main_debug_mman.cpp \
../src/arch/host/printk_impl.cpp \
../src/arch/host/util_impl.cpp 

OBJS += \
./src/arch/host/global_variables_impl.o \
./src/arch/host/main_debug_mman.o \
./src/arch/host/printk_impl.o \
./src/arch/host/util_impl.o 

CPP_DEPS += \
./src/arch/host/global_variables_impl.d \
./src/arch/host/main_debug_mman.d \
./src/arch/host/printk_impl.d \
./src/arch/host/util_impl.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/host/%.o: ../src/arch/host/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\chap003\include" -include"D:\Pool\eclipse-workspace_aarch64\chap003\Debug-host\cxx_macros.h" -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


