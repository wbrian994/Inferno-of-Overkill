var volume = argument0;
var time = argument1;
for(var i = 0; i < global.numSounds; i++)
{
    audio_sound_gain(global.audioSounds[i],volume,(time / room_speed) * 1000);
}
