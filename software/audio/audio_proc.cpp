#include <audio_proc.hpp>
#include <stdint.h>
#include <string.h>
#include "fir_filter_coeffs.h"
#include "iir_filter_coeffs.h"

/* store data in ram_d3_data section to allow bdma to access it */
int16_t txBuffer[BUFFER_SIZE] __attribute__((section(".ram_d3_data")));
int16_t rxBuffer[BUFFER_SIZE] __attribute__((section(".ram_d3_data")));

int16_t* pInput;
int16_t* pOutput;

float32_t txBufferf[BUFFER_SIZE/2];
float32_t rxBufferf[BUFFER_SIZE/2];

uint16_t adcVal[10];

FIRInstance firInstance {fir_coeffs_lut, FILTER_TAPS, sizeof(fir_coeffs_lut)/sizeof(float32_t*)};
FIRFilter firFilter {firInstance, 1};

//IIRInstance iirInstance {iir_coeffs_lut, 1, sizeof(iir_coeffs_lut)/sizeof(float32_t*)};
//IIRFilter iirFilter {iirInstance, 32};

BiquadFilter biquad{800, 5, 48000};

void convert_to_float(int16_t* input, float32_t* output)
{
	for(size_t i = 0; i < BUFFER_SIZE/4; i++)
	{
		output[i] = (input[2*i] / 2) + (input[2*i + 1] / 2);
	}
}

void convert_to_in16_t(float32_t* input, int16_t* output)
{
	for(size_t i = 0; i < BUFFER_SIZE/4; i++)
	{
		output[2*i]     = (int16_t)(input[i]);
		output[2*i + 1] = (int16_t)(input[i]);
	}
}

void process_data()
{
	convert_to_float(pInput, rxBufferf);
//	firFilter(rxBufferf, txBufferf, BUFFER_SIZE/4);
	biquad.process(rxBufferf, txBufferf, BUFFER_SIZE/4);
	convert_to_in16_t(txBufferf, pOutput);
	/*
	for (size_t i = 0; i < BUFFER_SIZE/2 ; i++)
	{
		pOutput[i] = pInput[i];
	}*/
}

void HAL_I2SEx_TxRxCpltCallback(I2S_HandleTypeDef *hi2s)
{
	pInput = &rxBuffer[BUFFER_SIZE/2];
	pOutput = &txBuffer[BUFFER_SIZE/2];
	//osEventFlagsSet(audioDataReadyFlag, AUDIO_DATA_READY_FLAG);
	process_data();
}

void HAL_I2SEx_TxRxHalfCpltCallback(I2S_HandleTypeDef *hi2s)
{
	pInput = &rxBuffer[0];
	pOutput = &txBuffer[0];
	//osEventFlagsSet(audioDataReadyFlag, AUDIO_DATA_READY_FLAG);
	process_data();
}

void HAL_I2S_ErrorCallback(I2S_HandleTypeDef *hi2s)
{
	uint32_t err = hi2s->ErrorCode;
}

void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc) {
	HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_14);
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc) {
  HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_14);
}
