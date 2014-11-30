show_debug_message("Saving Player State ...");
var save = file_text_open_write(DIR_DATA + PLAYER_SAVE);
//hp;max_hp
file_text_write_string(save,base64_encode(string(hp) + ";" + string(max_hp)));
file_text_writeln(save);

//inv_current_slot;slot0NotEmpty;slot1NotEmpty;slot2NotEmpty;slot3NotEmpty;slot4NotEmpty;slot5NotEmpty;slot6NotEmpty;slot7NotEmpty
var inv_string = string(inv_current_slot);
for(var i = 0; i < inventory_size;i++)
{
    inv_string = inv_string + ";" + string(inv[i] != -1);
}
file_text_write_string(save,base64_encode(inv_string));
file_text_writeln(save);

//////ONE LINE PER WEAPON
//obj_index;mag_size;mag_ammo;max_ammo;ammo
for(var i = 0; i < inventory_size;i++)
{
    if(inv[i] != -1)
    {
        file_text_write_string(save,base64_encode(object_get_name(inv[i].object_index) + ";" + string(inv[i].mag_size) + ";" + string(inv[i].mag_ammo) + ";" + string(inv[i].max_ammo) + ";" + string(inv[i].ammo)));
        file_text_writeln(save);
    }
}


file_text_close(save);
show_debug_message("Player State Saved.");
