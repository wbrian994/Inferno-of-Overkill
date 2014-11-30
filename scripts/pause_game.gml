/// pause_game (create_menu)
var create_menu = argument0;

paused = true;
save_statistics();
instance_activate_all();
var temp_surface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
surface_copy(temp_surface,0,0,application_surface);
if(instance_exists(obj_lightmap))
{
    surface_set_target(temp_surface);
    with(obj_lightmap)
    {
        lightmap_draw();
    }
    surface_reset_target();
}
var sprite = sprite_create_from_surface(temp_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),false,false,0,0);
instance_deactivate_all(true);
instance_activate_object(obj_Game_Controller);

if(create_menu)
{
    pause_menu = instance_create(0,0,obj_Pause_Menu);
    pause_menu.background_sprite = sprite;
    pause_menu.controller = self.id;
}
else
{
    return sprite;
}

show_debug_message("Damage Taken: " + string(global.ss_damage_taken));
