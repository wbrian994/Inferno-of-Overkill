global.paused = false;
//seed randoms
randomize();

//Create Needed Directories
if(!directory_exists(working_directory + DIR_DATA))
{
    directory_create(working_directory + DIR_DATA);
}

//INI
ini_open(DIR_DATA + INI_SETTINGS);
//First Run
global.FirstRun = ini_read_string(SECT_DATA,KEY_FIRST_RUN,"true");
if(global.FirstRun == "true")
{
    ini_write_string(SECT_DATA,KEY_FIRST_RUN,"false");
}

//write initial ini values
if(!ini_section_exists(SECT_SCREEN))
{
    ini_write_string(SECT_SCREEN,KEY_FULLSCREEN,"false");
    ini_write_real(SECT_SCREEN,KEY_X_WRES,1280);
    ini_write_real(SECT_SCREEN,KEY_Y_WRES,720);
    ini_write_real(SECT_SCREEN,KEY_X_FRES,display_get_width());
    ini_write_real(SECT_SCREEN,KEY_Y_FRES,display_get_height());
}
if(!ini_section_exists(SECT_AUDIO))
{
    ini_write_real(SECT_AUDIO,KEY_VOLUME,1);
}

global.fullscreen = ini_read_string(SECT_SCREEN,KEY_FULLSCREEN,"false");
global.volume = clamp(ini_read_real(SECT_AUDIO,KEY_VOLUME,1),0,1);
global.WXres = round(ini_read_real(SECT_SCREEN,KEY_X_WRES,1280));
global.WYres = round(ini_read_real(SECT_SCREEN,KEY_Y_WRES,720));
global.FXres = round(ini_read_real(SECT_SCREEN,KEY_X_FRES,display_get_width()));
global.FYres = round(ini_read_real(SECT_SCREEN,KEY_Y_FRES,display_get_height()));

ini_close();

//volume
audio_master_gain(global.volume);

//Setup Window
global.fullscreen = (global.fullscreen == "true");
window_set_size(global.WXres,global.WYres);

//Setup Particles
//init_particles();

//Audio
audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_orientation(0,0,100,0,-1,0);
global.currentMusic = -1;

//Exit Init Screen
room_goto_next();