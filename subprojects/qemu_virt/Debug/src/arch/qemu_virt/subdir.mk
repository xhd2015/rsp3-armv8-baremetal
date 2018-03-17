################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/qemu_virt/crt0.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/qemu_virt/main_run_process.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/qemu_virt/util.cpp 

OBJS += \
./src/arch/qemu_virt/crt0.o \
./src/arch/qemu_virt/main_run_process.o \
./src/arch/qemu_virt/util.o 

CPP_DEPS += \
./src/arch/qemu_virt/crt0.d \
./src/arch/qemu_virt/main_run_process.d \
./src/arch/qemu_virt/util.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/qemu_virt/crt0.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/qemu_virt/crt0.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/arch/qemu_virt/main_run_process.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/qemu_virt/main_run_process.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/arch/qemu_virt/util.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/qemu_virt/util.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


