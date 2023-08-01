#pragma once

#include <string>

#include "ringbuffer.hpp"
#include "cli_os.hpp"

enum class CMDChars
{
	BS = 0x08,
    LF = 0x0A,
    CR = 0x0D,
    SP = 0x20
};

struct LOG
{
	int8_t operator()(const std::string& message)
	{
		MessageObject_t messageObj;
		uint16_t length = string_to_uint8_t(message, messageObj.message, sizeof(messageObj.message));
		messageObj.length = length;
		osMessageQueuePut(cliMQHandle, &messageObj, 0, 0U);

		return 0;
	}
};

template<uint8_t Separator>
std::string seperate(ringbuffer<100, uint8_t>& toSeparate)
{
    if (toSeparate.size() == 0)
    {
        return "Parameter missing";
    }
    else {}
    std::string ret;
    uint8_t character = 0x00;

    while (toSeparate.size() > 0)
    {
    	character = (uint8_t)toSeparate.pop_front();

    	if ( (character != Separator) && (character != '\r') && (character != '\n') )
    	{
    		ret.push_back(character);
    	}
    }

    return ret;
}

template<typename Function>
struct FunctionPointer
{
    const std::string command_name;
    const std::string command_help;
    Function function;
};

template<typename LOGGER, typename Buffer>
struct FilterCLI
{
	LOGGER& log;
    Buffer& buffer;

    using get_func_ptr = int32_t(FilterCLI::*)(uint8_t*, uint32_t);
    FunctionPointer<get_func_ptr> get_functions[2] = 
    {
        {"type", "Get the current filtertype", &FilterCLI::cmdGetFiltertype},
        {"update", "Update the current filter",&FilterCLI::cmdUpdateFilter}
    };

    FilterCLI(LOGGER& com, Buffer& buffer)
    : log{com}, buffer{buffer}
    {}

    int32_t parseCommand()
    {
        log("FilterCLI::parseCommand \n\r");
        std::string command = seperate<(uint8_t)CMDChars::SP>(buffer);
        log(command + "\n\r");

        for (size_t i = 0; i < 1; i++)
        {
            if (get_functions[i].command_name.compare(command) == 0)
            {
                log("found function \n\r");
                return call(i);
            }
        }
        return 0;
    }

    int32_t cmdGetFiltertype(uint8_t* params, uint32_t length)
    {
        log("FilterCLI::cmdGetFiltertype\n\r");
        return 1;
    }

    int32_t cmdUpdateFilter(uint8_t* params, uint32_t length)
    {
        log("FilterCLI::cmdUpdateFilter\n\r");
        return 1;
    }

    int32_t call(int32_t index)
    {
        get_func_ptr f_ptr = get_functions[index].function;
        return (this->*f_ptr)(NULL, 0);
    }
};

template<typename LOGGER> // TODO: requires valid com-interface
struct CLI
{
	LOGGER& logger;

    ringbuffer<100, uint8_t> inputBuffer;

    FilterCLI<LOG, ringbuffer<100, uint8_t>> filterCLI{logger, inputBuffer};

    using func_ptr = int32_t(CLI::*)(uint8_t*, uint32_t);
    FunctionPointer<func_ptr> functions[2] =
    {
    	{"clear", "clear screen", &CLI::clear},
        {"filter", "set/get filter properties", &CLI::cmdFilter}
    };

    CLI(LOGGER& logger)
    : logger{logger}
    {}

    int8_t log(const std::string& message)
    {
        return logger(message);
    }

    int32_t clear(uint8_t* buffer, uint32_t length)
    {
    	log("\033[2J");
    	return 0;
    }

    int32_t parseCommand()
    {
    	if ( (inputBuffer.size() == 1) && ( (*inputBuffer.at(0) == '\r') || (*inputBuffer.at(0) == '\n') ) )
    	{
    		inputBuffer.clear();
    		return -1;
    	}

        std::string command = seperate<(uint8_t)CMDChars::SP>(inputBuffer);

        for (size_t i = 0; i < 2; i++)
        {
            //log("search \n\r");
            if (functions[i].command_name.compare(command) == 0)
            {
                //log("found function \n\r");
                return call(i);
            }
        }

        inputBuffer.clear();
        log("CLI: " + command + ": command not found\n\r");

        return -2;
    }

    int8_t writeChar(uint8_t character)
    {

        if (inputBuffer.push_back(character) == -1)
        {
            log("CLI buffer full\n\r");
            inputBuffer.clear();
            return -1;
        }
        if ((character == (uint8_t)CMDChars::CR) || (character == (uint8_t)CMDChars::LF))
        {
            parseCommand();
        }

        return 0;
    }

    int32_t cmdTest(uint8_t* params, uint32_t length)
    {
        log("Testfunction \n\r");
        cmdFilter(params, length);
        return 0;
    }

    int32_t cmdFilter(uint8_t* params, uint32_t length)
    {
        // TODO: call filter cli
        filterCLI.parseCommand();
        return 0;
    }

    int32_t call(int16_t index)
    {
        log("call \n\r");
        func_ptr f_ptr = functions[index].function;
        return (this->*f_ptr)(NULL, 0);
    }
};
