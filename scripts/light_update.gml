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
var scale = (radius * 2) / sprite_get_width(global.point_light_sprite);
switch(shape)
{
    case "POINT":
        draw_sprite_ext(global.point_light_sprite,0,x_offset,y_offset,scale,scale,0,color,alpha);
        break;
    case "CONE":
        draw_sprite_ext(global.cone_light_sprite,0,x_offset,y_offset,scale,scale,0,color,alpha);
        break;
}

draw_set_color(c_black);
draw_set_alpha(1);
//cast shadows
with(obj_shadowcaster)
{
    draw_primitive_begin(pr_trianglestrip);
    for(var i = 0; i < cast_points; i++)
    {
        var tempx, tempy, dir;
        tempx = x + cast_x[i] - other.x + other.origin_x;
        tempy = y + cast_y[i] - other.y + other.origin_y;
        show_debug_message(string(other.x + other.origin_x));
        dir = point_direction(tempx,tempy,other.origin_x,other.origin_y) + 180;
        
        draw_vertex(tempx,tempy);
        draw_vertex(tempx + lengthdir_x(other.origin_x * 8,dir),tempy + lengthdir_y(other.origin_y * 8,dir));
    }
    
    var tempx, tempy, dir;
    tempx = x + cast_x[0] - other.x + other.origin_x;
    tempy = y + cast_y[0] - other.y + other.origin_y;
    dir = point_direction(tempx,tempy,other.origin_x,other.origin_y) + 180;
    
    draw_vertex(tempx,tempy);
    draw_vertex(tempx + lengthdir_x(other.radius * 8,dir),tempy + lengthdir_y(other.radius * 8,dir));
    
    draw_primitive_end();
}

with(obj_shadowcaster_solid)
{
    draw_primitive_begin(pr_trianglestrip);
    for(var i = 0; i < cast_points; i++)
    {
        var tempx, tempy, dir;
        tempx = x + cast_x[i] - other.x + other.origin_x;
        tempy = y + cast_y[i] - other.y + other.origin_y;
        dir = point_direction(tempx,tempy,other.origin_x,other.origin_y) + 180;
        
        draw_vertex(tempx,tempy);
        draw_vertex(tempx + lengthdir_x(other.radius * 8,dir),tempy + lengthdir_y(other.radius * 8,dir));
    }
    
    var tempx, tempy, dir;
    tempx = x + cast_x[0] - other.x + other.origin_x;
    tempy = y + cast_y[0] - other.y + other.origin_y;
    dir = point_direction(tempx,tempy,other.origin_x,other.origin_y) + 180;
    
    draw_vertex(tempx,tempy);
    draw_vertex(tempx + lengthdir_x(other.radius * 8,dir),tempy + lengthdir_y(other.radius * 8,dir));
    
    draw_primitive_end();
}

surface_reset_target();
