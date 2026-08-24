/// PATCH

/// REPLACE
    msgsetloc(0, "\\s0* You found the \\cG[Moss]\\cW^8! %%", "obj_npc_dumpster_slash_Step_0_gml_40_0");
/// CODE
    msgsetloc(0, string("\\s0* The \\cG[Moss]\\cW turned into {0}^8! %%", AP_get_location_reward_text(107)), "obj_npc_dumpster_slash_Step_0_gml_40_0");
    AP_sendLocation(107);
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