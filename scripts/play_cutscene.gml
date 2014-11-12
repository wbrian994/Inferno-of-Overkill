/// play_cutscene (name, next_room)
var name = argument0;
var next_room = argument1;
global.current_cutscene = name;
global.cutscene_next_room = next_room;
room_goto(rm_cutscene);
