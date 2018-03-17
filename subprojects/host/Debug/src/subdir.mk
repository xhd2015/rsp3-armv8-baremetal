################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic_util.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp 

OBJS += \
./src/generic_util.o \
./src/global_variables.o 

CPP_DEPS += \
./src/generic_util.d \
./src/global_variables.d 


# Each subdirectory must supply rules for building sources it contributes
src/generic_util.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic_util.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/global_variables.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


