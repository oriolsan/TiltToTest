///movement death and shooting
DistanceToPlayer = distance_to_point (mouse_x, mouse_y) ;

if (DistanceToPlayer <= 2)
{
    speed = 0 
    player_speed = 0
}
else if (DistanceToPlayer > 5 )
{
    player_speed = DistanceToPlayer / 10
    if (player_speed < 5) {player_speed = 5} 
    if (player_speed > 25) {player_speed = 25}
} 

move_towards_point (mouse_x , mouse_y, player_speed);
direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction;

//shooting

if (canShoot) {
    if (mouse_check_button (mb_left))
    {
    
    a = instance_create_depth (x, y, 0, obj_cone); 
    a.direction = direction;
    a.image_angle = direction;
    a.speed = 5;
    alarm[0] = room_speed * 2;
    canShoot = false;  
    
    
    }
}

// death

if (position_meeting (x,y, obj_enemy1))
    {
        instance_destroy();   
    }