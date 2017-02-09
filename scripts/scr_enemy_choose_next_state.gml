if (alarm[0] <= 0) {
    state = choose(scr_enemy_wander_state, scr_enemy_check_for_player);
    alarm[0] = room_speed*irandom_range(1, 3);
    targetx = random(room_width);
    targety = random(room_height);
}
