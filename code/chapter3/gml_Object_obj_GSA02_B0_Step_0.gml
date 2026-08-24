/// PATCH

/// REPLACE
    snd_stop(snd_nes_intro_extended);
/// CODE
    with (obj_archipelago_music_tracker)
    {
        if (variable_struct_exists(songs, "snd_nes_intro_extended"))
        {
            stop_song("snd_nes_intro_extended");
        }
        else
        {
            snd_stop(snd_nes_intro_extended);
        }
    }
/// END

/// REPLACE
        mus = snd_loop(snd_nes_intro_extended_part2);
/// CODE
        var _song = snd_init("nes_intro_extended_part2.ogg");
        if (_song == -1)
        {
            mus = snd_loop(snd_nes_intro_extended_part2);
        }
        else
        {
            mus = snd_loop(_song);
            with (obj_archipelago_music_tracker)
            {
                add_song("snd_nes_intro_extended_part2", other.mus);
            }
        }
/// END

/// REPLACE
        snd_stop(mus);
/// CODE
        if (_song == -1)
        {
            snd_stop(mus);
        }
        else
        {
            with (obj_archipelago_music_tracker)
            {
                stop_song("snd_nes_intro_extended_part2");
            }
        }
/// END