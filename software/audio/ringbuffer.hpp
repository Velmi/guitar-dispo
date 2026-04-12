#pragma once

#include <cstring>
#include <stddef.h>
#include <type_traits>

/**
 * double ringbuffer implementation
 * Usage: write half, read half
 * write either block wise or element wise
 * no control mechanism for over or underflow, user need to make sure not to read or write unequally
 */

template<typename T, size_t size>
class ringbuffer
{
    static_assert(std::is_trivially_copyable_v<T>);
    
    T _data[size];
    size_t _write_ind;
    size_t _read_ind;
    size_t _circ_length;

public:

    ringbuffer(size_t circ_length = size) : _circ_length{circ_length}
    {
        std::memset(_data, 0, sizeof(T) * size);
        _write_ind = 0;
        _read_ind = size / 2;
    }
    
    int32_t write_block(const T* data, size_t n)
    {
        if (n > size / 2) {return -1;}

        size_t first_part = std::min(n, _circ_length - _write_ind);
        size_t second_part = n - first_part;

        std::memcpy(&_data[_write_ind], data, first_part * sizeof(T));
        std::memcpy(&_data[0], data + first_part, second_part * sizeof(T));

        _write_ind = (_write_ind + n) % _circ_length;

        return static_cast<int32_t>(n);
    }

    int32_t read_block(T* data, size_t n)
    {
        if (n > size / 2) {return -1;}

        size_t first_part = std::min(n, _circ_length - _read_ind);
        size_t second_part = n - first_part;

        std::memcpy(data, &_data[_read_ind], first_part * sizeof(T));
        std::memcpy(data + first_part, &_data[0], second_part * sizeof(T));

        _read_ind = (_read_ind + n) % _circ_length;

        return static_cast<int32_t>(n);
    }

    int32_t write_element(T* data)
    {
        _data[_write_ind] = *data;
        _write_ind = (_write_ind + 1) % _circ_length;
        return 1;
    }

    int32_t read_element(T* data)
    {
        *data = _data[_read_ind];
        _read_ind = (_read_ind + 1) % _circ_length;
        return 1;
    }

    void set_circ_length(size_t circ_length)
    {
        _circ_length = circ_length;
    }

    size_t get_read_size()
    {
        return size/2;
    }
};
