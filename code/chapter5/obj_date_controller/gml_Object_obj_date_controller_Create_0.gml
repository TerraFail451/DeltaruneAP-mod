/// PATCH

/// AFTER
questiondowntime = 20;
/// CODE
song1 = AP_get_random_song(snd_pink_stretch_2_troubled);
song2 = AP_get_random_song(snd_pink_stretch_2_fixed);
/// END

/// REPLACE
    snd_volume(snd_pink_stretch_2_fixed, 0, 90);
/// CODE
    snd_volume(song2, 0, 90);
/// END