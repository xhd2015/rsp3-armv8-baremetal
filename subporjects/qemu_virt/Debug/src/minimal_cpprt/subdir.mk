################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_cpprt/__throw_bad_function_call.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_cpprt/operator_delete.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_cpprt/operator_new.cpp 

OBJS += \
./src/minimal_cpprt/__throw_bad_function_call.o \
./src/minimal_cpprt/operator_delete.o \
./src/minimal_cpprt/operator_new.o 

CPP_DEPS += \
./src/minimal_cpprt/__throw_bad_function_call.d \
./src/minimal_cpprt/operator_delete.d \
./src/minimal_cpprt/operator_new.d 


# Each subdirectory must supply rules for building sources it contributes
src/minimal_cpprt/__throw_bad_function_call.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_cpprt/__throw_bad_function_call.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/minimal_cpprt/operator_delete.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_cpprt/operator_delete.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/minimal_cpprt/operator_new.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_cpprt/operator_new.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


