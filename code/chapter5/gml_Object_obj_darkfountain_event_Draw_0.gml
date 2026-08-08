/// PATCH

/// REPLACE
            snd_play(snd_usefountain);
/// CODE
        {
            var _song = snd_init(snd_usefountain);

            if (_song == -1)
            {
                snd_play(snd_usefountain);
            }
            else
            {
                var _fountain_song = snd_loop(_song);
            
                with (obj_archipelago_music_tracker)
                {
                    add_timer(snd_usefountain, other._fountain_song);
                }
            }
        }
/// END

/// BEFORE
    room_goto(room_flowershop_2f);
/// CODE
    AP_complete_chapter(5);
/// END
