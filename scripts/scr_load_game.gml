if (file_exists("Save.cav")){
    ini_open("Save.sav");
    var LoadedRoom = ini_read_real("Save1", "room", rm_1);
    global.stamina = ini_read_real("Сharacteristics", "stamina", 0);
    ini_close();
    room_goto(LoadedRoom);
}
else{

}
