///Net_UdpAssets( asset )
   switch( argument[ 0 ] ) {
      case 0: return NetUdp_Sck; break;
      case 1: return NetUdp_Hst; break;
      case 2: return NetUdp_Bfr; break;
      case 3: return NetUdp_Ipa; break;
      case 4: return NetUdp_Prt; break;
      case 5: return NetUdp_Map; break;
      case 6: return ds_map_size( NetUdp_Map ); break;
   }
