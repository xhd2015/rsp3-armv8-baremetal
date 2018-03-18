################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/PidManager.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/Process.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/ProcessManager.cpp 

OBJS += \
./src/schedule/PidManager.o \
./src/schedule/Process.o \
./src/schedule/ProcessManager.o 

CPP_DEPS += \
./src/schedule/PidManager.d \
./src/schedule/Process.d \
./src/schedule/ProcessManager.d 


# Each subdirectory must supply rules for building sources it contributes
src/schedule/PidManager.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/PidManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/schedule/Process.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/Process.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/schedule/ProcessManager.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/ProcessManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


