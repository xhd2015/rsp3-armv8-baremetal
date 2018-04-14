################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/SystemFeatures.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic_util.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp 

OBJS += \
./src/SystemFeatures.o \
./src/generic_util.o \
./src/global_variables.o 

CPP_DEPS += \
./src/SystemFeatures.d \
./src/generic_util.d \
./src/global_variables.d 


# Each subdirectory must supply rules for building sources it contributes
src/SystemFeatures.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/SystemFeatures.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/generic_util.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/generic_util.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/global_variables.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/global_variables.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


