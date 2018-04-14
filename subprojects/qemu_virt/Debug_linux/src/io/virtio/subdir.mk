################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioBlockConfig.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioBlockDriver.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioDriver.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioQueueDescriptor.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioQueueLayout.cpp 

OBJS += \
./src/io/virtio/VirtioBlockConfig.o \
./src/io/virtio/VirtioBlockDriver.o \
./src/io/virtio/VirtioDriver.o \
./src/io/virtio/VirtioQueueDescriptor.o \
./src/io/virtio/VirtioQueueLayout.o 

CPP_DEPS += \
./src/io/virtio/VirtioBlockConfig.d \
./src/io/virtio/VirtioBlockDriver.d \
./src/io/virtio/VirtioDriver.d \
./src/io/virtio/VirtioQueueDescriptor.d \
./src/io/virtio/VirtioQueueLayout.d 


# Each subdirectory must supply rules for building sources it contributes
src/io/virtio/VirtioBlockConfig.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioBlockConfig.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/virtio/VirtioBlockDriver.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioBlockDriver.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/virtio/VirtioDriver.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioDriver.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/virtio/VirtioQueueDescriptor.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioQueueDescriptor.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/virtio/VirtioQueueLayout.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioQueueLayout.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


