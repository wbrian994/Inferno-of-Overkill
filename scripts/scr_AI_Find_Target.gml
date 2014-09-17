/// scr_AI_Find_Target ()
var target_counter, possible_targets, temp_target;
if(!instance_exists(target))
{
    target = -1;
}
if(instance_number(obj_Unit_Par) == 0)
{
    target = -1;
    return -1;
    exit;
}
if(irandom(10) == 0)
{
    if(target == -1)
    {
        target_counter = 0;
        possible_targets = instance_number(obj_Unit_Par);
        while(target_counter < possible_targets)
        {
            target_counter++;
            temp_target = instance_nth_nearest(x,y,obj_Unit_Par,target_counter);
            if(temp_target.team != team)
            {
                if(point_distance(x,y,temp_target.x,temp_target.y) > sight_distance + 20)
                {
                    break;
                }
                else
                {
                    target = temp_target;
                    break;
                }
            }
        }
    }
    else
    {
        if(collision_line(x,y,target.x,target.y,obj_wall,false,true))
        {
            target_counter = 0;
            possible_targets = instance_number(obj_Unit_Par);
            while(target_counter < possible_targets)
            {
                target_counter++;
                temp_target = instance_nth_nearest(x,y,obj_Unit_Par,target_counter);
                if(temp_target.team != team)
                {
                    if(point_distance(x,y,temp_target.x,temp_target.y) > sight_distance + 20)
                    {
                        break;
                    }
                    else
                    {
                        target = temp_target;
                        break;
                    }
                }
            }
        }
    }
}