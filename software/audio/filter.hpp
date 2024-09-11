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
			arm_fir_init_f32(&S, firInstance.order, firInstance.pFirCoeffs[31], pState, blockSize);
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
			//arm_fir_init_f32(&S, firInstance.order, firInstance.pFirCoeffs[new_bin], pState, blockSize);
			S.pCoeffs = firInstance.pFirCoeffs[new_bin];
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

		for (size_t i = 0; i < numBlocks; i++)
		{
			arm_biquad_cascade_df1_f32(&S, input + (i*blockSize), output + (i*blockSize), blockSize);
			//memcpy(output, input, numSamples);
		}
	}

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


