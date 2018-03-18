################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestDoublyLinkedList.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestMemoryManager.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestPidManager.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestVector.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/testFAT32SizeIsSecSize.cpp 

OBJS += \
./src/test/TestDoublyLinkedList.o \
./src/test/TestMemoryManager.o \
./src/test/TestPidManager.o \
./src/test/TestVector.o \
./src/test/testFAT32SizeIsSecSize.o 

CPP_DEPS += \
./src/test/TestDoublyLinkedList.d \
./src/test/TestMemoryManager.d \
./src/test/TestPidManager.d \
./src/test/TestVector.d \
./src/test/testFAT32SizeIsSecSize.d 


# Each subdirectory must supply rules for building sources it contributes
src/test/TestDoublyLinkedList.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestDoublyLinkedList.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/test/TestMemoryManager.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestMemoryManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/test/TestPidManager.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestPidManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/test/TestVector.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestVector.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/test/testFAT32SizeIsSecSize.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/testFAT32SizeIsSecSize.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


