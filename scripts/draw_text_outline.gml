/// draw_text_outline(x,y,string,thickness)
var xx = argument0;
var yy = argument1;
var text = argument2;
var width = argument3;
var color = draw_get_color();
draw_set_color(c_black);
for(var i = xx - width; i <= xx + width; i++)
{
    for(var j = yy - width; j <= yy + width; j++)
    {
        draw_text(i,j,text);
    }
}
draw_set_color(color);
draw_text(xx,yy,text);