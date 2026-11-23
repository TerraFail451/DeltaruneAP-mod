/// PATCH

/// AFTER
border_val = 0;
/// CODE
if (scr_flag_get(1628) == 1)
{
    global.facing = 0;
    global.interact = 0;
    instance_destroy(obj_dw_leave);
    scr_flag_set(1628, 0);
    scr_getchar(2);
    scr_getchar(3);
}
/// END

/// REPLACE
if (global.plot >= 243)
{
    if (global.flag[1658] == 1 && global.tempflag[58] == 1)
    {
        global.interact = 1;
        global.tempflag[58] = 0;
        con = 0;
/// CODE
if (global.plot >= 160)
{
    with (obj_border_controller)
    {
        set_border(border_dw_castletown, 1);
        show_border(0.04);
    }
    
    con = 5;
    border_change = true;
}

if (global.plot >= 243)
{
    if (global.flag[1658] == 1 && global.tempflag[58] == 1)
    {
        global.interact = 1;
        global.tempflag[58] = 0;
        con = 0;
        border_change = false;
/// END