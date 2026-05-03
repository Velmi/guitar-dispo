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
    return y1 + dx * x;
}

template <typename T>
bool between_eq(T val, T min, T max)
{
    if ((val >= min) && (val <= max))
    {
        return true;
    }
    else
    {
        return false;
    }
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

    void process(const float *input, float *output, uint32_t n)
    {
        float new_fc = derive_fc_from_adc_val(adcVal[0]);
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
        return transform((float)adc_min_val, (float)adc_max_val, f_min, f_max, (float)adc_val);
    }
};

class SineTable
{
    size_t ind = 0;
    float freq;
    size_t blocksize;
    float fs;

public:
    SineTable(float freq, size_t blocksize, float fs)
        : freq{freq}, blocksize{blocksize}, fs{fs}
    {
    }

    float get_next()
    {
        ind = ind + blocksize;
        float arg = 2 * M_PI * freq * ((float)ind / (float)fs);
        return sin(arg);
    }

    void set_freq(float val)
    {
        freq = val;
    }
};

template <size_t buffersize>
class Delay
{
    delayline<float, buffersize> delaybuffer{0};

public:
    float mix;
    size_t min_delay;
    size_t max_delay;
    uint16_t adc_min_val;
    uint16_t adc_max_val;

    Delay(size_t min_delay = PROCESS_BLOCK_SIZE, size_t max_delay = buffersize, uint16_t adc_min_val = 2700, uint16_t adc_max_val = 14000)
        : min_delay{min_delay}, max_delay{max_delay}, adc_min_val{adc_min_val}, adc_max_val{adc_max_val}
    {
    }

    void process(const float *input, float *output, size_t n)
    {
        delaybuffer.write(input, n);
        delaybuffer.read(output, n);
        for (size_t i = 0; i < n; i++)
        {
            output[i] = (mix)*output[i] + (1 - mix) * input[i];
        }
    }

    void set_delay(size_t val)
    {
        if (!between_eq(val, min_delay, max_delay))
        {
            return;
        }
        delaybuffer.set_delay(val);
    }

    void set_mix(float val)
    {
        if (!between_eq(val, 0.0f, 1.0f))
        {
            return;
        }
        mix = val;
    }

    void set_max_delay(size_t val)
    {
        if (val > buffersize)
            val = buffersize;
        
        max_delay = val;
    }
};

template <size_t buffersize>
class Chorus
{
    Delay<buffersize> delay;
    SineTable sine;
    float _f_lfo;
    size_t _depth; // in samples
    float _intensity;

public:
    Chorus(float f_lfo, size_t depth, float intensity)
        : sine{f_lfo, PROCESS_BLOCK_SIZE, AUDIO_SAMPLING_FREQ_HZ}, _f_lfo{f_lfo}, _depth{depth}, _intensity{intensity}
    {
        delay.set_max_delay(_depth);
        delay.set_mix(_intensity);
        sine.set_freq(_f_lfo);
    }

    void process(const float *input, float *output, size_t n)
    {
        size_t delay_samples = sine_to_delay((sine.get_next() + 1) / 2);
        delay.set_delay(delay_samples);
        delay.set_mix(_intensity);
        sine.set_freq(_f_lfo);
        delay.process(input, output, n);
    }

    void set_f_lfo(float val)
    {
        _f_lfo = val;
    }

    void set_intensity(float val)
    {
        _intensity = val;
    }

    void set_depth(size_t val)
    {
        if (val > buffersize)
            val = buffersize;
        else if (val < 0)
            val = 0;
        
        _depth = val;
        delay.set_max_delay(val);
    }

private:
    size_t sine_to_delay(float val)
    {
        size_t d = (size_t)transform<float>(0.0f, 1.0f, delay.min_delay, delay.max_delay, val);
        return d;
    }
};

} /* namespace effects */
