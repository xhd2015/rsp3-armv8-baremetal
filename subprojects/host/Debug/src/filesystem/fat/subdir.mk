################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT16ExtBPB.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32Debugger.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32Entry.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32EntryTable.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32ExtBPB.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32ReadUtil.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATDirEntry.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATDirEntryTable.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATLongNameEntry.cpp \
D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT_FATBPB.cpp 

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
src/filesystem/fat/FAT16ExtBPB.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT16ExtBPB.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FAT32Debugger.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32Debugger.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FAT32Entry.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32Entry.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FAT32EntryTable.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32EntryTable.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FAT32ExtBPB.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32ExtBPB.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FAT32ReadUtil.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32ReadUtil.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FATDirEntry.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATDirEntry.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FATDirEntryTable.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATDirEntryTable.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FATLongNameEntry.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATLongNameEntry.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/filesystem/fat/FAT_FATBPB.o: D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT_FATBPB.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cygwin C++ Compiler'
	g++ -std=c++14 -I"D:\Pool\eclipse-workspace_aarch64\newspace\raspiOS\include" -includecxx_macros.h -O0 -Og -g3 -pedantic -pedantic-errors -Wall -Wconversion -c -nostdlib -Weffc++ -Wold-style-cast -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti $(USER_CXX_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


