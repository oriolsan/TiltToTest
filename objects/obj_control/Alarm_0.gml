/// @description Random spawn location and time
var spawn_loc = irandom(3);

switch (spawn_loc) {
    case 0:
        pos_x = irandom_range(-50, room_width+50);
        pos_y = room_height + 50;
		break;
    case 1:
        pos_x = irandom_range(-50, room_width+50);
        pos_y = - 50;
		break;
    case 2:
        pos_x = -50;
        pos_y = irandom_range(-50, room_height+50); 
		break;
    case 3:
        pos_x = room_width + 50;
        pos_y = irandom_range(-50, room_height+50);
		break;
}

if (instance_number(obj_enemy1) <= 100) {
    instance_create_depth(pos_x, pos_y, 0, obj_enemy1);
}
// spawn timer depending on the time
if (timer <= 5){
	spawn_timer = 5;
} else if (timer <= 20) {
	spawn_timer = 20/timer;
} else { 
	spawn_timer = 0.8;
}
	
if (instance_exists(obj_arrow)) {
	alarm[0] = random_range(room_speed * 0.05, room_speed * (spawn_timer));
}