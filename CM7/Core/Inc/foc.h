#ifndef __FOC_H__
#define	__FOC_H__

#include <stdint.h>

// For 24V motor
//#define		TARGET_MAX_MAGNITUDE		15.0f
//#define		RATED_MAGNITUDE				24.0f

// For 48V motor
#define		TARGET_MAX_MAGNITUDE		25.0f	// 30.0f, PWM Duty becomes 0
#define		RATED_MAGNITUDE				48.0f

// Structural representation of stationary 2-axis currents
typedef struct
{
	int16_t		alpha;
	int16_t		beta;
}Clarke_Components_t;


// Function Prototypes
extern void FOC_Clarke_Transform(int16_t Ia, int16_t Ib, int16_t Ic, Clarke_Components_t *pOutputs);
extern void Set_Inverter_Voltage(float v_alpha, float v_beta, float v_dc);

#endif	// __FOC_H__
