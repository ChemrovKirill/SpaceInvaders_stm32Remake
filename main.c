/*
 * This example demonstrates using I2C with SSD1306

	hled controller
. */

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_usart.h"
#include "stm32f0xx_ll_tim.h"

#include "xprintf.h"
#include "oled_driver.h"

#include "enc.h"
#include "button.h"
#include "shot.h"
#include "ship.h"
#include "monster_struct.h"
#include "donov.h"


/***
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */

static uint8_t start_flag = 1;

static void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    //

//	SysTick_Config(48000000/1000);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Clock on GPIOC and set two led pins
 */
static void gpio_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    return;
}

/*
 * Set callback for out device
 */
static void printf_config(void)
{
    xdev_out(oled_putc);
    return;
}

/*
void TIM3_IRQHandler(void) {
	LL_TIM_ClearFlag_CC1(TIM3);
}
*/

static void systick_config(void)
{
//    LL_InitTick(48000000, 1000);
	SysTick_Config(48000000/1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 2);
    return;
}

void TIM2_IRQHandler(void)
{	
    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

	if(start_flag) {
		start_flag = 0;
    	oled_clr(clBlack);
	}
		
	button_capture(2000);
	
	shot_capture(300); //shot every 300 ms

    LL_TIM_ClearFlag_CC1(TIM2);
}



void SysTick_Handler(void) {

	if(start_flag) {
    	oled_clr(clBlack);
		oled_set_cursor(0, 0);
		xprintf(  "\n   _SPACE INVADERS_");
		xprintf(  "\n     _STM REMAKE_  ");
	  	xprintf("\n\n   Press the button");
	 	xprintf(  "\n       to start    ");
		//spawn_monster(&all_monster[0], 20, 7, 2);
		oled_update();
		int x2 = 128;
		int x1 = -10;
		while(start_flag) {
			spawn_monster(&all_monster[0], x1, 7, 2);	
			x1++;
			if(x1 == 200)
				x1 = -10;
			spawn_monster(&all_monster[1], x2, 34, 1);	
			x2--;
			if(x1 == -100)
				x1 = 128;
			
			oled_update();
		}
	}

	if(game_over_flag) {
    	oled_clr(clBlack);
		oled_set_cursor(0, 0);
		xprintf(  "\n     _GAME  OVER_");
		xprintf("\n\n   Press the button");
		xprintf  ("\n      to restart");
		oled_update();
		kills = 0;
		while(game_over_flag);
	}
	
	if(kills == 24)	{
		oled_clr(clBlack);
		oled_set_cursor(0, 0);
		if(level == 4) {
			level = 0;
			//print Donov	
			oled_pic(donov, 100);
    		oled_update();
		}
		else {
			xprintf(  "\n     _NEXT LEVEL_");
			xprintf("\n\n   Press the button");
		xprintf(      "\n     to continue");
			oled_update();
			level++;
		}
		while(kills == 24);
	}

	uint8_t i;

	if(flag_first) {
		spawn_all_monsters();					//spawn monsters first time
		flag_first = 0;
	}

	for(i = 0; i < MAX_SHOT; ++i) {
		shot_move(i);
		kill_check(i);
	}

	++time;											//move monsters	
	if(time >= 10) {
		LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
		move_all_monster(all_monster, turn, 24);
		oled_update();
		++turn;
		time = level * 2;
	}
										//move ship
	draw_ship(ship_pos, 0);
	ship_pos = 2 * LL_TIM_GetCounter(TIM3);
	draw_ship(ship_pos, 1);
	oled_update();

}

int main(void)
{
    rcc_config();
    gpio_config();

    oled_config();
    printf_config();

	systick_config();
    tim_3_config();
    tim_2_config();
	shots_config();

    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

//	oled_update();


    while (1); 
    return 0;
}
