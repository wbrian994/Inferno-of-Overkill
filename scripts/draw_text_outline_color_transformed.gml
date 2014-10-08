/// draw_text_outline_color_transformed(x,y,string,thickness,c1,c2,c3,c4,alpha,bc,xscale,yscale,angle)
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
var xscale = argument10;
var yscale = argument11;
var angle = argument12;
for(i = xx - width; i <= xx + width; i++)
{
    for(j = yy - width; j <= yy + width; j++)
    {
        draw_text_transformed_colour(i,j,text,xscale,yscale,angle,bc,bc,bc,bc,alpha);
    }
}
draw_text_transformed_colour(xx,yy,text,xscale,yscale,angle,c1,c2,c3,c4,alpha);