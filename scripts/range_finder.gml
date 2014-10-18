/// range_finder( x , y , dir , range , object , prec , notme)
var ox,oy,dir,range,object,prec,notme,dx,dy,sx,sy,distance;
ox = argument0;
oy = argument1;
dir = argument2;
range = argument3;
object = argument4;
prec = argument5;
notme = argument6;
sx = lengthdir_x(range,dir);
sy = lengthdir_y(range,dir);
dx = ox + sx;
dy = oy + sy;
if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) 
{
    distance = range;
}
else
{
    while ((abs(sx) >= 1) || (abs(sy) >= 1)) 
    {
        sx /= 2;
        sy /= 2;
        if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) 
        {
            dx += sx;
            dy += sy;
        }
        else
        {
            dx -= sx;
            dy -= sy;
        }
    }
    distance = point_distance(ox,oy,dx,dy);
}
return distance;
