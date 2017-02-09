scr_get_input();

//if (keyboard_check(ord("Q")))   scr_game_save();
//if (keyboard_check(ord("W")))   scr_game_load();

//dash state
if (dash_key && obj_player_stats.stamina >= DASH_COST){
    state = scr_dash_state;
    alarm[SWITCH_TO_MOVE] = 4.5;
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = 60;
}

//attack_state
if (attack_key){
    image_index = 0;
    state = scr_attack_state;
    //alarm[SWITCH_TO_MOVE] = 45;
}

//move_state
dir = point_direction(0, 0, xaxis, yaxis);

if (xaxis == 0 && yaxis == 0)
    len = 0;
else
{
    len = spd;
    scr_get_face();
}
    
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

phy_position_x += hspd;
phy_position_y += vspd;
    
    
//animation
image_speed = 0.2;
if (len == 0) image_index = 0;


switch(face){
    case RIGHT:
        sprite_index = spr_player_right; break;
    case UP:
        sprite_index = spr_player_up; break;
    case LEFT:
        sprite_index = spr_player_left; break;
    case DOWN:
        sprite_index = spr_player_down; break;
}

