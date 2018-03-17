################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/minimal_crt/stolen_from_libgcc/memcmp.c \
../src/minimal_crt/stolen_from_libgcc/memcpy.c \
../src/minimal_crt/stolen_from_libgcc/memmove.c \
../src/minimal_crt/stolen_from_libgcc/memset.c 

OBJS += \
./src/minimal_crt/stolen_from_libgcc/memcmp.o \
./src/minimal_crt/stolen_from_libgcc/memcpy.o \
./src/minimal_crt/stolen_from_libgcc/memmove.o \
./src/minimal_crt/stolen_from_libgcc/memset.o 

C_DEPS += \
./src/minimal_crt/stolen_from_libgcc/memcmp.d \
./src/minimal_crt/stolen_from_libgcc/memcpy.d \
./src/minimal_crt/stolen_from_libgcc/memmove.d \
./src/minimal_crt/stolen_from_libgcc/memset.d 


# Each subdirectory must supply rules for building sources it contributes
src/minimal_crt/stolen_from_libgcc/%.o: ../src/minimal_crt/stolen_from_libgcc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	aarch64-elf-gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


