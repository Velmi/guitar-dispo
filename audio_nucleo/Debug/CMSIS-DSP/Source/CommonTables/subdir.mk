################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP/Source/CommonTables/CommonTables.c \
../CMSIS-DSP/Source/CommonTables/CommonTablesF16.c \
../CMSIS-DSP/Source/CommonTables/arm_common_tables.c \
../CMSIS-DSP/Source/CommonTables/arm_common_tables_f16.c \
../CMSIS-DSP/Source/CommonTables/arm_const_structs.c \
../CMSIS-DSP/Source/CommonTables/arm_const_structs_f16.c \
../CMSIS-DSP/Source/CommonTables/arm_mve_tables.c \
../CMSIS-DSP/Source/CommonTables/arm_mve_tables_f16.c 

OBJS += \
./CMSIS-DSP/Source/CommonTables/CommonTables.o \
./CMSIS-DSP/Source/CommonTables/CommonTablesF16.o \
./CMSIS-DSP/Source/CommonTables/arm_common_tables.o \
./CMSIS-DSP/Source/CommonTables/arm_common_tables_f16.o \
./CMSIS-DSP/Source/CommonTables/arm_const_structs.o \
./CMSIS-DSP/Source/CommonTables/arm_const_structs_f16.o \
./CMSIS-DSP/Source/CommonTables/arm_mve_tables.o \
./CMSIS-DSP/Source/CommonTables/arm_mve_tables_f16.o 

C_DEPS += \
./CMSIS-DSP/Source/CommonTables/CommonTables.d \
./CMSIS-DSP/Source/CommonTables/CommonTablesF16.d \
./CMSIS-DSP/Source/CommonTables/arm_common_tables.d \
./CMSIS-DSP/Source/CommonTables/arm_common_tables_f16.d \
./CMSIS-DSP/Source/CommonTables/arm_const_structs.d \
./CMSIS-DSP/Source/CommonTables/arm_const_structs_f16.d \
./CMSIS-DSP/Source/CommonTables/arm_mve_tables.d \
./CMSIS-DSP/Source/CommonTables/arm_mve_tables_f16.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP/Source/CommonTables/%.o CMSIS-DSP/Source/CommonTables/%.su: ../CMSIS-DSP/Source/CommonTables/%.c CMSIS-DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/Include" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/PrivateInclude" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/ComputeLibrary/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2f-Source-2f-CommonTables

clean-CMSIS-2d-DSP-2f-Source-2f-CommonTables:
	-$(RM) ./CMSIS-DSP/Source/CommonTables/CommonTables.d ./CMSIS-DSP/Source/CommonTables/CommonTables.o ./CMSIS-DSP/Source/CommonTables/CommonTables.su ./CMSIS-DSP/Source/CommonTables/CommonTablesF16.d ./CMSIS-DSP/Source/CommonTables/CommonTablesF16.o ./CMSIS-DSP/Source/CommonTables/CommonTablesF16.su ./CMSIS-DSP/Source/CommonTables/arm_common_tables.d ./CMSIS-DSP/Source/CommonTables/arm_common_tables.o ./CMSIS-DSP/Source/CommonTables/arm_common_tables.su ./CMSIS-DSP/Source/CommonTables/arm_common_tables_f16.d ./CMSIS-DSP/Source/CommonTables/arm_common_tables_f16.o ./CMSIS-DSP/Source/CommonTables/arm_common_tables_f16.su ./CMSIS-DSP/Source/CommonTables/arm_const_structs.d ./CMSIS-DSP/Source/CommonTables/arm_const_structs.o ./CMSIS-DSP/Source/CommonTables/arm_const_structs.su ./CMSIS-DSP/Source/CommonTables/arm_const_structs_f16.d ./CMSIS-DSP/Source/CommonTables/arm_const_structs_f16.o ./CMSIS-DSP/Source/CommonTables/arm_const_structs_f16.su ./CMSIS-DSP/Source/CommonTables/arm_mve_tables.d ./CMSIS-DSP/Source/CommonTables/arm_mve_tables.o ./CMSIS-DSP/Source/CommonTables/arm_mve_tables.su ./CMSIS-DSP/Source/CommonTables/arm_mve_tables_f16.d ./CMSIS-DSP/Source/CommonTables/arm_mve_tables_f16.o ./CMSIS-DSP/Source/CommonTables/arm_mve_tables_f16.su

.PHONY: clean-CMSIS-2d-DSP-2f-Source-2f-CommonTables

