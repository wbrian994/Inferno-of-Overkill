/// list_deactivated_objects ()
var objects;
objects[0] = noone;
for (var i = 0; i < instance_count; i++;)
{
    var inst = instance_id[i];
    if inst
    {
        if(!instance_exists(inst))
        {
            objects[array_length_1d(objects)] = inst;
            show_message("test");
        }
        show_debug_message("test");
    }
}
show_message("there are " + string(array_length_1d(objects)) + " deactivated objects");
