///scr_get_input
right_key=keyboard_check(vk_right);  //nonlocal variable
up_key=keyboard_check(vk_up);
left_key=keyboard_check(vk_left);
down_key=keyboard_check(vk_down);
dash_key = keyboard_check_pressed(ord("C"));
attack_key = keyboard_check_pressed(ord("E"));

//get the axis
xaxis= (right_key - left_key);
yaxis= (down_key - up_key);


