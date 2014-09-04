if(!global.fullscreen)
{
    view_wview[0] = global.WXres / 1.5;
    view_hview[0] = global.WYres / 1.5;
    view_wport[0] = view_wview[0];
    view_hport[0] = view_hview[0];
    view_hborder[0] = (view_wport[0] / 2) - 10;
    view_vborder[0] = (view_hport[0] / 2) - 10;
}
else
{
    view_wview[0] = global.FXres / 1.5;
    view_hview[0] = global.FYres / 1.4;
    view_wport[0] = view_wview[0];
    view_hport[0] = view_hview[0];
    view_hborder[0] = (view_wport[0] / 2) - 10;
    view_vborder[0] = (view_hport[0] / 2) - 10;
}
