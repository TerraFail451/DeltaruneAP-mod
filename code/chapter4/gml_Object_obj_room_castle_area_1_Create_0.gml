/// IMPORT
con = -1;
customcon = -1;
blackall = -4;
border_change = false;
border_val = 0;

if (scr_flag_get(1628) == 1)
{
    global.facing = 0;
    global.interact = 1;
    instance_destroy(obj_dw_leave);
    scr_flag_set(1628, 0);
    scr_getchar(2);
    scr_getchar(3);
    con = 0;
    blackall = scr_dark_marker(-10, -10, spr_pixel_white);
    blackall.image_xscale = 999;
    blackall.image_yscale = 999;
    blackall.depth = 100;
    blackall.image_blend = c_black;
    blackall.image_alpha = 1;
    blackall.visible = 1;
    
    with (obj_mainchara)
    {
        cutscene = 1;
        fun = 1;
        sprite_index = dsprite;
        x = 297;
        y = 150;
    }
}

if (global.plot >= 160)
{
    with (obj_border_controller)
    {
        set_border(border_dw_castletown, 1);
        show_border(0.04);
    }
    
    border_change = true;
}

if (!scr_havechar(3))
    scr_getchar(3);
