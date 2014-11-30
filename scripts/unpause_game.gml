/// unpause_game ()
paused = false;
if(instance_exists(obj_Pause_Menu))
{
    with(obj_Pause_Menu)
    {
        destroy = true;
    }
}
instance_activate_all();

if(instance_exists(obj_Darius))
{
    with(obj_Darius)
    {
        //update inventory
        for(var i = 0; i < inventory_size;i++)
        {
            if(i != inv_current_slot && inv[i] != -1)
            {
                if(i == 8 && inv[i].laser != noone)
                {
                    with(inv[i].laser)
                    {
                        instance_destroy();
                    }
                }
                instance_deactivate_object(inv[i]);
            }
        }
    }
}
