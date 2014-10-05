/// change_music_volume( volume , time )
var volume = argument0;
var time = argument1;
for(var i = 0; i < global.numMusic; i++)
{
    audio_sound_gain(global.audioMusic[i],volume,(time / room_speed) * 1000);
}
