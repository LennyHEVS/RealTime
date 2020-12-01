/*
 * isrs.cpp
 *
 *  Created on: 1 déc. 2020
 *      Author: favre
 */

#include "stm32f7xx_hal.h"
#include "main.h"

extern "C" void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef * hadc) {
	volatile uint32_t value = HAL_ADC_GetValue(hadc);
	value++;
}

extern "C" void  HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim){
	//volatile uint32_t value = HAL_ADC_GetValue(&hadc3);
	//value++;
	/*static bool on = false;
	if(on)
	{
		HAL_GPIO_WritePin(TIM1_CC_OUT_GPIO_Port, TIM1_CC_OUT_Pin, GPIO_PIN_SET);
	}
	else
	{
		HAL_GPIO_WritePin(TIM1_CC_OUT_GPIO_Port, TIM1_CC_OUT_Pin, GPIO_PIN_RESET);
	}
	on=!on;*/
}
