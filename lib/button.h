#ifndef _BUTTON_
#define _BUTTON_

static uint8_t kills = 0;
static uint8_t game_over_flag = 0;

static uint8_t flag_first = 1;
static uint8_t level = 1;
static int time = 0;
static int turn = 0;

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_usart.h"

#include "xprintf.h"
#include "oled_driver.h"

#include "enc.h"
#include "ship.h"
#include "shot.h"


/*
 * Configure timer 2 to input capture mode
 */
static void tim_2_config(void)
{
    /*
     * Configure input channel
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_5, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_5, LL_GPIO_AF_2);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_5, LL_GPIO_PULL_UP);

    /*
     * Setup timer to capture input mode
     */
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
//    LL_TIM_SetPrescaler(TIM2, 47999);
    LL_TIM_SetAutoReload(TIM2, 2000000000);
    LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_IC_FILTER_FDIV16_N5);
    LL_TIM_IC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1,
                          LL_TIM_IC_POLARITY_FALLING);
    LL_TIM_IC_SetActiveInput(TIM2, LL_TIM_CHANNEL_CH1,
                             LL_TIM_ACTIVEINPUT_DIRECTTI);
    LL_TIM_IC_SetPrescaler(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_ICPSC_DIV1);
    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH1);
    LL_TIM_EnableIT_CC1(TIM2);
    LL_TIM_EnableCounter(TIM2);
    /*
     * Setup NVIC
     */
    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_SetPriority(TIM2_IRQn, 1);
    return;
}

void button_capture(uint32_t period_ms) {
	uint32_t time_between;
	static uint32_t old_time = 0;
    uint32_t current_time;
    current_time = LL_TIM_IC_GetCaptureCH1(TIM2) / 48000;
    current_time = LL_TIM_GetCounter(TIM2) / 48000; 
	time_between = current_time - old_time;
    if(time_between > period_ms) {
		old_time = current_time;
	
		if(kills == 24) {
			kills = 0;
			flag_first = 1;
			oled_clr(clBlack);
	    	oled_update();
			turn = 0;
		}
	
		if(game_over_flag) {
 		 	game_over_flag = 0;
			flag_first = 1;
			level = 0;
			oled_clr(clBlack);
	    	oled_update();
			turn = 0;
		}

	}
}
#endif  //_BUTTON_
