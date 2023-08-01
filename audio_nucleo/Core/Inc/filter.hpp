#ifndef FILTER_HPP
#define FILTER_HPP

#include "arm_math.h"
#include "lowpass_filter.h"
#include "bandpass_filter.h"

bool between(int32_t value, int32_t min, int32_t max);

struct FIRCoeffs
{
	const float32_t* coeffs;
	float32_t freq;
};

struct FIRInstance
{
	FIRCoeffs* pFirCoeffs;
	uint16_t order;
	uint16_t numBins;

	FIRInstance(FIRCoeffs* pFirCoeffs, uint16_t order, uint16_t numBins)
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
			arm_fir_init_f32(&S, firInstance.order, firInstance.pFirCoeffs[0].coeffs, pState, blockSize);
		}
	}

	void updateCoeffs(uint16_t adcVal)
	{
		static int16_t old_bin = 0;

		int32_t new_bin = convert_adc_to_bin(adcVal);
		if ((new_bin >= 0) && (old_bin != new_bin))
		{
			//S = {firInstance.order, pState, firInstance.pFirCoeffs[new_bin].coeffs};
			arm_fir_init_f32(&S, firInstance.order, firInstance.pFirCoeffs[new_bin].coeffs, pState, blockSize);
			old_bin = new_bin;
		}
	}

	void operator()(float32_t* input, float32_t* output, uint16_t numSamples)
	{
		uint16_t numBlocks = numSamples/blockSize;

		for (size_t i = 0; i < numBlocks; i++)
		{
			arm_fir_f32(&S, input + (i*blockSize), output + (i*blockSize), blockSize);
			//memcpy(output, input, numSamples);
		}
	}

	int32_t convert_adc_to_bin(uint16_t adcVal)
	{
		static const int32_t max = pow(2, 16);
		int32_t range = max/firInstance.numBins;

		for(size_t i = 0; i < firInstance.numBins; i++)
		{
			if (between(adcVal, i*range, (i+1)*range))
			{
				return i;
			}
		}
		return -1;
	}
};

bool between(int32_t value, int32_t min, int32_t max)
{
	if (value >= max || value <= min)
	{
		return false;
	}
	else{}
	return true;
}

#endif /* FILTER_HPP */
