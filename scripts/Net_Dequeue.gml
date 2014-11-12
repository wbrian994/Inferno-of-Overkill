///Net_Dequeue( buffer )
   var socket = buffer_read( argument[ 0 ] , buffer_u16 );
   var index = ds_list_find_index( NetTcp_Que , socket );
   if ( index != -1 ) {
      ds_list_delete( NetTcp_Que , index );
   }
