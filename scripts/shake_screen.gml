/// shake_screen(amount,horizontal,vertical)

var amount = argument0;
var horizontal = argument1;
var vertical = argument2;

// Edit Out Either Of These To Allow For Just Horizontal Or Vertical
if(horizontal)
{
    global.camera_offset[0] += round(random(amount) - random(amount));
}
if(vertical)
{
    global.camera_offset[1] += round(random(amount) - random(amount));
}
