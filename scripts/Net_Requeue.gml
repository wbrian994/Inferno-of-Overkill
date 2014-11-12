///Net_Requeue( buffer , msgid )
   var queued_socket = buffer_read( argument[ 0 ] , buffer_u16 );
   var socket = NetTcp_Sck , buffer = NetTcp_Bfr;
   buffer_seek( buffer , buffer_seek_start , 0 );
   buffer_write( buffer , buffer_u8 , argument[ 1 ] );
   buffer_write( buffer , buffer_u16 , queued_socket );
   network_send_packet( socket , buffer , buffer_tell( buffer ) );
   return queued_socket;
