///Net_TcpAssets( asset )
   switch( argument[ 0 ] ) {
      case 0: return NetTcp_Sck; break;
      case 1: return NetTcp_Bfr; break;
      case 2: return NetTcp_Con; break;
      case 3: return NetTcp_Dis; break;
      case 4: return NetTcp_Ipa; break;
      case 5: return NetTcp_Prt; break;
      case 6: return NetTcp_Lst; break;
      case 7: return NetTcp_Que; break;
      case 8: return ds_list_size( NetTcp_Lst ); break;
      case 9: return ds_list_size( NetTcp_Que ); break;
   }
