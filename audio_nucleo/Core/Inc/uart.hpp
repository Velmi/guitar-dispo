#ifndef UART_H
#define UART_H

#include <string>

#include "stm32h7xx_hal.h"

extern UART_HandleTypeDef huart3;
extern osMutexId_t uartMutexHandle;

size_t string_to_uint8_t(const std::string& message, uint8_t* buffer, uint16_t bufferLen)
{
	if (bufferLen < message.size())
	{
		return 0;
	}

	for(size_t i = 0; i < message.size(); i++)
	{
		buffer[i] = message.at(i);
	}

	return message.size();
}

struct UART3
{
	int8_t send(const std::string& message)
	{
		uint8_t buffer[100];
		uint16_t length = string_to_uint8_t(message, buffer, 100);
		send(buffer, length);
		osDelay(1);

		return 0;
	}

	int8_t send(uint8_t* message, uint16_t length)
	{
		HAL_UART_Transmit_IT(&huart3, message, length);
		return 0;
	}

	int8_t echo(uint8_t* buffer, int16_t length)
	{
		if ((buffer[0] == '\r') || (buffer[0] == '\n'))
		{
			uint8_t newline[] = "\n\r";
			HAL_UART_Transmit_IT(&huart3, newline, 2);
		}
		else
		{
			HAL_UART_Transmit_IT(&huart3, buffer, 1);
		}

		return 0;
	}
};

#endif /* UART_H */
