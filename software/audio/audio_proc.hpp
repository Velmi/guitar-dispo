#pragma once

#include <stdint.h>
#include <stddef.h>

#include "stm32h7xx_hal.h"
#include "filter.hpp"

#define BUFFER_SIZE 128
#define PROCESS_BLOCK_SIZE (BUFFER_SIZE / 4)
#define AUDIO_SAMPLING_FREQ_HZ 48000

void process_data();
