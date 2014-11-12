///Net_UdpServer(  port , maxclients , ip , buffer size )
   NetUdp_Sck = network_create_socket( network_socket_udp );
   NetUdp_Hst = network_create_server( network_socket_udp , argument[ 0 ] , argument[ 1 ] );
   NetUdp_Bfr = buffer_create( argument[ 3 ] , buffer_fixed , 1 );
   NetUdp_Prt = argument[ 0 ];
   NetUdp_Ipa = argument[ 2 ];
   NetUdp_Map = ds_map_create();
   return ( NetUdp_Sck >= 0 && NetUdp_Hst >= 0 ) + ( ( NetUdp_Sck < 0 && NetUdp_Hst < 0 ) * -1 );
