################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/AddressSpaceDescriptor.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_aarch64.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualAddress.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualManager.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualMap.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualMemoryDefinition.cpp 

OBJS += \
./src/memory/AddressSpaceDescriptor.o \
./src/memory/MemoryChunk.o \
./src/memory/MemoryManager_aarch64.o \
./src/memory/VirtualAddress.o \
./src/memory/VirtualManager.o \
./src/memory/VirtualMap.o \
./src/memory/VirtualMemoryDefinition.o 

CPP_DEPS += \
./src/memory/AddressSpaceDescriptor.d \
./src/memory/MemoryChunk.d \
./src/memory/MemoryManager_aarch64.d \
./src/memory/VirtualAddress.d \
./src/memory/VirtualManager.d \
./src/memory/VirtualMap.d \
./src/memory/VirtualMemoryDefinition.d 


# Each subdirectory must supply rules for building sources it contributes
src/memory/AddressSpaceDescriptor.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/AddressSpaceDescriptor.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/MemoryChunk.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/MemoryManager_aarch64.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_aarch64.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/VirtualAddress.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualAddress.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/VirtualManager.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualManager.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/VirtualMap.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualMap.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/memory/VirtualMemoryDefinition.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualMemoryDefinition.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


