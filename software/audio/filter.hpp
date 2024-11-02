#pragma once

#include <stdbool.h>

#include "arm_math.h"
//#include "lowpass_filter.h"
//#include "bandpass_filter.h"
//#include "filter_coeffs.h"
//#include "cli.hpp"

#include "fir_filter_coeffs.h"

//extern LOG logger;
//extern CLI<LOG> cli;

extern uint16_t adcVal[10];
extern ADC_HandleTypeDef hadc1;

static bool between(int32_t value, int32_t min, int32_t max)
{
	if (value >= max || value <= min)
	{
		return false;
	}
	else{}
	return true;
}

struct FIRInstance
{
	const float32_t** pFirCoeffs;
	uint16_t order;
	uint16_t numBins;

	FIRInstance(const float32_t** pFirCoeffs, uint16_t order, uint16_t numBins)
	: pFirCoeffs{pFirCoeffs},
	  order{order},
	  numBins{numBins}
	{}
};

struct FIRFilter
{
	arm_fir_instance_f32 S;
	FIRInstance& firInstance;
	float32_t* pState;
	uint32_t blockSize;

	uint32_t fs = 48000;
	int32_t Q = 5;

	int16_t bin = 0;

	FIRFilter(FIRInstance& firInstance, uint32_t blockSize)
	: firInstance{firInstance},
	  blockSize{blockSize}
	{
		pState = new float32_t[firInstance.order + blockSize - 1];

		if (pState == NULL)
		{
			// TODO: error message
		}
		else
		{
			arm_fir_init_f32(&S, firInstance.order, firInstance.pFirCoeffs[0], pState, blockSize);
		}
	}

	void updateCoeffs(uint16_t adcVal)
	{
		int32_t new_bin = convert_adc_to_bin(adcVal);
		if ((new_bin >= 0) && (bin != new_bin))
		{
			//cli.log("update coeffs: " + std::to_string(new_bin) + "\n\r");
			//S = {firInstance.order, pState, firInstance.pFirCoeffs[new_bin].coeffs};
			//arm_fir_init_f32(&S, firInstance.order, firInstance.pFirCoeffs[new_bin], pState, blockSize);
			S.pCoeffs = firInstance.pFirCoeffs[new_bin];
			bin = new_bin;
		}
	}

	void operator()(float32_t* input, float32_t* output, uint16_t numSamples)
	{
		float gain = 1;
		uint16_t numBlocks = numSamples/blockSize;
		updateCoeffs(adcVal[0]);

		for (size_t i = 0; i < numBlocks; i++)
		{
			arm_fir_f32(&S, input + (i*blockSize), output + (i*blockSize), blockSize);
			//memcpy(output, input, numSamples);
			output[i] = output[i] * gain;
		}
	}

	int32_t convert_adc_to_bin(uint16_t adcVal)
	{
		//static const int32_t max = pow(2, 16);
		static const int32_t max = 14000;
		static const int32_t min = 2700;
		int32_t range = (max - min)/firInstance.numBins;

		for(size_t i = 0; i < firInstance.numBins; i++)
		{
			if (between(adcVal, i*range + min, (i+1)*range + min))
			{
				return i;
			}
		}
		return -1;
	}
};

struct IIRInstance
{
	const float32_t** pIirCoeffs;
	uint16_t order;
	uint16_t numBins;

	IIRInstance(const float32_t** pIirCoeffs, uint16_t order, uint16_t numBins)
	: pIirCoeffs{pIirCoeffs},
	  order{order},
	  numBins{numBins}
	{}
};

struct IIRFilter
{
	arm_biquad_casd_df1_inst_f32 S;
	IIRInstance& iirInstance;
	float32_t* pState;
	uint32_t blockSize;

	IIRFilter(IIRInstance& iirInstance, uint32_t blockSize)
	: iirInstance{iirInstance},
	  blockSize{blockSize}
	{
		pState = new float32_t[iirInstance.order * 4];
		for(int i=0; i < 4;i++){
			pState[i] = 0;
		}
		if (pState == NULL)
		{
			// TODO: error message
		}
		else
		{
			arm_biquad_cascade_df1_init_f32(&S, iirInstance.order, iirInstance.pIirCoeffs[0], pState);
		}
	}

	void updateCoeffs(uint16_t adcVal)
	{
		static int16_t old_bin = 0;

		int32_t new_bin = convert_adc_to_bin(adcVal);
		if ((new_bin >= 0) && (old_bin != new_bin))
		{
			//cli.log("update coeffs: " + std::to_string(new_bin) + "\n\r");
			//S = {firInstance.order, pState, firInstance.pFirCoeffs[new_bin].coeffs};
			arm_biquad_cascade_df1_init_f32(&S, iirInstance.order, iirInstance.pIirCoeffs[new_bin], pState);
			old_bin = new_bin;
		}
	}

	void operator()(float32_t* input, float32_t* output, uint16_t numSamples)
	{
		uint16_t numBlocks = numSamples/blockSize;

		//calc_coeffs(2000, coeffs);

		for (size_t i = 0; i < numBlocks; i++)
		{
			arm_biquad_cascade_df1_f32(&S, input + (i*blockSize), output + (i*blockSize), blockSize);
			//memcpy(output, input, numSamples);
		}
	}
	/*
	int32_t calc_coeffs(uint32_t f_0, float32_t* coeffs)
	{
		float32_t omega = 2 * PI * f_0 / fs;
		float32_t alpha = sin(omega) / (2 * Q);

		coeffs[0] = alpha; // b0
		coeffs[1] = 0; // b1
		coeffs[2] = -alpha; // b2
		coeffs[3] = 1 + alpha; // b3
		coeffs[4] = -2 * cos(omega); // b4
		coeffs[5] = 1 - alpha; // b5
	}*/

	int32_t convert_adc_to_bin(uint16_t adcVal)
	{
		static const int32_t max = pow(2, 16);
		int32_t range = max/iirInstance.numBins;

		for(size_t i = 0; i < iirInstance.numBins; i++)
		{
			if (between(adcVal, i*range, (i+1)*range))
			{
				return i;
			}
		}
		return -1;
	}
};


class BiquadFilter
{
private:
  float fc, Q, fs;
  float a0, a1, a2, b0, b1, b2;
  float z1, z2, z3, z4;
  const float f_max = 2300;
  const float f_min = 460;

  void compute_coeffs(float fc, float Q)
  {
    const float omega = 2.0 * M_PI * fc / (fs/2);
    const float alpha = sinf(omega) / (2 * Q);
    const float phi = cosf(omega);

    a0 = (1 + alpha);

    b0 = alpha / a0;
    b1 = 0;
    b2 = -alpha / a0;
    a1 = (-2 * phi) / a0;
    a2 = (1 - alpha) / a0;
  }

public:

  BiquadFilter(float fc, float Q, float fs) : fs(fs), Q(Q), fc(fc)
  {
    this->z1 = 0;
    this->z2 = 0;
    this->z3 = 0;
    this->z4 = 0;
    compute_coeffs(fc, Q);
  }

  void process(const float* input, float* output, uint32_t n)
  {
	//HAL_ADC_Start(&hadc1);
	//adcVal[0] = HAL_ADC_GetValue(&hadc1);
	if (adcVal[0] < 3000)
	{
		this->a0 = 0;
		this->a1 = 0;
		this->a2 = 0;
		this->b0 = 1;
		this->b1 = 0;
		this->b2 = 0;
	}
	else
	{
		fc = derive_fc_from_adc_val(adcVal[0]);
		compute_coeffs(fc, Q);
	}

	float gain = 1;

    for (uint32_t i = 0; i < n; i++)
    {
      const float x = input[i];
      const float y = b0 * x + b1 * z1 + b2 * z2 - (a1 * z3 + a2 * z4);
      z2 = z1;
      z1 = x;
      z4 = z3;
      z3 = y;
      output[i] = y * gain;
    }
  }

  float derive_fc_from_adc_val(int32_t adc_val)
  {
	  float casio_poti_max = 14000;
	  float casio_poti_min = 2700;
	  const static float max_adc_freq = (f_max - f_min) / (casio_poti_max - casio_poti_min);
	  //const static int32_t max_adc_val = pow(2, 16);
	  float freq = ((float)adc_val * max_adc_freq);
	  return freq;
  }

  void set_fc(float fc)
  {
    this->fc = fc;
  }
};


