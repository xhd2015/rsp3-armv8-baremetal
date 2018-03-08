################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/io/ByteReader.cpp \
../src/io/SectorReader_host.cpp 

OBJS += \
./src/io/ByteReader.o \
./src/io/SectorReader_host.o 

CPP_DEPS += \
./src/io/ByteReader.d \
./src/io/SectorReader_host.d 


# Each subdirectory must supply rules for building sources it contributes
src/io/%.o: ../src/io/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\chap003\include" -include"D:\Pool\eclipse-workspace_aarch64\chap003\Debug-host\cxx_macros.h" -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


