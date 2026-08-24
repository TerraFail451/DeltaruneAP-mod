/// PATCH

/// REPLACE
    global.currentsong[0] = snd_songpreview_knockdown;
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.5);
/// CODE
    var _song = snd_init("boxing_boss_preview.ogg");

    if (_song == -1)
    {
        global.currentsong[0] = snd_songpreview_knockdown;
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.5);
    }
    else
    {
        global.currentsong[0] = _song;
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
        audio_sound_pitch(snd_songpreview_knockdown, 0.5)
    }
/// END

/// REPLACE
    global.currentsong[0] = snd_songpreview_knockdown;
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.6);
/// CODE
    var _song = snd_init("boxing_boss_preview.ogg");

    if (_song == -1)
    {
        global.currentsong[0] = snd_songpreview_knockdown;
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.6);
    }
    else
    {
        global.currentsong[0] = _song;
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
        audio_sound_pitch(snd_songpreview_knockdown, 0.6)
    }
/// END