################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/Output.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_no_arch_impl.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_user_space.cpp 

OBJS += \
./src/io/Output.o \
./src/io/printk_no_arch_impl.o \
./src/io/printk_user_space.o 

CPP_DEPS += \
./src/io/Output.d \
./src/io/printk_no_arch_impl.d \
./src/io/printk_user_space.d 


# Each subdirectory must supply rules for building sources it contributes
src/io/Output.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/Output.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O1 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/printk_no_arch_impl.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_no_arch_impl.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O1 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/io/printk_user_space.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/printk_user_space.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O1 -g3 -pedantic -pedantic-errors -Wall -Werror -c $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


