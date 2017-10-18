///movement

if (instance_exists (obj_arrow))
{
    tx = obj_arrow.x
    ty = obj_arrow.y
    direction = angle_rotate (direction, point_direction (x,y, tx, ty), turn_rate);
    motion_set (direction, enemy_speed)
}
else {speed=0}
image_angle = direction; 

///death 

if (position_meeting (x,y, obj_cone))
    {
        instance_destroy();   
    }