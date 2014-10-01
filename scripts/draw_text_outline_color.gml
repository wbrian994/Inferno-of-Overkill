/// draw_text_outline_color(x,y,string,thickness,c1,c2,c3,c4,alpha,bc)
var xx = argument0;
var yy = argument1;
var text = argument2;
var width = argument3;
var c1 = argument4;
var c2 = argument5;
var c3 = argument6;
var c4 = argument7;
var alpha = argument8;
var bc = argument9;
for(i = xx - width; i <= xx + width; i++)
{
    for(j = yy - width; j <= yy + width; j++)
    {
        draw_text_colour(i,j,text,bc,bc,bc,bc,alpha);
    }
}
draw_text_colour(xx,yy,text,c1,c2,c3,c4,alpha);
