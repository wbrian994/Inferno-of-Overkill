/// cut_add_wait(time)
var time = argument0;

var controller = self.id;
ds_list_add(controller.event_data,-1);
ds_list_add(controller.event_times,time);
ds_list_add(controller.events,"wait");
