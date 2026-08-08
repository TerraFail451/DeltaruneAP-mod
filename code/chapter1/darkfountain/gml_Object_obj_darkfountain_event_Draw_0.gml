/// PATCH

/// REPLACE
        audio_play_sound(snd_usefountain, 50, 0);
/// CODE
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
/// END

/// AFTER
    instance_create(0, 0, obj_persistentfadein);
/// CODE
    AP_complete_chapter(1);
/// END