cmake_minimum_required(VERSION 3.22)

enable_language(C CXX ASM)

add_library(audio STATIC
    ${CMAKE_CURRENT_SOURCE_DIR}/audio_proc.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/fir_filter_coeffs.c
    ${CMAKE_CURRENT_SOURCE_DIR}/iir_filter_coeffs.c)

target_include_directories(audio PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR})


target_link_libraries(audio PUBLIC
    stm32cubemx    
    CMSIS_DSP
)