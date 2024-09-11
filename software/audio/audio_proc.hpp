#pragma once

#include <stdint.h>
#include <stddef.h>

#include "stm32h7xx_hal.h"
#include "filter.hpp"

#define BUFFER_SIZE 128

int32_t init_filter();
void process_data();

//void HAL_I2SEx_TxRxCpltCallback(I2S_HandleTypeDef *hi2s);

//void HAL_I2SEx_TxRxHalfCpltCallback(I2S_HandleTypeDef *hi2s);

