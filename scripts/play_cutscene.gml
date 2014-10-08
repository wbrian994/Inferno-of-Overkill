/// play_cutscene(name)
var name = argument0;

var controller = instance_create(0,0,obj_cutscene_manager);
controller.cutscene_name = name;

var script = asset_get_index("cut_" + string(name));
if(script_exists(script))
{
    with(controller)
    {
        script_execute(script);
    }
}
else
{
    show_debug_message("Couldn't play cutscene " + name);
    with(controller)
    {
        instance_destroy();
    }
    return -1;
}

return controller;
