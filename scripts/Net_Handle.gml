///Net_Handle( script id )
   switch( ds_map_find_value( async_load , "type" ) ) {
      case network_type_connect:
         NetTcp_Con = ds_map_find_value( async_load , "socket" );
         ds_list_add( NetTcp_Lst , NetTcp_Con );
         ds_list_add( NetTcp_Que , NetTcp_Con );
      break;
      case network_type_disconnect:
         NetTcp_Dis = ds_map_find_value( async_load , "socket" );
         var index = ds_list_find_index( NetTcp_Lst , NetTcp_Dis );
         var queue = ds_list_find_index( NetTcp_Que , NetTcp_Dis );
         if ( index != -1 ) {
            ds_list_delete( NetTcp_Lst , index );
         }
         if ( index != -1 ) {
            ds_list_delete( NetTcp_Que , queue );
         }
      break;
      case network_type_data:
            var buffer = ds_map_find_value( async_load , "buffer" );
            var bsize = ds_map_find_value( async_load , "size" );
            buffer_seek( buffer , buffer_seek_start , 0 );
            var msgid = buffer_read( buffer , buffer_u8 );
            script_execute( argument[ 0 ] , buffer , bsize , msgid );
      break;
   }
