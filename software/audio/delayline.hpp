#pragma once

#include <filesystem>
#include <stddef.h>
#include <stdint.h>
#include <type_traits>

template <typename T, size_t size>
class delayline
{
    static_assert(std::is_trivially_copyable_v<T>);

    T       _data[size];
    size_t  _w_ind = 0;
    size_t  _r_ind = 0;
    size_t  _delay = 0;
    
public:
    delayline(size_t delay) : _delay{delay}
    {}

    int32_t set_delay(size_t delay)
    {
        if (delay > size)
        {
            delay = size;
        }
        _delay = delay;
        return 0;
    }

    int32_t write(const T* data, size_t n)
    {
        for (size_t i = 0; i < n; i++)
        {
            _data[_w_ind] = data[i];
            _w_ind = (_w_ind + 1) % size;
        }
        return 0;
    }

    int32_t read(T* data, size_t n)
    {
        _r_ind = (_w_ind + size - (_delay % size)) % size;
        for (size_t i = 0; i < n; i++)
        {
            data[i] = _data[_r_ind];
            _r_ind = (_r_ind + 1) % size;
        }
        return 0;
    }
};