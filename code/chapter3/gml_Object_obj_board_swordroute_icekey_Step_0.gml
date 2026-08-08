/// PATCH

/// REPLACE
        global.flag[1055] = 1;
        snd_play(snd_link_get_key);
/// CODE
        AP_sendLocation(182);
        global.customflags[global.custom_flags_indexes.SWORD_progression] = 1;
        var _song = snd_init(snd_link_get_key);

        if (_song == -1)
        {
            snd_play(snd_link_get_key);
        }
        else
        {
            var _ice_key_song = snd_loop(_song);

            with (obj_archipelago_music_tracker)
            {
                add_timer(snd_link_get_key, other._ice_key_song);
            }
        }
/// END

/// REPLACE
        msgsetloc(0, "YOU GOT THE \\cIICE KEY\\cW", "obj_board_swordroute_icekey_slash_Step_0_gml_59_0");
/// CODE
        global.flag[1055] = 1;
        msgsetloc(0, string("YOU GOT {0}", string_upper(AP_get_location_reward_text(182))), "obj_board_swordroute_icekey_slash_Step_0_gml_59_0");
/// END
