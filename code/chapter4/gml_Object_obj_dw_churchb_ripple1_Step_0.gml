/// PATCH

/// REPLACE
    if (timer == 1)
        mus_play_ext("second_church.ogg", 1, 0.7, 1, 0);
/// CODE
    if (timer == 1)
    {
        global.currentsong[0] = snd_init("second_church.ogg", false);
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);

        if (global.AP_ost_shuffle && variable_struct_get(global.AP_ost_mapping, "second_church.ogg") != "second_church.ogg")
        {
            with (obj_doorAny)
                doorFadeMusic = 1;
        }
    }
/// END

/// BEFORE
        room_goto(room_dw_churchb_ripplepost);
/// CODE
        if (global.AP_ost_shuffle && variable_struct_get(global.AP_ost_mapping, "second_church.ogg") != "second_church.ogg")
            snd_free_all();
/// END