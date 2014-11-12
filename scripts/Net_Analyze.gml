///Net_Analyze( msgid )
   var buffer = NetTcp_Bfr;
   buffer_seek( buffer , buffer_seek_start , 0 );
   buffer_write( buffer , buffer_u8 , argument[ 0 ] );
   var result = network_send_packet( NetTcp_Sck , buffer , buffer_tell( buffer ) );
   return ( result >= 0 ) + ( ( result < 0 ) * -1 );
