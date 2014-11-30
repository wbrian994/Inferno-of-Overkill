/// draw_text_outline(x,y,string,thickness)
var xx = argument0;
var yy = argument1;
var text = argument2;
var width = argument3;
for(var i = xx - width; i <= xx + width; i++)
{
    for(var j = yy - width; j <= yy + width; j++)
    {
        var alpha = ((width * 2) - (abs(i - xx) + abs(j - yy))) / width;
        draw_set_alpha(alpha);
        show_debug_message("i: " + string(i) + "#j: " + string(j) + "#alpha: " + string(alpha));
        draw_text(i,j,text);
    }
}
draw_set_alpha(1);
draw_text(xx,yy,text);
