/// cut_add_image(image,time,wait_to_finish)
var image = argument0;
var time = argument1;
var wait = argument2;

var controller = self.id;

ds_list_add(controller.event_data,image);
ds_list_add(controller.event_times,time);
ds_list_add(controller.events,"image");

if(wait)
{
    cut_add_wait(time);
}
