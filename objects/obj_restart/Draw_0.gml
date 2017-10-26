/// @description Drawing the Rectangle
draw_set_color(c_red);
draw_rectangle(button_x1, button_y1, button_x2, button_y2, false);
draw_set_color (c_white);
draw_text((button_x1 + button_x2 - 20)/2, (button_y1 + button_y2 - 10)/2 , "Try again");
