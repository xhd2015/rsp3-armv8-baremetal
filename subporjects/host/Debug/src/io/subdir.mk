################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/ByteReader.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/SectorReader.cpp 

OBJS += \
./src/io/ByteReader.o \
./src/io/SectorReader.o 

CPP_DEPS += \
./src/io/ByteReader.d \
./src/io/SectorReader.d 


# Each subdirectory must supply rules for building sources it contributes
src/io/ByteReader.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/ByteReader.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/SectorReader.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/SectorReader.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


