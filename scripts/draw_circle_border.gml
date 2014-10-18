/// draw_circle_border( x , y , r, thickness )
var xpos = argument0;
var ypos = argument1;
var radius = argument2;
var thickness = argument3;

for(var i = 0; i < thickness; i+= 0.5)
{
    draw_circle(xpos,ypos,radius - i,true);
}
