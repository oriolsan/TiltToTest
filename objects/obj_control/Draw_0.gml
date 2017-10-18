/// @description Draw the title and death
draw_set_colour(c_white);

if (drawText == -1) {
    draw_text (room_width*0.5 , room_height*0.2, "Begin!");
} else if (drawText == 1) {
    draw_text (room_width*0.5 , room_height*0.2, "You died");
}
