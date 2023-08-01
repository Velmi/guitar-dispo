#pragma once

#include <cstdlib>
#include <cstdint>

// TODO: adjust index datatype depending on the given size

template<std::size_t _size, typename T>
struct ringbuffer
{
    T elements[_size];

    uint32_t read_counter{0};
    uint32_t write_counter{0};
    bool rc_wc_same_round{true};

    void clear()
    {
        for (size_t i = 0; i < _size; i++)
        {
            elements[i] = (T)0;
        }
        read_counter = 0;
        write_counter = 0;
        rc_wc_same_round = true;
    }
    
    int8_t push_back(T t)
    {
        if (full())
        {
            return -1;
        }
        else {}

        elements[write_counter] = t;
        write_counter++;
        
        if (write_counter == (_size))
        {
            write_counter = 0;
            rc_wc_same_round = rc_wc_same_round ^ 1;
        }
        else {}
        return 0;
    }

    T pop_front()
    {
        T temp;

        if (empty())
        {
            return 0;
        }
        else {}

        temp = elements[read_counter];
        elements[read_counter] = 0;
        read_counter++;

        if (read_counter == (_size))
        {
            read_counter = 0;
            rc_wc_same_round = rc_wc_same_round ^ 1;
        }
        else {}
        return temp;
    }

    T* at(uint16_t position)
    {
        // TODO: "at" function to translate from "real" array position into valid position
        if (empty())
        {
            return nullptr;
        }
        else if (translateIndex(position) > size())
        {
            return nullptr;
        }
        else
        {
            return &elements[translateIndex(position)];
        }
    }

    uint16_t translateIndex(uint16_t position)
    {
        return (position + read_counter)%_size;
    }

    uint32_t size()
    {
        if ((write_counter == read_counter) && rc_wc_same_round)
        {
            return 0;
        }
        else if((write_counter == read_counter) && !rc_wc_same_round)
        {
            return _size;
        }
        else if ((rc_wc_same_round) && (write_counter > read_counter))
        {
            return write_counter - read_counter;
        }
        else if ((rc_wc_same_round) && (write_counter <= read_counter))
        {
            return 0;
        }
        else if ((rc_wc_same_round == false) && (write_counter < read_counter))
        {
            return _size - (read_counter - write_counter);
        }
        return 0;
    }

    bool empty()
    {
        if (size() == 0)
        {
            return true;
        }
        else{}
        return false;
    }

    bool full()
    {
        if (size() == _size)
        {
            return true;
        }
        else{}
        return false;
    }
};
