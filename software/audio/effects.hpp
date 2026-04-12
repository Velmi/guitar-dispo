#pragma once

#include <stdint.h>
#include <cstring>
#include <cmath>
#include "audio_proc.hpp"
#include "filter.hpp"
#include "biquad_filter.hpp"
#include "delayline.hpp"

namespace effects
{

template <typename T>
T transform(T x1, T x2, T y1, T y2, T x)
{
    T dx = (y2 - y1) / (x2 - x1);
    return y2 + dx * x;
}

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
        float freq = ((float)adc_val * max_adc_freq);
        return freq;
    }
};

class SineTable
{
    size_t ind = 0;
    float freq;
    size_t blocksize;
    uint32_t fs;

public:
    SineTable(float freq, size_t blocksize, float fs) : freq{freq}, blocksize{blocksize}, fs{fs}
    {}

    float get_next()
    {
        ind = ind + blocksize;
        float arg = 2 * M_PI * freq * ((float)ind / (float)fs);
        return sin(arg);
    }
};

template<size_t buffersize>
class Delay
{
    delayline<float, buffersize> delaybuffer{0};

public:
    size_t min_delay;
    size_t max_delay;
    uint16_t adc_min_val;
    uint16_t adc_max_val;

    Delay(size_t min_delay = 128, size_t max_delay = 500, uint16_t adc_min_val = 2700, uint16_t adc_max_val = 14000)
    : min_delay{min_delay}, max_delay{max_delay}, adc_min_val{adc_min_val}, adc_max_val{adc_max_val}
    {}

    void process(float* input, float* output, size_t n)
    {
        delaybuffer.write(input, n);
        delaybuffer.read(output, n);
        for (size_t i = 0; i < n; i++)
        {
            output[i] = 0.5 * output[i] + 0.5 * input[i];
        }
        
    }

    void set_delay(size_t delay)
    {
        delaybuffer.set_delay(delay);
    }
};

template <size_t buffersize>
class Flanger
{
    Delay<buffersize> delay;
    SineTable sine{0.5f, PROCESS_BLOCK_SIZE, AUDIO_SAMPLING_FREQ_HZ};

public:
    Flanger()
    {}

    void process(float* input, float* output, size_t n)
    {
        size_t delay_samples = sine_to_delay((sine.get_next() + 1) / 2);
        delay.set_delay(delay_samples);
        delay.process(input, output, n);
    }

private:
    size_t sine_to_delay(float val)
    {
        return (size_t) transform<float>(0.0f, 1.0f, delay.min_delay, delay.max_delay, val);
    }
};

} /* namespace effects */
