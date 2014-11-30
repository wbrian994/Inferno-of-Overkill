/// light_init(radius,color,alpha)
radius = argument0;
color = argument1;
alpha = argument2;
shape = "POINT";
x_offset = 0;
y_offset = 0;
origin_x = radius;
origin_y = radius;

lightsurface = surface_create(radius * 2,radius * 2);
