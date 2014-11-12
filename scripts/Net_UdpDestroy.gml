///Net_UdpDestroy()
   if ( NetUdp_Sck != -1 ) {
      network_destroy( NetUdp_Sck );
      network_destroy( NetUdp_Hst );
      buffer_delete( NetUdp_Bfr );
      ds_map_destroy( NetUdp_Map );
      NetUdp_Sck = -1;
      NetUdp_Hst = -1;
      NetUdp_Bfr = -1;
      NetUdp_Map = -1;
   }
