if (file_exists("Save.ini")){
    ini_open("Save.ini");
    var LoadedRoom = ini_read_real("Save1", "room", rm_2);
    global.stamina = ini_read_real("Сharacteristics", "stamina", 0);
        ini_write_real("Сharacteristics", "hp", 0);
    ini_close();
    room_goto(LoadedRoom);
    
}
else{

}
