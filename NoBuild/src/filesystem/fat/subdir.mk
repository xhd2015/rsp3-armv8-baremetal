################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/filesystem/fat/FAT16ExtBPB.cpp \
../src/filesystem/fat/FAT32Debugger.cpp \
../src/filesystem/fat/FAT32Entry.cpp \
../src/filesystem/fat/FAT32EntryTable.cpp \
../src/filesystem/fat/FAT32ExtBPB.cpp \
../src/filesystem/fat/FAT32ReadUtil.cpp \
../src/filesystem/fat/FATDirEntry.cpp \
../src/filesystem/fat/FATDirEntryTable.cpp \
../src/filesystem/fat/FATLongNameEntry.cpp \
../src/filesystem/fat/FAT_FATBPB.cpp 

OBJS += \
./src/filesystem/fat/FAT16ExtBPB.o \
./src/filesystem/fat/FAT32Debugger.o \
./src/filesystem/fat/FAT32Entry.o \
./src/filesystem/fat/FAT32EntryTable.o \
./src/filesystem/fat/FAT32ExtBPB.o \
./src/filesystem/fat/FAT32ReadUtil.o \
./src/filesystem/fat/FATDirEntry.o \
./src/filesystem/fat/FATDirEntryTable.o \
./src/filesystem/fat/FATLongNameEntry.o \
./src/filesystem/fat/FAT_FATBPB.o 

CPP_DEPS += \
./src/filesystem/fat/FAT16ExtBPB.d \
./src/filesystem/fat/FAT32Debugger.d \
./src/filesystem/fat/FAT32Entry.d \
./src/filesystem/fat/FAT32EntryTable.d \
./src/filesystem/fat/FAT32ExtBPB.d \
./src/filesystem/fat/FAT32ReadUtil.d \
./src/filesystem/fat/FATDirEntry.d \
./src/filesystem/fat/FATDirEntryTable.d \
./src/filesystem/fat/FATLongNameEntry.d \
./src/filesystem/fat/FAT_FATBPB.d 


# Each subdirectory must supply rules for building sources it contributes
src/filesystem/fat/%.o: ../src/filesystem/fat/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	aarch64-elf-g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


