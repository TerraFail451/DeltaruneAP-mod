/// PATCH

/// REPLACE
        if (havecontroller)
        {
            con = 12;
/// CODE
        if (havecontroller)
        {
            con = 12;
            
            if (global.flag[1176] == 0)
                global.flag[1176] = 1;
/// END

/// REPLACE
        if (standalone == 2)
            snd_play(snd_nes_intro_extended);
        else
            snd_play(snd_nes_intro);
/// CODE
        var _song = snd_init(snd_nes_intro_extended);
        if (_song == -1)
        {
            if (standalone == 2)
                snd_play(snd_nes_intro_extended);
            else
                snd_play(snd_nes_intro);
        }
        else
        {
            var _intro_song = snd_loop(_song);
            with (obj_archipelago_music_tracker)
            {
                add_song("snd_nes_intro_extended", other._intro_song);
            }
        }
/// END

/// BEFORE
        snd_play(snd_nes_nocontroller);
/// CODE
        if (_song != -1)
        {
            with (obj_archipelago_music_tracker)
            {
                stop_song("snd_nes_intro_extended");
            }
        }
/// END