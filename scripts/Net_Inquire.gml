///Net_Inquire( buffer )
   var server_name = buffer_read( argument[ 0 ] , buffer_string );
   var server_ipaddress = ds_map_find_value( async_load , "ip" );
   ds_map_add( NetUdp_Map , server_name , server_ipaddress );
