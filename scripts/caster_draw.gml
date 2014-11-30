if(global.draw_debug)
{
    draw_primitive_begin(pr_linestrip);
    
    draw_set_color(c_green);
    draw_set_alpha(1);
    
    for(i = 0; i < cast_points; i += 1)
    {
        draw_vertex(x+cast_x[i],y+cast_y[i]);
    }
    draw_vertex(x+cast_x[0],y+cast_y[0]);
    
    draw_primitive_end();
    
    for(i = 0; i < cast_points; i += 1)
    {
        draw_circle(x+cast_x[i],y+cast_y[i],4,true);
    }
}
