/// cut_add_wait( volume , time )
var volume = argument0;
var time = argument1;

var controller = self.id;
ds_list_add(controller.event_data,volume);
ds_list_add(controller.event_times,time);
ds_list_add(controller.events,"volume");
