#pragma once

#include <variant>
#include <vector>

#include "audio_proc.hpp"
#include "effects.hpp"

#define MAX_CONNECTORS 4
#define POOL_SIZE 4 * PROCESS_BLOCK_SIZE

struct Mute {
    void process(const float* in, float* out, size_t n)
    {
        for(size_t i=0; i<n; ++i) out[i] = 0.0f;
    }
};

using EffectsVariant = std::variant<effects::WahWah, effects::Chorus<500>>;

class EffectsChain
{
public:
    EffectsChain()
    {
        chain.reserve(MAX_CONNECTORS);
    }

    void addWahWah()
    {
        chain.emplace_back(effects::WahWah{430, 2300, 5, AUDIO_SAMPLING_FREQ_HZ, 2700, 14000});
    }

    void addChorus()
    {
        chain.emplace_back(effects::Chorus<500>{1.0f, 300, 0.5f});
    }

    void process(const float* input, float* output, size_t nSamples) {
        if (chain.empty()) {
            std::copy(input, input + nSamples, output);
            return;
        }

        const float* currentIn = input;
        float* currentOut = workBuffer;

        for (size_t i = 0; i < chain.size(); ++i) {
            // Execute the effect
            std::visit([&](auto& effect){
                effect.process(currentIn, currentOut, nSamples);
            }, chain[i]);

            // next iteration
            currentIn = currentOut;

            // Toggle currentOut
            if (currentOut == workBuffer)
                currentOut = output;
            else
                currentOut = workBuffer;
        }

        if (currentIn != output)
            std::copy(currentIn, currentIn + nSamples, output);
    }

private:
    std::vector<EffectsVariant> chain;
    float workBuffer[PROCESS_BLOCK_SIZE];
};