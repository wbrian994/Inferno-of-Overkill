///Net_TcpServer( port , maxclients , buffer size )
   NetTcp_Sck = network_create_server( network_socket_tcp , argument[ 0 ] , argument[ 1 ] );
   NetTcp_Bfr = buffer_create( argument[ 2 ] , buffer_fixed , 1 );
   NetTcp_Lst = ds_list_create();
   NetTcp_Que = ds_list_create();
   NetTcp_Prt = argument[ 0 ];
   return ( NetTcp_Sck >= 0 ) + ( ( NetTcp_Sck < 0 ) * -1 );
