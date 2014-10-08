global.paused = false;
//seed randoms
randomize();

//Draw Debug
global.draw_debug = false;

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
    ini_write_real(SECT_AUDIO,KEY_M_VOLUME,1);
    ini_write_real(SECT_AUDIO,KEY_S_VOLUME,1);
}

global.fullscreen = ini_read_string(SECT_SCREEN,KEY_FULLSCREEN,"false");
global.volume = clamp(ini_read_real(SECT_AUDIO,KEY_VOLUME,1),0,1);
global.music_volume = clamp(ini_read_real(SECT_AUDIO,KEY_M_VOLUME,1),0,1);
global.snd_volume = clamp(ini_read_real(SECT_AUDIO,KEY_S_VOLUME,1),0,1);
global.prev_m_volume = -1;
global.prev_s_volume = -1;
global.WXres = round(ini_read_real(SECT_SCREEN,KEY_X_WRES,1280));
global.WYres = round(ini_read_real(SECT_SCREEN,KEY_Y_WRES,720));
global.FXres = round(ini_read_real(SECT_SCREEN,KEY_X_FRES,display_get_width()));
global.FYres = round(ini_read_real(SECT_SCREEN,KEY_Y_FRES,display_get_height()));

ini_close();

//Camera Default Zoom
global.default_camera_zoom = 1;
global.camera_zoom = 1;
global.prev_zoom = global.camera_zoom;

//volume
audio_master_gain(global.volume);
init_audio_groups();
add_all_sounds();
add_all_music();

//Setup Window
global.fullscreen = (global.fullscreen == "true");
window_set_size(global.WXres,global.WYres);
global.camera_offset[0] = 0;
global.camera_offset[1] = 1;
global.shake_camera = 0; //Time to shake screen
global.shake_camera_amount = 32;

//Setup Particles
init_particles();

//Audio
audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_orientation(0,0,100,0,-1,0);
global.currentMusic = -1;

//Exit Init Screen
room_goto_next();
