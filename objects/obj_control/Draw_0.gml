///draw the title and death
draw_set_colour (c_white);


if (drawText == -1)
    {
        draw_text (room_width*.5 , room_height *.2, "Begin!")
    }
if (drawText == 1) 
    {
        draw_text (room_width*.5 , room_height *.2, "You died")
    }
