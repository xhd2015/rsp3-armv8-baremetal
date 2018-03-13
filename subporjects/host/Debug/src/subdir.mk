################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic_util.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/printk.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/printk_host.cpp 

OBJS += \
./src/generic_util.o \
./src/global_variables.o \
./src/printk.o \
./src/printk_host.o 

CPP_DEPS += \
./src/generic_util.d \
./src/global_variables.d \
./src/printk.d \
./src/printk_host.d 


# Each subdirectory must supply rules for building sources it contributes
src/generic_util.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic_util.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/global_variables.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/printk.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/printk.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/printk_host.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/printk_host.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


