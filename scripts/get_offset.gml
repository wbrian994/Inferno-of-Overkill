/// get_offset(direction,x_dist,y_dist)
var dir = argument0;
var x_dist = argument1;
var y_dist = argument2;
var hOffX,hOffY,vOffX,vOffY;

hOffX = lengthdir_x(x_dist,dir);
hOffY = lengthdir_y(x_dist,dir);
vOffX = lengthdir_x(y_dist,dir + 90);
vOffY = lengthdir_y(y_dist,dir + 90);

var offsets;
offsets[1] = 0;
offsets[0] = hOffX + vOffX;
offsets[1] = hOffY + vOffY;
return offsets;
