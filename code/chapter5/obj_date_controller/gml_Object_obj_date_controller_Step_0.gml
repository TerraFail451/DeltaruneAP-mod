/// PATCH

/// REPLACE
                snd_loop(snd_pink_stretch_2_troubled);
                snd_volume(snd_pink_stretch_2_troubled, 0, 0);
                snd_volume(snd_pink_stretch_2_troubled, 1, 90);
/// CODE
                snd_init(song1);
                snd_volume(song1, 0, 0);
                snd_volume(song1, 1, 90);
/// END

/// REPLACE
                snd_volume(snd_pink_stretch_2_troubled, 0, 90);
                snd_loop(snd_pink_stretch_2_fixed);
                snd_volume(snd_pink_stretch_2_fixed, 0, 0);
                snd_volume(snd_pink_stretch_2_fixed, 1, 90);
/// CODE
                snd_volume(song1, 0, 90);
                snd_init(song2);
                snd_volume(song2, 0, 0);
                snd_volume(song2, 1, 90);
/// END