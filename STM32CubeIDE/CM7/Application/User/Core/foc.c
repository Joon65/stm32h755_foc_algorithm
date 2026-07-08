#include "foc.h"
#include "math.h"

#include "stm32h7xx_hal.h"


/*
 * FOC_Clarke_Transform
 * Computes the fixed-point simplified Clarke Transform
 * Ia,Ib,Ic : Balanced 3-phase currents (signed integers)
 * pOutputs : Pointer to the output structural components (alpha, beta)
 */

void FOC_Clarke_Transform(int16_t Ia, int16_t Ib, int16_t Ic, Clarke_Components_t *pOutputs)
{
	// Alpha axis directly aligned with Phase A
	pOutputs->alpha = Ia;

	// Beta axis calculation: (Ib-Ic)/sqrt(3)
	// Fixed-point scaling optimization : 1/sqrt(3) ~= 18919 in Q15 format
	int32_t intermediate_beta = ((int32_t)Ib - (int32_t)Ic) * 18919;

	// Shift right by 15 bits to return from Q15 to a standard int16_t scale
	pOutputs->beta = (int16_t)(intermediate_beta >> 15);
}


void Set_Inverter_Voltage(float v_alpha, float v_beta, float v_dc)
{
	// Limit requested voltage to linear modulation range
	float v_mag_sq = (v_alpha * v_alpha) + (v_beta * v_beta);
	float v_max = 0.577350269f * v_dc; // Vdc / sqrt(3)
	float v_max_sq = v_max * v_max;

	if (v_mag_sq > v_max_sq)
	{
		// Scale back the vector components but maintain the same direction angle
		float scale = v_max / sqrtf(v_mag_sq);
		v_alpha *= scale;
		v_beta *= scale;
	}

	// Space vector generation (midpoint clamp method)
	float v_a = v_alpha;
	float v_b = (-0.5f * v_alpha) + (0.866025403f * v_beta);
	float v_c = (-0.5f * v_alpha) - (0.866025403f * v_beta);

	float max_v = v_a;
	if (v_b > max_v) max_v = v_b;
	if (v_c > max_v) max_v = v_c;

	float min_v = v_a;
	if (v_b < min_v) min_v = v_b;
	if (v_c < min_v) min_v = v_c;

	float v_com = 0.5f * (max_v + min_v);

	float duty_a = ((v_a - v_com) / v_dc) + 0.5f;
	float duty_b = ((v_b - v_com) / v_dc) + 0.5f;
	float duty_c = ((v_c - v_com) / v_dc) + 0.5f;

	// Dynaic register usage
	float current_arr = (float)TIM1->ARR;

	TIM1->CCR1 = (uint32_t)(duty_a * current_arr);
	TIM1->CCR2 = (uint32_t)(duty_b * current_arr);
	TIM1->CCR3 = (uint32_t)(duty_c * current_arr);

	__DSB();

	volatile uint32_t register_flush = TIM1->CCR1;
	(void)register_flush;

}
