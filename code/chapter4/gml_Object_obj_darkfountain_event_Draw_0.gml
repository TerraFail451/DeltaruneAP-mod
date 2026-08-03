/// PATCH

/// REPLACE
            snd_play(snd_usefountain);
/// CODE
        {
            var _song = AP_get_random_song(snd_usefountain);
            snd_init(_song);
        }
/// END

/// REPLACE
    if (global.chapter == 4)
        room_goto(room_lw_church_main);
/// CODE
    if (global.chapter == 4)
    {
        room_goto(room_lw_church_main);
        AP_complete_chapter(4);
    }
/// END