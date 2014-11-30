var a = application_get_position();
var xx = a[0];
var yy = a[1];
var ww = a[2] - a[0];
var hh = a[3] - a[1];

var Width, Height, xPos, yPos;
Width = 500;
Height = 20;
xPos = xx + ww / 2 - Width / 2;
yPos = yy + 5;

draw_set_color(c_black);

var c1, c2, c3;
c1 = c_red;
c2 = c_green;
c3 = c_lime;
if(obj_Player.god_mode)
{
    c1 = c_red;
    c2 = make_color_rgb(153,101,21);
    c3 = make_color_rgb(255,215,0);
}

draw_roundrect(xPos - 2,yPos - 2,xPos + Width + 2,yPos + Height + 2,false);
draw_roundrect_colour(xPos,yPos,xPos + clamp(obj_Player.hp / obj_Player.max_hp,0,1) * Width,yPos + Height,color_lerp(c1,c2,clamp(obj_Player.hp / obj_Player.max_hp,0,1)),c3,false);
if(clamp(obj_Player.hp / obj_Player.max_hp,0,1) == 0)
{
    draw_set_halign(fa_center);
    draw_set_font(fnt_Main_Small);
    draw_text(xPos + Width / 2,yPos,"Dead");
    draw_set_halign(fa_left);
}

if(obj_Player.in_vehicle != noone)
{
    xPos = xx + ww / 2 - Width / 2;
    yPos = (yy + Height + 5) + 5;

    draw_set_color(c_black);

    draw_roundrect(xPos - 2,yPos - 2,xPos + Width + 2,yPos + Height + 2,false);
    draw_roundrect_colour(xPos,yPos,xPos + clamp(obj_Player.in_vehicle.hp / obj_Player.in_vehicle.max_hp,0,1) * Width,yPos + Height,color_lerp(c_red,c_aqua,clamp(obj_Player.in_vehicle.hp / obj_Player.in_vehicle.max_hp,0,1)),c_blue,false);
    if(clamp(obj_Player.in_vehicle.hp / obj_Player.in_vehicle.max_hp,0,1) == 0)
    {
        draw_set_halign(fa_center);
        draw_set_font(fnt_Main_Small);
        draw_text(xPos + Width / 2,yPos,"Vehicle Destroyed");
        draw_set_halign(fa_left);
    }
}
