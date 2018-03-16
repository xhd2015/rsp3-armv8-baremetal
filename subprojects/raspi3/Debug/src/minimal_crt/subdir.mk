################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memcmp.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memcpy.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memmove.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memset.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/strlen.cpp 

OBJS += \
./src/minimal_crt/memcmp.o \
./src/minimal_crt/memcpy.o \
./src/minimal_crt/memmove.o \
./src/minimal_crt/memset.o \
./src/minimal_crt/strlen.o 

CPP_DEPS += \
./src/minimal_crt/memcmp.d \
./src/minimal_crt/memcpy.d \
./src/minimal_crt/memmove.d \
./src/minimal_crt/memset.d \
./src/minimal_crt/strlen.d 


# Each subdirectory must supply rules for building sources it contributes
src/minimal_crt/memcmp.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memcmp.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/minimal_crt/memcpy.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memcpy.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/minimal_crt/memmove.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memmove.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/minimal_crt/memset.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/memset.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/minimal_crt/strlen.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/minimal_crt/strlen.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -DARCH_IS_host -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Werror -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


