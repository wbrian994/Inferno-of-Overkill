/// cut_add_text(text,time,wait_to_finish)
var text = argument0;
var time = argument1;
var wait = argument2;

var controller = self.id;

ds_list_add(controller.event_data,text);
ds_list_add(controller.event_times,time);
ds_list_add(controller.events,"text");

if(wait)
{
    cut_add_wait(time);
}
