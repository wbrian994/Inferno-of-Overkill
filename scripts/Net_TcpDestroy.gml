///Net_TcpDestroy()
   if ( NetTcp_Sck != -1 ) {
      network_destroy( NetTcp_Sck );
      buffer_delete( NetTcp_Bfr );
      NetTcp_Sck = -1;
      NetTcp_Bfr = -1;
      if ( NetTcp_Lst != -1 ) {
         ds_list_destroy( NetTcp_Lst );
         ds_list_destroy( NetTcp_Que );
         NetTcp_Lst = -1;
         NetTcp_Que = -1;
      }
   }
