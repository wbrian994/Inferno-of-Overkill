window_set_fullscreen(global.fullscreen);
if(!global.fullscreen)
{
    view_wview[0] = global.WXres * global.default_camera_zoom * global.camera_zoom;
    view_hview[0] = global.WYres * global.default_camera_zoom * global.camera_zoom;
    view_wport[0] = view_wview[0];
    view_hport[0] = view_hview[0];
    view_hborder[0] = (view_wport[0] / 2) - 10;
    view_vborder[0] = (view_hport[0] / 2) - 10;
    //window_set_size(global.WXres,global.WYres);
    surface_resize(application_surface, global.WXres, global.WYres);
}
else
{
    view_wview[0] = global.FXres * global.default_camera_zoom * global.camera_zoom;
    view_hview[0] = global.FYres * global.default_camera_zoom * global.camera_zoom;
    view_wport[0] = view_wview[0];
    view_hport[0] = view_hview[0];
    view_hborder[0] = (view_wport[0] / 2) - 10;
    view_vborder[0] = (view_hport[0] / 2) - 10;
    surface_resize(application_surface, global.FXres, global.FYres);
}
