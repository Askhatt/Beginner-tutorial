/// saving data (stamina; hp) 
if (file_exists("Save.ini")) file_delete("Save.ini");
ini_open("Save.ini");
ini_write_real("Save1", "room", room);
ini_write_real("Сharacteristics", "stamina", obj_player_stats.stamina);
if instance_exists(obj_player)
    ini_write_real("Сharacteristics", "hp", obj_player.hp);

