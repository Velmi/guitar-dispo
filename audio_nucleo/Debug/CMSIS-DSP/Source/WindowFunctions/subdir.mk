################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP/Source/WindowFunctions/WindowFunctions.c \
../CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hamming_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hamming_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hanning_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hanning_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft95_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_hft95_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f64.c \
../CMSIS-DSP/Source/WindowFunctions/arm_welch_f32.c \
../CMSIS-DSP/Source/WindowFunctions/arm_welch_f64.c 

OBJS += \
./CMSIS-DSP/Source/WindowFunctions/WindowFunctions.o \
./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f64.o \
./CMSIS-DSP/Source/WindowFunctions/arm_welch_f32.o \
./CMSIS-DSP/Source/WindowFunctions/arm_welch_f64.o 

C_DEPS += \
./CMSIS-DSP/Source/WindowFunctions/WindowFunctions.d \
./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f64.d \
./CMSIS-DSP/Source/WindowFunctions/arm_welch_f32.d \
./CMSIS-DSP/Source/WindowFunctions/arm_welch_f64.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP/Source/WindowFunctions/%.o CMSIS-DSP/Source/WindowFunctions/%.su: ../CMSIS-DSP/Source/WindowFunctions/%.c CMSIS-DSP/Source/WindowFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/Include" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/PrivateInclude" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/ComputeLibrary/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2f-Source-2f-WindowFunctions

clean-CMSIS-2d-DSP-2f-Source-2f-WindowFunctions:
	-$(RM) ./CMSIS-DSP/Source/WindowFunctions/WindowFunctions.d ./CMSIS-DSP/Source/WindowFunctions/WindowFunctions.o ./CMSIS-DSP/Source/WindowFunctions/WindowFunctions.su ./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_bartlett_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_blackman_harris_92db_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hamming_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hanning_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft116d_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft144d_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft169d_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft196d_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft223d_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft248d_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft90d_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_hft95_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3a_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall3b_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4a_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f64.o
	-$(RM) ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4b_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_nuttall4c_f64.su ./CMSIS-DSP/Source/WindowFunctions/arm_welch_f32.d ./CMSIS-DSP/Source/WindowFunctions/arm_welch_f32.o ./CMSIS-DSP/Source/WindowFunctions/arm_welch_f32.su ./CMSIS-DSP/Source/WindowFunctions/arm_welch_f64.d ./CMSIS-DSP/Source/WindowFunctions/arm_welch_f64.o ./CMSIS-DSP/Source/WindowFunctions/arm_welch_f64.su

.PHONY: clean-CMSIS-2d-DSP-2f-Source-2f-WindowFunctions

