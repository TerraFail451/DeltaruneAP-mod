/// PATCH

/// REPLACE
        mus_2_file_loop("field_of_hopes_insaneintherain_intro.ogg", "field_of_hopes_insaneintherain_loop.ogg", _volume, _pitch);
/// CODE
        global.currentsong[0] = snd_init("field_of_hopes_insaneintherain_loop.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], _volume, _pitch);
/// END
