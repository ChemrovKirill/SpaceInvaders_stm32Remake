#ifndef _SHIP_
#define _SHIP_

static uint8_t ship_pos;

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_usart.h"

#include "xprintf.h"
#include "oled_driver.h"

#include "enc.h"
#include "button.h"
#include "shot.h"
#include "monster_struct.h"


const uint8_t ship_model[9*9] = {
	0,0,0,0,1,0,0,0,0,
	0,0,0,0,1,0,0,0,0,
	0,0,0,1,1,1,0,0,0,
	0,0,0,1,0,1,0,0,0,
	0,0,1,1,0,1,1,0,0,
	1,1,1,1,1,1,1,1,1,
	1,0,0,1,1,1,0,0,1,
	0,0,1,1,0,1,1,0,0  };
	
void draw_ship(uint8_t ship_pos, uint8_t draw_flag) {
	if(draw_flag) {
		for(uint8_t i = 0; i < 9 * 9; ++i)
			oled_set_pix(ship_pos + (i % 9), 55 + (i / 9), ship_model[i]);
	}
	else 
		for(uint8_t i = 0; i < 9 * 9; ++i)
			oled_set_pix(ship_pos + (i % 9), 55 + (i / 9), 0);

}						
#endif
