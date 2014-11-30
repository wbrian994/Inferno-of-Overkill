/// string_extract( string , seperator , index )
var str,sep,ind,len;
str = argument0;
sep = argument1;
ind = argument2;
len = string_length(sep)-1;
repeat (ind)
    str = string_delete(str,1,string_pos(sep,str)+len);
str = string_delete(str,string_pos(sep,str),string_length(str));
return str;
