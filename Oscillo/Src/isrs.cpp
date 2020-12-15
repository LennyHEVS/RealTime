/*
 * isrs.cpp
 *
 *  Created on: 1 déc. 2020
 *      Author: favre
 */

#include "stm32f7xx_hal.h"
#include "main.h"
#include "platform/f7-disco-gcc/board/buttonscontroller.h"
#include "app/factory.h"

extern "C" void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef * hadc) {
	volatile uint32_t value = HAL_ADC_GetValue(hadc);
	static uint32_t index = 0;
	Factory::adcValuesBuffer[index] = value;
	index = (index+1)%ADC_VALUES_BUFFER_SIZE;
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
extern "C" void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
    switch (GPIO_Pin)
    {
    case BUTTON0_Pin:
    case BUTTON1_Pin:
    case BUTTON2_Pin:
    case BUTTON3_Pin:
        //Notify ButtonsController about interrupt
    	ButtonsController::getInstance().onIrq();
        break;
    default:
        break;
    }
}

