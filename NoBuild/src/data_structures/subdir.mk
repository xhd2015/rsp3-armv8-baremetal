################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/data_structures/String.cpp \
../src/data_structures/StringRef.cpp 

OBJS += \
./src/data_structures/String.o \
./src/data_structures/StringRef.o 

CPP_DEPS += \
./src/data_structures/String.d \
./src/data_structures/StringRef.d 


# Each subdirectory must supply rules for building sources it contributes
src/data_structures/%.o: ../src/data_structures/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


