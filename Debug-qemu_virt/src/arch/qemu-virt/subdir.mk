################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/arch/qemu-virt/crt0.cpp \
../src/arch/qemu-virt/printk-impl.cpp \
../src/arch/qemu-virt/util.cpp 

OBJS += \
./src/arch/qemu-virt/crt0.o \
./src/arch/qemu-virt/printk-impl.o \
./src/arch/qemu-virt/util.o 

CPP_DEPS += \
./src/arch/qemu-virt/crt0.d \
./src/arch/qemu-virt/printk-impl.d \
./src/arch/qemu-virt/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/qemu-virt/%.o: ../src/arch/qemu-virt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\chap003\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


