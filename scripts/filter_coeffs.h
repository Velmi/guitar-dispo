#ifndef __FILTER_COEFFS__H__
#define __FILTER_COEFFS__H__
#ifdef __cplusplus__
extern "C" {
#endif

#include<arm_math.h>

float32_t iir_coeffs0[] = {
0.3717357148766539,0.0,-0.3717357148766539,-0.7028157232371861,0.25652857024669234
};float32_t iir[] = {1, 0, 0, 0, 0};
const float32_t* iir_coeffs_lut[] = {
		iir_coeffs0,
iir
};
#ifdef __cplusplus__
}
#endif
#endif /* __FILTER_COEFFS__H__ */
