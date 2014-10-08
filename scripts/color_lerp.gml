/// color_lerp( color1 , color2 , amount )
var color1 = argument0;
var color2 = argument1;
var amount = argument2;

var c1_red,c1_green,c1_blue,c2_red,c2_green,c2_blue,c3;
c1_red = colour_get_red(color1);
c1_green = colour_get_green(color1);
c1_blue = colour_get_blue(color1);
c2_red = colour_get_red(color2);
c2_green = colour_get_green(color2);
c2_blue = colour_get_blue(color2);

c3 = make_colour_rgb(lerp(c1_red,c2_red,amount),lerp(c1_green,c2_green,amount),lerp(c1_blue,c2_blue,amount));
return c3;
