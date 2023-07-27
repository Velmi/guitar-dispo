################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP/Source/ControllerFunctions/ControllerFunctions.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_f32.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q15.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q31.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_f32.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q15.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q31.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_f32.c \
../CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_q31.c 

OBJS += \
./CMSIS-DSP/Source/ControllerFunctions/ControllerFunctions.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_f32.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q15.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q31.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_f32.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q15.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q31.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_f32.o \
./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_q31.o 

C_DEPS += \
./CMSIS-DSP/Source/ControllerFunctions/ControllerFunctions.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_f32.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q15.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q31.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_f32.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q15.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q31.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_f32.d \
./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_q31.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP/Source/ControllerFunctions/%.o CMSIS-DSP/Source/ControllerFunctions/%.su: ../CMSIS-DSP/Source/ControllerFunctions/%.c CMSIS-DSP/Source/ControllerFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/Include" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/PrivateInclude" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/ComputeLibrary/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2f-Source-2f-ControllerFunctions

clean-CMSIS-2d-DSP-2f-Source-2f-ControllerFunctions:
	-$(RM) ./CMSIS-DSP/Source/ControllerFunctions/ControllerFunctions.d ./CMSIS-DSP/Source/ControllerFunctions/ControllerFunctions.o ./CMSIS-DSP/Source/ControllerFunctions/ControllerFunctions.su ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_f32.d ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_f32.o ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_f32.su ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q15.d ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q15.o ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q15.su ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q31.d ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q31.o ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_init_q31.su ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_f32.d ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_f32.o ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_f32.su ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q15.d ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q15.o ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q15.su ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q31.d ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q31.o ./CMSIS-DSP/Source/ControllerFunctions/arm_pid_reset_q31.su ./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_f32.d ./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_f32.o ./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_f32.su ./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_q31.d ./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_q31.o ./CMSIS-DSP/Source/ControllerFunctions/arm_sin_cos_q31.su

.PHONY: clean-CMSIS-2d-DSP-2f-Source-2f-ControllerFunctions

