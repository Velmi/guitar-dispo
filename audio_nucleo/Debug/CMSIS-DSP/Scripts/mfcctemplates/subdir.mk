################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP/Scripts/mfcctemplates/mfccdata.c 

OBJS += \
./CMSIS-DSP/Scripts/mfcctemplates/mfccdata.o 

C_DEPS += \
./CMSIS-DSP/Scripts/mfcctemplates/mfccdata.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP/Scripts/mfcctemplates/%.o CMSIS-DSP/Scripts/mfcctemplates/%.su: ../CMSIS-DSP/Scripts/mfcctemplates/%.c CMSIS-DSP/Scripts/mfcctemplates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/Include" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/PrivateInclude" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2f-Scripts-2f-mfcctemplates

clean-CMSIS-2d-DSP-2f-Scripts-2f-mfcctemplates:
	-$(RM) ./CMSIS-DSP/Scripts/mfcctemplates/mfccdata.d ./CMSIS-DSP/Scripts/mfcctemplates/mfccdata.o ./CMSIS-DSP/Scripts/mfcctemplates/mfccdata.su

.PHONY: clean-CMSIS-2d-DSP-2f-Scripts-2f-mfcctemplates

