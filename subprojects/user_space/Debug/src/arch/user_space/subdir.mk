################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/exit.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/init.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/user_main_fork_process.cpp 

OBJS += \
./src/arch/user_space/exit.o \
./src/arch/user_space/init.o \
./src/arch/user_space/user_main_fork_process.o 

CPP_DEPS += \
./src/arch/user_space/exit.d \
./src/arch/user_space/init.d \
./src/arch/user_space/user_main_fork_process.d 


# Each subdirectory must supply rules for building sources it contributes
src/arch/user_space/exit.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/exit.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/arch/user_space/init.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/init.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/arch/user_space/user_main_fork_process.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/user_space/user_main_fork_process.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


