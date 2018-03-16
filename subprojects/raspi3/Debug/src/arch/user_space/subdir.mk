################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/user_main_hello_kernel.cpp 

OBJS += \
./src/arch/user_space/user_main_hello_kernel.o 

CPP_DEPS += \
./src/arch/user_space/user_main_hello_kernel.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/user_space/user_main_hello_kernel.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/user_main_hello_kernel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


