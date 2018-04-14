################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/schedule/subdir.mk
-include src/minimal_crt/subdir.mk
-include src/minimal_cpprt/subdir.mk
-include src/memory/subdir.mk
-include src/io/virtio/subdir.mk
-include src/io/uart/subdir.mk
-include src/io/sd/subdir.mk
-include src/io/subdir.mk
-include src/interrupt/subdir.mk
-include src/generic/subdir.mk
-include src/filesystem/fat/subdir.mk
-include src/filesystem/subdir.mk
-include src/data_structures/subdir.mk
-include src/arch/qemu_virt/subdir.mk
-include src/subdir.mk
-include include/programming/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: qemu_virt.elf

# Tool invocations
qemu_virt.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	aarch64-elf-g++ $(USER_LINKER_FLAGS) -o "qemu_virt.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) qemu_virt.elf
	-@echo ' '

.PHONY: all clean dependents

-include ../makefile.targets
