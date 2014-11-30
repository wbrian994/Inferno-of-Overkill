var radius = 100;
var temp_surface = surface_create(radius * 2, radius * 2);
surface_set_target(temp_surface);
draw_clear(c_black);
draw_circle_colour(radius,radius,radius,c_white,c_black,false);
surface_reset_target();
global.point_light_sprite = sprite_create_from_surface(temp_surface,0,0,radius * 2,radius * 2,false,true,0,0);
surface_free(temp_surface);

temp_surface = surface_create(radius * 2, radius * 2);
surface_set_target(temp_surface);
draw_clear(c_black);
draw_triangle_colour(0,radius,radius * 2,0,radius * 2,radius * 2,c_white,c_black,c_black,false);
surface_reset_target();
global.cone_light_sprite = sprite_create_from_surface(temp_surface,0,0,radius * 2,radius * 2,false,true,0,0);
surface_free(temp_surface);
