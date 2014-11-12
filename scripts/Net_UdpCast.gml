///Net_UdpCast( msgid , server name )
   var buffer = NetUdp_Bfr;
   buffer_seek( buffer , buffer_seek_start , 0 );
   buffer_write( buffer , buffer_u8 , argument[ 0 ] );
   buffer_write( buffer , buffer_string , string( argument[ 1 ] ) );
   network_send_broadcast( NetUdp_Sck , NetUdp_Prt , buffer , buffer_tell( buffer ) );
