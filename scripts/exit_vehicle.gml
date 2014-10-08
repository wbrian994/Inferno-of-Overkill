visible = true;
        
v_entering = false;
v_exiting = true;

in_vehicle.driver = noone;
in_vehicle = noone;
if(inv[inv_current_slot] != -1)
    instance_activate_object(inv[inv_current_slot]);
