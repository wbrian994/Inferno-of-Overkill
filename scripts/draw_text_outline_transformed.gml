/// draw_text_outline_transformed(x,y,string,thickness,xscale,yscale,angle)
var xx = argument0;
var yy = argument1;
var text = argument2;
var width = argument3;
var xscale = argument4;
var yscale = argument5;
var angle = argument6;
var color = draw_get_color();
draw_set_color(c_black);
for(var i = xx - width; i <= xx + width; i++)
{
    for(var j = yy - width; j <= yy + width; j++)
    {
        draw_text_transformed(i,j,text,xscale,yscale,angle);
    }
}
draw_set_color(color);
draw_text_transformed(xx,yy,text,xscale,yscale,angle);
