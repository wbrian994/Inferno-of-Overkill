ini_open(DIR_DATA + INI_STATS);
ini_write_real(SECT_SINGLEPLAYER,KEY_BULLETS_FIRED,global.ss_bullets_fired);
ini_write_real(SECT_SINGLEPLAYER,KEY_KILLS,global.ss_kills);
ini_write_real(SECT_SINGLEPLAYER,KEY_DEATHS,global.ss_deaths);
ini_write_real(SECT_SINGLEPLAYER,KEY_DMG_TAKEN,global.ss_damage_taken);
ini_write_real(SECT_SINGLEPLAYER,KEY_DMG_DEALT,global.ss_damage_dealt);
ini_close();
