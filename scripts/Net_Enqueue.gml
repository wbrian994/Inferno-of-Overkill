///Net_Enqueue( msgid )
   var position = 0;
   var buffer = NetTcp_Bfr;
   repeat( ds_list_size( NetTcp_Que ) ) {
      var socket = ds_list_find_value( NetTcp_Que , position );
      buffer_seek( buffer , buffer_seek_start , 0 );
      buffer_write( buffer , buffer_u8 , argument[ 0 ] );
      buffer_write( buffer , buffer_u16 , socket );
      network_send_packet( socket , buffer , buffer_tell( buffer ) );
      position += 1;
   }
