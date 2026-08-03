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
        scr_fountain_levelup();
        room_goto(room_lw_computer_lab);
/// CODE
        scr_fountain_levelup();
        room_goto(room_lw_computer_lab);
        AP_complete_chapter(2);
/// END