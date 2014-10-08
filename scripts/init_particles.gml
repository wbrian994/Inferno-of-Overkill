/// init_particles()
//Paricle Systems
global.part_system_above = part_system_create();
part_system_depth(global.part_system_above,-100);
part_system_automatic_draw(global.part_system_above,true);
part_system_automatic_update(global.part_system_above,true);
global.part_system_below = part_system_create();
part_system_depth(global.part_system_below,100);
part_system_automatic_draw(global.part_system_below,true);
part_system_automatic_update(global.part_system_below,true);

//Particles
//spark particles
    global.part_spark = part_type_create();
    part_type_alpha3(global.part_spark,0.95,0.7,0.8);
    part_type_blend(global.part_spark,true);
    part_type_color_rgb(global.part_spark,200,255,0,60,0,20);
    part_type_shape(global.part_spark,pt_shape_line);
    part_type_orientation(global.part_spark,0,0,0,0,true);
    part_type_size(global.part_spark,0.1,0.5,-0.0001,0);
    part_type_speed(global.part_spark,15,20,-2,0);
    part_type_direction(global.part_spark,0,360,0,0);
    part_type_life(global.part_spark,0.25 * room_speed,0.5 * room_speed);
//dust particles
    global.part_dust = part_type_create();
    part_type_shape(global.part_dust,pt_shape_cloud);
    part_type_size(global.part_dust,0.5,1,0.02,0);
    part_type_color1(global.part_dust,c_gray);
    part_type_alpha2(global.part_dust,0.5,0);
    part_type_blend(global.part_dust,0);
    part_type_life(global.part_dust,30,100);
