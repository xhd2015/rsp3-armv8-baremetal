################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/ByteReader.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/Output.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/SectorReader.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_host.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_no_arch_impl.cpp 

OBJS += \
./src/io/ByteReader.o \
./src/io/Output.o \
./src/io/SectorReader.o \
./src/io/printk_host.o \
./src/io/printk_no_arch_impl.o 

CPP_DEPS += \
./src/io/ByteReader.d \
./src/io/Output.d \
./src/io/SectorReader.d \
./src/io/printk_host.d \
./src/io/printk_no_arch_impl.d 


# Each subdirectory must supply rules for building sources it contributes
src/io/ByteReader.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/ByteReader.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/Output.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/Output.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/SectorReader.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/SectorReader.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/printk_host.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_host.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/printk_no_arch_impl.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_no_arch_impl.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


