################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/arch/qemu_virt/crt0.cpp \
../src/arch/qemu_virt/main_aarch64_instructions.cpp \
../src/arch/qemu_virt/main_run_kernel_application.cpp \
../src/arch/qemu_virt/main_run_user_application.cpp \
../src/arch/qemu_virt/main_stolen_mmu.cpp \
../src/arch/qemu_virt/main_test_adrp_instruction.cpp \
../src/arch/qemu_virt/main_test_stp.cpp \
../src/arch/qemu_virt/main_test_svc.cpp \
../src/arch/qemu_virt/main_verify_address_tag.cpp \
../src/arch/qemu_virt/main_virtual_memory.cpp \
../src/arch/qemu_virt/util.cpp 

OBJS += \
./src/arch/qemu_virt/crt0.o \
./src/arch/qemu_virt/main_aarch64_instructions.o \
./src/arch/qemu_virt/main_run_kernel_application.o \
./src/arch/qemu_virt/main_run_user_application.o \
./src/arch/qemu_virt/main_stolen_mmu.o \
./src/arch/qemu_virt/main_test_adrp_instruction.o \
./src/arch/qemu_virt/main_test_stp.o \
./src/arch/qemu_virt/main_test_svc.o \
./src/arch/qemu_virt/main_verify_address_tag.o \
./src/arch/qemu_virt/main_virtual_memory.o \
./src/arch/qemu_virt/util.o 

CPP_DEPS += \
./src/arch/qemu_virt/crt0.d \
./src/arch/qemu_virt/main_aarch64_instructions.d \
./src/arch/qemu_virt/main_run_kernel_application.d \
./src/arch/qemu_virt/main_run_user_application.d \
./src/arch/qemu_virt/main_stolen_mmu.d \
./src/arch/qemu_virt/main_test_adrp_instruction.d \
./src/arch/qemu_virt/main_test_stp.d \
./src/arch/qemu_virt/main_test_svc.d \
./src/arch/qemu_virt/main_verify_address_tag.d \
./src/arch/qemu_virt/main_virtual_memory.d \
./src/arch/qemu_virt/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/qemu_virt/%.o: ../src/arch/qemu_virt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


