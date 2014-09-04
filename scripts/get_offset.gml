/// get_offset(direction,x_dist,y_dist)
var dir = argument0;
var x_dist = argument1;
var y_dist = argument2;
var hOffX,hOffY,vOffX,vOffY;
hOffX = 0;
hOffY = 0;
vOffX = 0;
vOffY = 0;
if(x_dist != 0)
{
    hOffX = (x_dist * cos(degtorad(dir)));
    hOffY = (x_dist * -sin(degtorad(dir)));
}
if(y_dist != 0)
{
    vOffX = (y_dist * cos(degtorad(dir + 90)));
    vOffY = (y_dist * -sin(degtorad(dir + 90)));
}
var offsets;
offsets[0] = hOffX + vOffX;
offsets[1] = hOffY + vOffY;
return offsets;