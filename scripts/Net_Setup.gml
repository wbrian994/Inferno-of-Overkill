///Net_Setup( tcp , udp )
   //TCP Setup
   if ( argument[ 0 ] == true ) {
      globalvar NetTcp_Sck , NetTcp_Bfr , NetTcp_Con;
      globalvar NetTcp_Dis , NetTcp_Ipa , NetTcp_Prt;
      globalvar NetTcp_Que , NetTcp_Lst;
      NetTcp_Sck = -1; NetTcp_Bfr = -1;
      NetTcp_Con = -1; NetTcp_Dis = -1;
      NetTcp_Ipa = -1; NetTcp_Prt = -1;
      NetTcp_Lst = -1; NetTcp_Que = -1;
   }
   //Udp Setup
   if ( argument[ 1 ] == true ) {
      globalvar NetUdp_Sck , NetUdd_Hst , NetUdp_Bfr;
      globalvar NetUdp_Ipa , NetUdp_Prt , NetUdp_Map;
      NetUdp_Sck = -1; NetUdp_Hst = -1;
      NetUdp_Bfr = -1; NetUdp_Ipa = -1;
      NetUdp_Prt = -1; NetUdp_Map = -1;
   }
