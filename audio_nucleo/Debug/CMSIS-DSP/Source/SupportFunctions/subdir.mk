################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS-DSP/Source/SupportFunctions/SupportFunctions.c \
../CMSIS-DSP/Source/SupportFunctions/SupportFunctionsF16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_bubble_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_copy_f16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_copy_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_copy_f64.c \
../CMSIS-DSP/Source/SupportFunctions/arm_copy_q15.c \
../CMSIS-DSP/Source/SupportFunctions/arm_copy_q31.c \
../CMSIS-DSP/Source/SupportFunctions/arm_copy_q7.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f16_to_f64.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f16_to_float.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f16_to_q15.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f64_to_f16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f64_to_float.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q15.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q31.c \
../CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q7.c \
../CMSIS-DSP/Source/SupportFunctions/arm_fill_f16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_fill_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_fill_f64.c \
../CMSIS-DSP/Source/SupportFunctions/arm_fill_q15.c \
../CMSIS-DSP/Source/SupportFunctions/arm_fill_q31.c \
../CMSIS-DSP/Source/SupportFunctions/arm_fill_q7.c \
../CMSIS-DSP/Source/SupportFunctions/arm_float_to_f16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_float_to_f64.c \
../CMSIS-DSP/Source/SupportFunctions/arm_float_to_q15.c \
../CMSIS-DSP/Source/SupportFunctions/arm_float_to_q31.c \
../CMSIS-DSP/Source/SupportFunctions/arm_float_to_q7.c \
../CMSIS-DSP/Source/SupportFunctions/arm_heap_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_insertion_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f64.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q15_to_float.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q31.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q7.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q31_to_f64.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q31_to_float.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q15.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q7.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q7_to_f64.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q7_to_float.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q15.c \
../CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q31.c \
../CMSIS-DSP/Source/SupportFunctions/arm_quick_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_selection_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_sort_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_sort_init_f32.c \
../CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f16.c \
../CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f32.c 

OBJS += \
./CMSIS-DSP/Source/SupportFunctions/SupportFunctions.o \
./CMSIS-DSP/Source/SupportFunctions/SupportFunctionsF16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_bubble_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_f16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_f64.o \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_q15.o \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_q31.o \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_q7.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_f64.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_float.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_q15.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_f16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_float.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q15.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q31.o \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q7.o \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_f16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_f64.o \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_q15.o \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_q31.o \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_q7.o \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f64.o \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q15.o \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q31.o \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q7.o \
./CMSIS-DSP/Source/SupportFunctions/arm_heap_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_insertion_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f64.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_float.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q31.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q7.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_f64.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_float.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q15.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q7.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_f64.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_float.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q15.o \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q31.o \
./CMSIS-DSP/Source/SupportFunctions/arm_quick_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_selection_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_sort_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_sort_init_f32.o \
./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f16.o \
./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f32.o 

C_DEPS += \
./CMSIS-DSP/Source/SupportFunctions/SupportFunctions.d \
./CMSIS-DSP/Source/SupportFunctions/SupportFunctionsF16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_bubble_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_f16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_f64.d \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_q15.d \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_q31.d \
./CMSIS-DSP/Source/SupportFunctions/arm_copy_q7.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_f64.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_float.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_q15.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_f16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_float.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q15.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q31.d \
./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q7.d \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_f16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_f64.d \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_q15.d \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_q31.d \
./CMSIS-DSP/Source/SupportFunctions/arm_fill_q7.d \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f64.d \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q15.d \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q31.d \
./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q7.d \
./CMSIS-DSP/Source/SupportFunctions/arm_heap_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_insertion_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f64.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_float.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q31.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q7.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_f64.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_float.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q15.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q7.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_f64.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_float.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q15.d \
./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q31.d \
./CMSIS-DSP/Source/SupportFunctions/arm_quick_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_selection_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_sort_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_sort_init_f32.d \
./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f16.d \
./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f32.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS-DSP/Source/SupportFunctions/%.o CMSIS-DSP/Source/SupportFunctions/%.su: ../CMSIS-DSP/Source/SupportFunctions/%.c CMSIS-DSP/Source/SupportFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/Include" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/PrivateInclude" -I"/run/media/markus/Daten/Dokumente/Master/1_Semester/Projekt/stm/audio_nucleo/CMSIS-DSP/ComputeLibrary/Include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-CMSIS-2d-DSP-2f-Source-2f-SupportFunctions

clean-CMSIS-2d-DSP-2f-Source-2f-SupportFunctions:
	-$(RM) ./CMSIS-DSP/Source/SupportFunctions/SupportFunctions.d ./CMSIS-DSP/Source/SupportFunctions/SupportFunctions.o ./CMSIS-DSP/Source/SupportFunctions/SupportFunctions.su ./CMSIS-DSP/Source/SupportFunctions/SupportFunctionsF16.d ./CMSIS-DSP/Source/SupportFunctions/SupportFunctionsF16.o ./CMSIS-DSP/Source/SupportFunctions/SupportFunctionsF16.su ./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f16.d ./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f16.o ./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f16.su ./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_barycenter_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_bitonic_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_bubble_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_bubble_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_bubble_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f16.d ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f16.o ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f16.su ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f64.d ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f64.o ./CMSIS-DSP/Source/SupportFunctions/arm_copy_f64.su ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q15.d ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q15.o ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q15.su ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q31.d ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q31.o ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q31.su ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q7.d ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q7.o ./CMSIS-DSP/Source/SupportFunctions/arm_copy_q7.su ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_f64.d ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_f64.o ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_f64.su ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_float.d ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_float.o ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_float.su ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_q15.d ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_q15.o ./CMSIS-DSP/Source/SupportFunctions/arm_f16_to_q15.su ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_f16.d ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_f16.o ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_f16.su ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_float.d ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_float.o ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_float.su ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q15.d ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q15.o ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q15.su ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q31.d ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q31.o ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q31.su ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q7.d ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q7.o ./CMSIS-DSP/Source/SupportFunctions/arm_f64_to_q7.su ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f16.d ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f16.o ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f16.su ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f64.d ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f64.o ./CMSIS-DSP/Source/SupportFunctions/arm_fill_f64.su ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q15.d ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q15.o ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q15.su ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q31.d ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q31.o ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q31.su ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q7.d ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q7.o ./CMSIS-DSP/Source/SupportFunctions/arm_fill_q7.su ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f16.d ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f16.o ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f16.su ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f64.d ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f64.o ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_f64.su ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q15.d ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q15.o ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q15.su ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q31.d ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q31.o ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q31.su ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q7.d ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q7.o ./CMSIS-DSP/Source/SupportFunctions/arm_float_to_q7.su ./CMSIS-DSP/Source/SupportFunctions/arm_heap_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_heap_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_heap_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_insertion_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_insertion_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_insertion_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_merge_sort_init_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f16.d ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f16.o ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f16.su ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f64.d ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f64.o
	-$(RM) ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_f64.su ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_float.d ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_float.o ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_float.su ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q31.d ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q31.o ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q31.su ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q7.d ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q7.o ./CMSIS-DSP/Source/SupportFunctions/arm_q15_to_q7.su ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_f64.d ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_f64.o ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_f64.su ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_float.d ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_float.o ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_float.su ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q15.d ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q15.o ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q15.su ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q7.d ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q7.o ./CMSIS-DSP/Source/SupportFunctions/arm_q31_to_q7.su ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_f64.d ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_f64.o ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_f64.su ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_float.d ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_float.o ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_float.su ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q15.d ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q15.o ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q15.su ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q31.d ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q31.o ./CMSIS-DSP/Source/SupportFunctions/arm_q7_to_q31.su ./CMSIS-DSP/Source/SupportFunctions/arm_quick_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_quick_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_quick_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_selection_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_selection_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_selection_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_sort_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_sort_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_sort_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_sort_init_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_sort_init_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_sort_init_f32.su ./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f16.d ./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f16.o ./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f16.su ./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f32.d ./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f32.o ./CMSIS-DSP/Source/SupportFunctions/arm_weighted_sum_f32.su

.PHONY: clean-CMSIS-2d-DSP-2f-Source-2f-SupportFunctions

