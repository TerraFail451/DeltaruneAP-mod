/// IMPORT
if (border_change)
{
    border_val = clamp(border_val + 0.04, 0, 1);
    var _val = border_val;
    
    with (obj_border_controller)
        overlay_color = merge_color(c_white, c_black, _val);
    
    if (border_val >= 1)
        border_change = false;
}

if (con < 0)
    exit;

if (con == 0)
{
    con = 1;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    global.facing = 0;
    
    with (obj_mainchara)
        fun = 0;
    
    c_sel(kr);
    c_setxy(297, 150);
    c_sprite(spr_kris_dw_landed);
    c_addxy(0, -4);
    c_wait(30);
    c_var_instance(blackall, "visible", false);
    c_customfunc(function()
    {
        with (obj_border_controller)
        {
            set_border(border_dw_castletown, 1);
            show_border(1);
        }
    });
    c_wait(30);
    c_sel(kr);
    c_autowalk(0);
    c_imageindex(1);
    c_wait(6);
    c_facing("d");
    c_halt();
    c_addxy(0, 4);
    c_wait(6);
    c_actortokris();
    c_terminatekillactors();
}

if (con == 1 && !i_ex(obj_cutscene_master))
{
    con = -1;
    global.facing = 0;
    global.interact = 0;
}