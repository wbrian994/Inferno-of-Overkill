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

draw_roundrect(xPos - 2,yPos - 2,xPos + Width + 2,yPos + Height + 2,false);
draw_set_color(color_lerp(c_red,c_lime,clamp(obj_Player.hp / obj_Player.max_hp,0,1)));
draw_roundrect(xPos,yPos,xPos + clamp(obj_Player.hp / obj_Player.max_hp,0,1) * Width,yPos + Height,false);
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
    yPos = yy + Height + 5;

    draw_set_color(c_black);

    draw_roundrect(xPos - 2,yPos - 2,xPos + Width + 2,yPos + Height + 2,false);
    draw_set_color(color_lerp(c_black,c_blue,clamp(obj_Player.in_vehicle.hp / obj_Player.in_vehicle.max_hp,0,1)));
    draw_roundrect(xPos,yPos,xPos + clamp(obj_Player.in_vehicle.hp / obj_Player.in_vehicle.max_hp,0,1) * Width,yPos + Height,false);
    if(clamp(obj_Player.in_vehicle.hp / obj_Player.in_vehicle.max_hp,0,1) == 0)
    {
        draw_set_halign(fa_center);
        draw_set_font(fnt_Main_Small);
        draw_text(xPos + Width / 2,yPos,"Vehicle Destroyed");
        draw_set_halign(fa_left);
    }
}
