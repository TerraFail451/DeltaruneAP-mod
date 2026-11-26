/// IMPORT
border_change = false;
border_val = 0;

if (scr_flag_get(1628) == 1)
{
    global.facing = 0;
    global.interact = 0;
    instance_destroy(obj_dw_leave);
    scr_flag_set(1628, 0);
    scr_getchar(2);
    scr_getchar(3);
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
