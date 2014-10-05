/// cut_add_wait(music, time)
var music = argument0;
var time = argument1;

var controller = self.id;
ds_list_add(controller.event_data,music);
ds_list_add(controller.event_times,time);
ds_list_add(controller.events,"music");
