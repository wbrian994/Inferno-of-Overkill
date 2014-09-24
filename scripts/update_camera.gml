//Camera Shake
if(global.shake_camera > 0)
{
    shake_screen(global.shake_camera_amount,true,true);
    global.shake_camera--;
}
else
{
    global.camera_offset[0] = 0;
    global.camera_offset[1] = 0;
}

//Camera Zoom
if(global.prev_zoom != global.camera_zoom)
{
    if(!global.fullscreen)
    {
        view_wview[0] = global.WXres * global.default_camera_zoom * global.camera_zoom;
        view_hview[0] = global.WYres * global.default_camera_zoom * global.camera_zoom;
        view_hborder[0] = (view_wport[0] / 2) - 10;
        view_vborder[0] = (view_hport[0] / 2) - 10;
    }
    else
    {
        view_wview[0] = global.FXres * global.default_camera_zoom * global.camera_zoom;
        view_hview[0] = global.FYres * global.default_camera_zoom * global.camera_zoom;
        view_hborder[0] = (view_wport[0] / 2) - 10;
        view_vborder[0] = (view_hport[0] / 2) - 10;
    }
    global.prev_zoom = global.camera_zoom;
}
