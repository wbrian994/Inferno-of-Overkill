var a = application_get_position();
xx = a[0];
yy = a[1];
ww = a[2] - a[0];
hh = a[3] - a[1];

draw_set_blend_mode_ext(bm_dest_color,bm_zero);
if(surface_exists(lightmap))
{
    draw_surface(lightmap,0,0);
}
draw_set_blend_mode(bm_normal);
