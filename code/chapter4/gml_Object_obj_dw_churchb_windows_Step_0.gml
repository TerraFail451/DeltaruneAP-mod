/// PATCH

/// REPLACE
        if (global.plot >= 242)
/// CODE
        if (global.plot >= 244)
/// END

/// REPLACE
            snd_play(snd_moss_fanfare);
/// CODE
            var _song = snd_init(snd_moss_fanfare);
            if (_song == -1)
            {
                snd_play(snd_moss_fanfare);
            }
            else
            {
                var _moss_song = snd_loop(_song);
                with (obj_archipelago_music_tracker)
                {
                    add_timer(snd_moss_fanfare, other._moss_song);
                }
            }
/// END

/// REPLACE
            msgsetloc(0, "* (The moss was consumed with gusto!)/%", "obj_dw_churchb_windows_slash_Step_0_gml_120_0");
/// CODE
            AP_sendLocation(226);
            msgsetloc(0, string("* (The moss turned into a {0}!)/%", AP_get_location_reward_text(226)), "obj_dw_churchb_windows_slash_Step_0_gml_120_0");
/// END