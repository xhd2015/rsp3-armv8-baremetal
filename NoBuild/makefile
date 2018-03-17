################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subprojects/user_space/Debug/src/minimal_crt/subdir.mk
-include subprojects/user_space/Debug/src/minimal_cpprt/subdir.mk
-include subprojects/user_space/Debug/src/memory/subdir.mk
-include subprojects/user_space/Debug/src/io/subdir.mk
-include subprojects/user_space/Debug/src/arch/user_space/subdir.mk
-include subprojects/user_space/Debug/src/arch/common_aarch64/mmu/subdir.mk
-include subprojects/user_space/Debug/src/subdir.mk
-include subprojects/user_space/Debug/subdir.mk
-include subprojects/raspi3/Debug/src/test/subdir.mk
-include subprojects/raspi3/Debug/src/minimal_crt/subdir.mk
-include subprojects/raspi3/Debug/src/minimal_cpprt/subdir.mk
-include subprojects/raspi3/Debug/src/memory/subdir.mk
-include subprojects/raspi3/Debug/src/io/subdir.mk
-include subprojects/raspi3/Debug/src/filesystem/fat/subdir.mk
-include subprojects/raspi3/Debug/src/default_impl/subdir.mk
-include subprojects/raspi3/Debug/src/data_structures/subdir.mk
-include subprojects/raspi3/Debug/src/arch/user_space/subdir.mk
-include subprojects/raspi3/Debug/src/arch/qemu_virt/subdir.mk
-include subprojects/raspi3/Debug/src/arch/common_aarch64/mmu/subdir.mk
-include subprojects/raspi3/Debug/src/arch/common_aarch64/exception/subdir.mk
-include subprojects/raspi3/Debug/src/subdir.mk
-include subprojects/raspi3/Debug/subdir.mk
-include subprojects/qemu_virt/Debug/src/test/subdir.mk
-include subprojects/qemu_virt/Debug/src/minimal_crt/subdir.mk
-include subprojects/qemu_virt/Debug/src/minimal_cpprt/subdir.mk
-include subprojects/qemu_virt/Debug/src/memory/subdir.mk
-include subprojects/qemu_virt/Debug/src/io/subdir.mk
-include subprojects/qemu_virt/Debug/src/filesystem/fat/subdir.mk
-include subprojects/qemu_virt/Debug/src/default_impl/subdir.mk
-include subprojects/qemu_virt/Debug/src/data_structures/subdir.mk
-include subprojects/qemu_virt/Debug/src/arch/user_space/subdir.mk
-include subprojects/qemu_virt/Debug/src/arch/qemu_virt/subdir.mk
-include subprojects/qemu_virt/Debug/src/arch/common_aarch64/mmu/subdir.mk
-include subprojects/qemu_virt/Debug/src/arch/common_aarch64/exception/subdir.mk
-include subprojects/qemu_virt/Debug/src/subdir.mk
-include subprojects/qemu_virt/Debug/subdir.mk
-include subprojects/host/Debug/src/test/subdir.mk
-include subprojects/host/Debug/src/minimal_crt/subdir.mk
-include subprojects/host/Debug/src/minimal_cpprt/subdir.mk
-include subprojects/host/Debug/src/memory/subdir.mk
-include subprojects/host/Debug/src/io/subdir.mk
-include subprojects/host/Debug/src/filesystem/fat/subdir.mk
-include subprojects/host/Debug/src/default_impl/subdir.mk
-include subprojects/host/Debug/src/data_structures/subdir.mk
-include subprojects/host/Debug/src/arch/user_space/subdir.mk
-include subprojects/host/Debug/src/arch/qemu_virt/subdir.mk
-include subprojects/host/Debug/src/arch/host/subdir.mk
-include subprojects/host/Debug/src/arch/common_aarch64/mmu/subdir.mk
-include subprojects/host/Debug/src/arch/common_aarch64/exception/subdir.mk
-include subprojects/host/Debug/src/subdir.mk
-include subprojects/host/Debug/subdir.mk
-include src/test/subdir.mk
-include src/schedule/subdir.mk
-include src/minimal_crt/stolen_from_libgcc/subdir.mk
-include src/minimal_crt/subdir.mk
-include src/minimal_cpprt/subdir.mk
-include src/memory/subdir.mk
-include src/io/subdir.mk
-include src/filesystem/fat/subdir.mk
-include src/data_structures/subdir.mk
-include src/arch/user_space/subdir.mk
-include src/arch/raspi3/subdir.mk
-include src/arch/qemu_virt/subdir.mk
-include src/arch/host/subdir.mk
-include src/arch/common_aarch64/mmu/subdir.mk
-include src/arch/common_aarch64/exception/subdir.mk
-include src/subdir.mk
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
all: raspiOS_overview

# Tool invocations
raspiOS_overview: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	aarch64-elf-g++  -o "raspiOS_overview" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(EXECUTABLES)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) raspiOS_overview
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
