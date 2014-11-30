/// init_particles()
//Paricle Systems
global.part_system_above = part_system_create();
part_system_depth(global.part_system_above,-1000);
part_system_automatic_draw(global.part_system_above,true);
part_system_automatic_update(global.part_system_above,true);
global.part_system_below = part_system_create();
part_system_depth(global.part_system_below,1000);
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
//ember particles
    global.part_ember = part_type_create();
    part_type_alpha3(global.part_ember,0.75,0.5,0.6);
    part_type_blend(global.part_ember,true);
    part_type_color_rgb(global.part_ember,200,255,0,60,0,20);
    part_type_shape(global.part_ember,pt_shape_flare);
    part_type_orientation(global.part_ember,0,0,0,0,true);
    part_type_size(global.part_ember,0.1,0.2,-0.001,0);
    part_type_speed(global.part_ember,0.1,0.5,-0.01,0);
    part_type_direction(global.part_ember,0,360,(floor(random(8)) + 1) - 4,0);
    part_type_gravity(global.part_ember,0.01,270);
    part_type_life(global.part_ember,30,50);
//Fire Particles
    global.part_fire = part_type_create();
    part_type_sprite(global.part_fire,spr_fireParticles,0,0,1);
    part_type_size(global.part_fire,0.5,1,0.01,0);
    part_type_orientation(global.part_fire,0,360,0,1,0)
    part_type_color3(global.part_fire,c_orange,c_orange,c_red);
    part_type_alpha3(global.part_fire,0.25,1,0);
    part_type_blend(global.part_fire,true);
    part_type_direction(global.part_fire,85,95,0,0);
    part_type_speed(global.part_fire,1,2,0,0);
    part_type_life(global.part_fire,25,35);
