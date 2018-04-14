################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/uart/PL011.cpp \
/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/uart/XilinxUARTPS.cpp 

OBJS += \
./src/io/uart/PL011.o \
./src/io/uart/XilinxUARTPS.o 

CPP_DEPS += \
./src/io/uart/PL011.d \
./src/io/uart/XilinxUARTPS.d 


# Each subdirectory must supply rules for building sources it contributes
src/io/uart/PL011.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/uart/PL011.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/uart/XilinxUARTPS.o: /media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/uart/XilinxUARTPS.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include" -includecxx_macros.h -O0 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


