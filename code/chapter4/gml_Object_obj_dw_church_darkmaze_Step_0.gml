/// PATCH

/// REPLACE
    global.currentsong[0] = snd_init("church_wip.ogg");
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
/// CODE
    instance_create(0, 0, obj_musicer_dw_church);
/// END