/// lightmap_init(width,height,dark_color,ambient_color)
var width,height,brightness;
width = argument0;
height = argument1;
dark = argument2;
light = argument3;

//Create Surface
var a = application_get_position();
var xx = a[0];
var yy = a[1];
var ww = a[2] - a[0];
var hh = a[3] - a[1];
lightmap = surface_create(ww,hh);

//Set Darkness Color
dark_color = dark;

//Set Light Color
ambient_color = light; //Basically, the color of the sun's light
