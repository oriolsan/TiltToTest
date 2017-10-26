/// @description Finish game upon death
if (!instance_exists(obj_arrow) && instance_exists(obj_enemy1)) {
    with (obj_enemy1) instance_destroy();
    alarm [1] = room_speed * 2;
    drawText = 1;
	//play_again()
	instance_create_depth(0,0,0, obj_restart);
}