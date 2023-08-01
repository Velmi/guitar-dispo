#ifndef CLI_OS_HPP
#define CLI_OS_HPP

#include "cmsis_os2.h"
#include "uart.hpp"

osMessageQueueId_t cliMQHandle;
const osMessageQueueAttr_t cliMQ_attr =
{
	.name = "CLI Message Queue"
};

struct MessageObject
{
	uint8_t message[100];
	uint16_t length;
} typedef MessageObject_t;

#endif /* CLI_OS_HPP */
