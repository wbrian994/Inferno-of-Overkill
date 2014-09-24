/// lightmap_update(ambient_brightness)
var brightness = clamp(argument0,0,1);
var a = application_get_position();
xx = a[0];
yy = a[1];
ww = a[2] - a[0];
hh = a[3] - a[1];

//resize surface if resolution changes
if(surface_exists(lightmap))
{
    if(surface_get_width(lightmap) != ww || surface_get_height(lightmap) != hh)
    {
        surface_resize(lightmap,ww,hh);
    }
}
else
{
    lightmap = surface_create(ww,hh);
}

//Update Lights
with(obj_light)
{
    light_update();
}

//Draw to lightmap
surface_set_target(lightmap);

//Draw Full Dark
draw_clear(dark_color);

//start adding light
draw_set_blend_mode(bm_add);
//ambient light
draw_set_color(ambient_color);
draw_set_alpha(brightness);
draw_rectangle(0,0,ww,hh,false);
draw_set_alpha(1);
//draw light sources
with(obj_light)
{
    if((x + radius >= 0 || x - radius <= other.ww) && (y + radius >= 0 || y - radius <= other.hh))
    {
        light_draw();
    }
}

//reset draw stuff
draw_set_blend_mode(bm_normal);
surface_reset_target();
