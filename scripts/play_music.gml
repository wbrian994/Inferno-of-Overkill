/// play_music(music,loop)
var music = argument0;
var loop = argument1;
for(var i = 0; i < global.numMusic; i++)
{
    audio_stop_sound(global.audioMusic[i]);
}

global.currentMusic = music;

return audio_play_sound(music,1,loop);
