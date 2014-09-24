if(surface_exists(lightsurface))
{
    surface_set_target(lightsurface);
}
else
{
    lightsurface = surface_create(radius * 2,radius * 2);
    surface_set_target(lightsurface);
}
draw_clear(c_black);
draw_set_alpha(alpha);
draw_circle_colour(radius,radius,radius,color,c_black,false);
surface_reset_target();
