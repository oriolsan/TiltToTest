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

if (instance_exists(obj_arrow)) {
	alarm[0] = random_range(room_speed * 0.05 , room_speed * 10/timer+1);
}