################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic/cpu_delay_with_nop.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic/cpu_halt.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic/error.cpp 

OBJS += \
./src/generic/cpu_delay_with_nop.o \
./src/generic/cpu_halt.o \
./src/generic/error.o 

CPP_DEPS += \
./src/generic/cpu_delay_with_nop.d \
./src/generic/cpu_halt.d \
./src/generic/error.d 


# Each subdirectory must supply rules for building sources it contributes
src/generic/cpu_delay_with_nop.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic/cpu_delay_with_nop.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/generic/cpu_halt.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic/cpu_halt.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/generic/error.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic/error.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


