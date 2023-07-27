################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP/Source/SVMFunctions/SVMFunctions.c \
../CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c \
../CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c 

OBJS += \
./CMSIS-DSP/Source/SVMFunctions/SVMFunctions.o \
./CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o 

C_DEPS += \
./CMSIS-DSP/Source/SVMFunctions/SVMFunctions.d \
./CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d \
./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP/Source/SVMFunctions/%.o CMSIS-DSP/Source/SVMFunctions/%.su: ../CMSIS-DSP/Source/SVMFunctions/%.c CMSIS-DSP/Source/SVMFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/Include" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/PrivateInclude" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/ComputeLibrary/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2f-Source-2f-SVMFunctions

clean-CMSIS-2d-DSP-2f-Source-2f-SVMFunctions:
	-$(RM) ./CMSIS-DSP/Source/SVMFunctions/SVMFunctions.d ./CMSIS-DSP/Source/SVMFunctions/SVMFunctions.o ./CMSIS-DSP/Source/SVMFunctions/SVMFunctions.su ./CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.d ./CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.o ./CMSIS-DSP/Source/SVMFunctions/SVMFunctionsF16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_init_f32.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.su ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o ./CMSIS-DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.su

.PHONY: clean-CMSIS-2d-DSP-2f-Source-2f-SVMFunctions

