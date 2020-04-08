#ifndef _SHOT_
#define _SHOT_

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_usart.h"

#include "xprintf.h"
#include "oled_driver.h"

#include "enc.h"
#include "button.h"
#include "ship.h"
#include "monster_struct.h"

#define MAX_SHOT 5

struct point {
	uint8_t exist;
	uint8_t x;
	uint8_t y;
	uint8_t tick;
};

struct point shot[MAX_SHOT];

void shots_config(void) {
	uint8_t i;
	for(i = 0; i < MAX_SHOT; ++i)
		shot[i].exist = 0;
	return;
}


void shot_capture(uint32_t period_ms) {
	uint32_t time_between;
	static uint32_t old_time = 0;
    uint32_t current_time;
    current_time = LL_TIM_IC_GetCaptureCH1(TIM2) / 48000;
    current_time = LL_TIM_GetCounter(TIM2) / 48000; 
	time_between = current_time - old_time;
    if(time_between > period_ms) {
		old_time = current_time;
		static uint8_t i = 0;
		shot[i].exist = 1;    
		shot[i].x = ship_pos + 4;
		shot[i].y = 62;
		i++;
		if(i == MAX_SHOT)
			i = 0;
	}
}



void shot_move(uint8_t i) { 
	if(shot[i].exist) {
	//	++shot[i].tick;
	//	if(shot[i].tick % 1 == 0) {
			oled_set_pix(shot[i].x, shot[i].y, 0);
			oled_set_pix(shot[i].x, shot[i].y - 1, 0);
			shot[i].y -= 2;
			oled_set_pix(shot[i].x, shot[i].y, 1);
			oled_set_pix(shot[i].x, shot[i].y - 1, 1);
	//	}
		if(shot[i].y > 65) { 
			shot[i].exist = 0;
			shot[i].tick = 0;
		}
	}
}


void check_kill_x(int n, uint8_t i) {
	uint8_t j;
	for(j = n; j < 8 + n; ++j) {
		if((shot[i].x >= all_monster[j].x - n/8 + 2)
				 && (shot[i].x <= all_monster[j].x + 6 + n/8)
									 && all_monster[j].live) {
			kill_monster(j);
			shot[i].exist = 0;
		}
	}
}

void kill_check(uint8_t i) {
	if(shot[i].exist == 0)
		return;
	if(shot[i].y == all_monster[16].y || shot[i].y == all_monster[16].y - 1)
		check_kill_x(16, i);
	else if(shot[i].y == all_monster[8].y || shot[i].y == all_monster[8].y - 1)
		check_kill_x(8, i);
	else if(shot[i].y == all_monster[0].y || shot[i].y == all_monster[0].y - 1)
		check_kill_x(0, i);
}

#endif
