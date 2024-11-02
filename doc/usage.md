# Usage

## Debug Interface

SWD-interface on J14

recommended Debugger: JLink Edu mini

It is recommended to use the STM32CubeIDE as it is a very easy to use IDE

## Signal processing

The data can be manipulated in the file /software/audio/audio_process.cpp

The function `process_data()` will be executed if there is available data in the buffer. There is no need to
take care of the double buffering logic. The data in int16_t format can be accessed
through `pInput` in stereo format.

The access to the output buffer can be achieved via `pOutput`, this also expects stereo format.
