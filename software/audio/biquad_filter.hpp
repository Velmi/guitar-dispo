#pragma once

#include "arm_math.h"

class BiquadFilter
{
private:
    float fc, Q, fs;
    float a0, a1, a2, b0, b1, b2;
    float z1, z2, z3, z4;
    float gain = 8;

    void compute_coeffs(float fc, float Q)
    {
        const float omega = 2.0 * M_PI * fc / (fs / 2);
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
    BiquadFilter(float fc, float Q, float fs) : fc{fc}, Q{Q}, fs{fs}
    {
        this->z1 = 0;
        this->z2 = 0;
        this->z3 = 0;
        this->z4 = 0;
        compute_coeffs(fc, Q);
    }

    void process(const float *input, float *output, uint32_t n)
    {
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

    void set_passthrough()
    {
        a0 = 0;
        a1 = 0;
        a2 = 0;
        b0 = 1;
        b1 = 0;
        b2 = 0;
    }

    void set_fc(float fc)
    {
        this->fc = fc;
        compute_coeffs(fc, Q);
    }

    void set_Q(float Q)
    {
        this->Q = Q;
        compute_coeffs(fc, Q);
    }

    void set_gain(float gain)
    {
        this->gain = gain;
    }
};
