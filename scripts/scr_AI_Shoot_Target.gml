var bullet_counter, num_bullets, bullet_to_dodge;
if(target != -1)
{
    //Lead Player with aim
    image_angle += sin(degtorad((point_direction(x,y,target.x+lengthdir_x(target.speed*point_distance(x,y,target.x,target.y)*0.1,target.direction),target.y+lengthdir_y(target.speed*point_distance(x,y,target.x,target.y)*0.1,target.direction)))-image_angle))*12;
    if(!collision_line(x,y,target.x,target.y,obj_solid,false,true))
    {
        //shoot
        gun.shoot = true;
    }
    //check if player is dead
    if(!instance_exists(target))
    {
        target = -1;
        exit;
    }
    //Dodge bullets
    bullet_counter = 0;
    num_bullets = instance_number(obj_bullet);
    while(bullet_counter < num_bullets)
    {
        bullet_counter++;
        bullet_to_dodge = instance_nth_nearest(x,y,obj_bullet,bullet_counter);
        if(point_distance(x,y,bullet_to_dodge.x,bullet_to_dodge.y) > 48)
        {
            bullet_counter = num_bullets + 1;
        }
        else if(bullet_to_dodge.owner != self.id)
        {
            mp_potential_step_object(x + lengthdir_x(16*sin(angle_difference(point_direction(bullet_to_dodge.x,bullet_to_dodge.y,x,y,),bullet_to_dodge.direction)),point_direction(bullet_to_dodge.x,bullet_to_dodge.y,x,y)+90),y + lengthdir_y(16 * sin(angle_difference(point_direction(bullet_to_dodge.x,bullet_to_dodge.y,x,y),bullet_to_dodge.direction)),point_direction(bullet_to_dodge.x,bullet_to_dodge.y,x,y)+90),4,obj_solid);
            exit;
        }
    }
    //if(hp >= target.hp / 2 || hp > max_hp / 0.25)
    {
        //Follow Target
        if(point_distance(x,y,target.x,target.y) > 232 || collision_line(x,y,target.x,target.y,obj_solid,false,true))
        {
            mp_potential_step_object(target.x,target.y,4,obj_solid);
        }
        if(point_distance(x,y,target.x,target.y) < 192 && !collision_line(x,y,target.x,target.y,obj_solid,false,true))
        {
            mp_potential_step_object(target.x,target.y,-4,obj_solid);
        }
    }
    /*else
    {
        //Get cover if health is too low
        var nearest_wall = instance_nearest(x,y,obj_solid);
        var wall_dir = point_direction(target.x,target.y,nearest_wall.x + 16,nearest_wall.y + 16);
        mp_potential_step_object(nearest_wall.x + lengthdir_x(32,wall_dir),y + lengthdir_y(32,wall_dir),4,obj_solid);
    }*/
}
else
{
    //No target
}
