
scr_enemy_check_for_player();
spd = 1.1;
var dir = point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
image_xscale = sign(hspd);
phy_position_x += hspd;
phy_position_y += vspd;
