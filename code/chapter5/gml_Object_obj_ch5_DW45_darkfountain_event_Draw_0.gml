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
    room_goto(room_dw_post_fountain_close);
/// CODE
    AP_sendLocation(344);
/// END
