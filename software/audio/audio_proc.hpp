#pragma once

#include <stdint.h>
#include <stddef.h>

#include "stm32h7xx_hal.h"
#include "filter.hpp"

#define BUFFER_SIZE 256

void process_data();
