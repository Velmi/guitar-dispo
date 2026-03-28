#pragma once

#include <stdint.h>
#include <cstring>
#include "audio_proc.hpp"
#include "filter.hpp"
#include "biquad_filter.hpp"
#include "ringbuffer.hpp"

namespace effects
{

void passthrough(int16_t *input, int16_t *output)
{
    memcpy(output, input, BUFFER_SIZE);
}

class WahWah
{
private:
    BiquadFilter biquad;
    float f_min;
    float f_max;
    uint16_t adc_min_val;
    uint16_t adc_max_val;

public:
    WahWah(float f_min, float f_max, float quality_factor, float fs, uint16_t adc_min_val, uint16_t adc_max_val)
        : biquad{0, quality_factor, fs}, f_min{f_min}, f_max{f_max}, adc_min_val{adc_min_val}, adc_max_val{adc_max_val}
    {
    }

    void process(const float *input, float *output, uint32_t n, int32_t adc_val)
    {
        float new_fc = derive_fc_from_adc_val(adc_val);
        biquad.set_fc(new_fc);
        biquad.process(input, output, n);
    }

    void deactivate()
    {
        biquad.set_passthrough();
    }

private:
    float derive_fc_from_adc_val(int32_t adc_val)
    {
        const static float max_adc_freq = (f_max - f_min) / (adc_max_val - adc_min_val);
        // const static int32_t max_adc_val = pow(2, 16);
        float freq = ((float)adc_val * max_adc_freq);
        return freq;
    }
};



class Delay
{
    ringbuffer<float, 20000> buffer{15000};
    size_t D;

    size_t min_delay = 0;
    size_t max_delay = 20000;
    uint16_t adc_min_val = 2700;
    uint16_t adc_max_val = 14000;

public:

    Delay()
    {}

    void process(float* input, float* output, size_t n)
    {
        buffer.set_circ_length(map_adc_val_to_circ_length(adcVal[0]));
        buffer.write_block(input, n);
        buffer.read_block(output, n);
    }

    size_t map_adc_val_to_circ_length(uint16_t adc_val)
    {
        float max_delay_adc = (max_delay - min_delay) / (adc_max_val - adc_min_val);
        return adc_val * max_delay_adc;
    }

};

} /* namespace effects */
