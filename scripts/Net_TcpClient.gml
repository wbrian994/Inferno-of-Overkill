///Net_TcpClient( port , url / ip , buffer size )
   NetTcp_Sck = network_create_socket( network_socket_tcp );
   NetTcp_Bfr = buffer_create( argument[ 2 ] , buffer_fixed , 1 );
   NetTcp_Prt = argument[ 0 ];
   NetTcp_Ipa = argument[ 1 ];
   var result = network_connect( NetTcp_Sck , argument[ 1 ] , argument[ 0 ] );
   return ( result >= 0 ) + ( ( result < 0 ) * -1 );
