/// PATCH

/// REPLACE
        audio_play_sound(snd_usefountain, 50, 0);
/// CODE
        var _song = AP_get_random_song(snd_usefountain);
        snd_init(_song);
/// END

/// AFTER
    instance_create(0, 0, obj_persistentfadein);
/// CODE
    AP_complete_chapter(1);
/// END