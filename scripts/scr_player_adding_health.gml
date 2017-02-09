if (instance_exists(obj_player)){
    if (obj_player.hp + 2 <= maxhp)
        obj_player.hp += 2;
    else if (obj_player.hp + 1 <= maxhp)
        obj_player.hp +=1;
}
