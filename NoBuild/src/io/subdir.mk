################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/io/ByteReader.cpp \
../src/io/Output.cpp \
../src/io/SectorReader.cpp \
../src/io/SectorReader_host.cpp \
../src/io/printk_host.cpp \
../src/io/printk_no_arch_impl.cpp \
../src/io/printk_qemu_virt.cpp \
../src/io/printk_user_space.cpp 

OBJS += \
./src/io/ByteReader.o \
./src/io/Output.o \
./src/io/SectorReader.o \
./src/io/SectorReader_host.o \
./src/io/printk_host.o \
./src/io/printk_no_arch_impl.o \
./src/io/printk_qemu_virt.o \
./src/io/printk_user_space.o 

CPP_DEPS += \
./src/io/ByteReader.d \
./src/io/Output.d \
./src/io/SectorReader.d \
./src/io/SectorReader_host.d \
./src/io/printk_host.d \
./src/io/printk_no_arch_impl.d \
./src/io/printk_qemu_virt.d \
./src/io/printk_user_space.d 


# Each subdirectory must supply rules for building sources it contributes
src/io/%.o: ../src/io/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


