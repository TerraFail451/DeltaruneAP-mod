/// PATCH

/// REPLACE
            snd_play(snd_usefountain);
/// CODE
        {
            var _song = AP_get_random_song(snd_usefountain);
            snd_init(_song);
        }
/// END

/// AFTER
    snd_free_all();
    instance_create(0, 0, obj_persistentfadein);
    room_goto(room_lw_church_entrance);
/// CODE
    AP_sendLocation(208);
/// END