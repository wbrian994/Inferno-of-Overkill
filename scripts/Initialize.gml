global.paused = false;
//seed randoms
randomize();

//Christmas
global.is_christmas = (current_day == 25 && current_month == 12);

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
global.first_run = ini_read_string(SECT_DATA,KEY_FIRST_RUN,"true");
if(global.first_run == "true")
{
    ini_write_string(SECT_DATA,KEY_FIRST_RUN,"false");
}

if(!ini_key_exists(SECT_DATA,KEY_SHOW_INTRO))
{
    ini_write_string(SECT_DATA,KEY_SHOW_INTRO,"true");
}
global.show_intro = (ini_read_string(SECT_DATA,KEY_SHOW_INTRO,"true") == "true");

//write initial ini values
if(!ini_section_exists(SECT_SCREEN))
{
    ini_write_string(SECT_SCREEN,KEY_FULLSCREEN,"false");
    ini_write_real(SECT_SCREEN,KEY_X_WRES,1280);
    ini_write_real(SECT_SCREEN,KEY_Y_WRES,720);
    ini_write_real(SECT_SCREEN,KEY_X_FRES,display_get_width());
    ini_write_real(SECT_SCREEN,KEY_Y_FRES,display_get_height());
    ini_write_string(SECT_SCREEN,KEY_PERSISTANCE,"true");
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
global.persistant_debris = (ini_read_string(SECT_SCREEN,KEY_PERSISTANCE,"true") == "true");

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
global.fullscreen_changed = false;
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

//Player Lives
global.player_max_lives = -1;
global.player_lives = global.player_max_lives;

//Singleplayer Statistics
ini_open(DIR_DATA + INI_STATS);
global.ss_bullets_fired = ini_read_real(SECT_SINGLEPLAYER,KEY_BULLETS_FIRED,0);
global.ss_kills = ini_read_real(SECT_SINGLEPLAYER,KEY_KILLS,0);
global.ss_deaths = ini_read_real(SECT_SINGLEPLAYER,KEY_DEATHS,0);
global.ss_damage_taken = ini_read_real(SECT_SINGLEPLAYER,KEY_DMG_TAKEN,0);
global.ss_damage_dealt = ini_read_real(SECT_SINGLEPLAYER,KEY_DMG_DEALT,0);
ini_close()

//Cutscene
global.current_cutscene = -1;
global.cutscene_next_room = -1;

//Lighting Optimization
init_light_sprite();

//Exit Init Screen
if(global.show_intro)
{
    play_cutscene("intro",rm_Menu);
}
else
{
    room_goto_next();
}
