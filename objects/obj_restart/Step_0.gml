/// @description Check if button is pressed
// check if player presses the button of "try again"
if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, button_x1, button_y1, button_x2, button_y2)){
	with (obj_control){
		instance_destroy();
	}
	instance_create_depth(200,200, 0, obj_control);
	instance_create_depth(room_width/2, room_height/2, 0, obj_arrow);
	instance_destroy();
}
