#ifndef FIR_FILTER_COEFFS_H_
#define FIR_FILTER_COEFFS_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
#include "arm_math.h"

#define FILTER_TAPS 129

extern const float32_t* fir_coeffs_lut[32];

#ifdef __cplusplus
}
#endif

#endif /* FIR_FILTER_COEFFS_H_ */
