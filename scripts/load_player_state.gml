show_debug_message("Attempting to load player state ...");
if(file_exists(DIR_DATA + PLAYER_SAVE))
{
    var save = file_text_open_read(DIR_DATA + PLAYER_SAVE);
    var line;
    line = base64_decode(file_text_readln(save));
    show_debug_message(line);
    hp = real(string_extract(line,";",0));
    max_hp = real(string_extract(line,";",1));
    line = base64_decode(file_text_readln(save));
    show_debug_message(line);
    inv_current_slot = real(string_extract(line,";",0));
    for(var i = 0; i < inventory_size;i++)
    {
        if(inv[i] != -1)
        {
            with(inv[i])
            {
                instance_destroy();
            }
            inv[i] = -1;
        }
    }
    for(var i = 0; i < inventory_size;i++)
    {
        var templn;
        if(real(string_extract(line,";",i + 1)) == 1)
        {
            templn = base64_decode(file_text_readln(save));
            show_debug_message(templn);
            inv[i] = instance_create(0,0,asset_get_index(string_extract(templn,";",0)));
            inv[i].owner = self.id;
            inv[i].mag_size = real(string_extract(templn,";",1));
            inv[i].mag_ammo = real(string_extract(templn,";",2));
            inv[i].max_ammo = real(string_extract(templn,";",3));
            inv[i].ammo = real(string_extract(templn,";",4));
        }
    }
}
else
{
    show_debug_message("Error: File not found");
    exit;
}
show_debug_message("Player State Loaded.");
