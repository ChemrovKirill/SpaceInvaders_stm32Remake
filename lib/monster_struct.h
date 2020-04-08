#ifndef _MONSTER_STRUCT_
#define _MONSTER_STRUCT_

#include <stdio.h>
#include <stdlib.h>

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
#include "shot.h"

uint8_t monster_model[3][9*7] = {
	{
	0,0,0,1,0,1,0,0,0,
	0,0,1,0,0,0,1,0,0,
	0,0,1,1,1,1,1,0,0,
	0,0,1,0,1,0,1,0,0,
	0,0,1,1,1,1,1,0,0,
	0,0,0,0,1,0,0,0,0,
	0,0,1,1,0,1,1,0,0 },
	{
	0,0,0,0,0,0,0,0,0,
	0,1,0,1,1,1,0,1,0,
	0,0,1,1,1,1,1,0,0,
	0,1,1,1,0,1,1,1,0,
	0,0,1,1,1,1,1,0,0,
	0,0,0,1,0,1,0,0,0,
	0,1,1,0,0,0,1,1,0 },
	{
	0,0,1,0,0,0,1,0,0,
	0,0,1,1,1,1,1,0,0,
	0,1,1,1,1,1,1,1,0,
	1,1,0,1,1,1,0,1,1,
	0,1,1,1,1,1,1,1,0,
	0,1,0,0,1,0,0,1,0,
	1,0,1,0,0,0,1,0,1 }   };

struct monster {
	uint8_t x, y;
	uint8_t model;
	uint8_t live;
};

static struct monster all_monster[24];
struct monster *monster_start;

void update_monster_location(struct monster  * str) {
	
	if(str->live == 0)
		return;

	for (int i = 0; i < 9 * 11; ++i) 
       		oled_set_pix(str->x + (i % 11) - 1, str->y - 9 + (i / 11) + 1, 0); 
 
	for (int i = 0; i < 7 * 9; ++i) 
       		oled_set_pix(str->x + (i % 9), str->y - 7 + (i / 9), monster_model[str->model][i]); 
 
	if(str->y > 55 && str->live)
		game_over_flag = 1;
    
}

struct monster * spawn_monster(struct monster * str, int x, int y, int model) {
	str->x = x;
	str->y = y;
	str->live = 1;
		str->model = model;
	update_monster_location(str);
	return str;
}

void kill_monster(int i) {
	all_monster[i].live = 0;
	for (int k = 0; k < 8 * 9; ++k) 
   		oled_set_pix(all_monster[i].x + (k % 9),
				 		all_monster[i].y - (k / 9), 0); 
	oled_update();
	kills++;
}

void move_monster(struct monster * str, int dir) { //0-down, 1-up, 2-left, 3-right
	switch (dir) { 
	case 0:
		str->y = str->y + 1;
	break;
	case 1:
		str->y = str->y - 1;
	break;
	case 2:
		str->x = str->x - 1;
	break;
	case 3:
		str->x = str->x + 1;
	break;
	default:  ;
	}
	update_monster_location(str);
}

void move_all_monster_dir(struct monster * str,int dir, int a) { //0-down, 1-up, 2-left, 3-right a-qty of monster
	for (int i = 0; i < a; ++i) {
		move_monster(str+i, dir);
	}	
}

void move_all_monster(struct monster * str, int turn2, int a) {
	if ((turn2 % 48) < 20){ 
		move_all_monster_dir(str, 3, a);
	}
	else if((turn2 % 48) < 24) {
		move_all_monster_dir(str, 0, a);
	}
	else if((turn2 % 48) < 44) {
		move_all_monster_dir(str, 2, a);
	}
	else if((turn2 % 48) < 48) {
		move_all_monster_dir(str, 0, a);
	}

}

void spawn_all_monsters(void) {
	uint8_t x = 0;
	for (int i = 0; i < 8; ++i) { 
		x = i * (9 + 5);
		spawn_monster(&all_monster[i], x, 7, 0);
		spawn_monster(&all_monster[i+8], x, 17, 1);
		spawn_monster(&all_monster[i+16], x, 27, 2);
	}
}

#endif
