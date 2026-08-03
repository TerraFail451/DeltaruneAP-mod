/// PATCH

/// REPLACE
            snd_play(snd_usefountain);
/// CODE
        {
            var _song = AP_get_random_song(snd_usefountain);
            snd_init(_song);
        }
/// END

/// BEFORE
    room_goto(room_flowershop_2f);
/// CODE
    AP_complete_chapter(5);
/// END
