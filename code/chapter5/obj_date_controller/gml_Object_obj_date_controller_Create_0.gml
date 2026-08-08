/// PATCH

/// AFTER
questiondowntime = 20;
/// CODE
troubled_song = -4;
fixed_song = -4;
random_song_1 = snd_init(snd_pink_stretch_2_troubled);
random_song_2 = snd_init(snd_pink_stretch_2_fixed);

if (random_song_1 == -1)
{
    troubled_song = snd_loop(snd_pink_stretch_2_troubled);
    audio_pause_sound(troubled_song);
}
else
{
    troubled_song = snd_loop(random_song_1);
    with (obj_archipelago_music_tracker)
    {
        add_song(snd_pink_stretch_2_troubled, other.troubled_song);
        pause_song(snd_pink_stretch_2_troubled);
    }
}

if (random_song_2 == -1)
{
    fixed_song = snd_loop(snd_pink_stretch_2_fixed);
    audio_pause_sound(troubled_song);
}
else
{
    fixed_song = snd_loop(random_song_2);
    with (obj_archipelago_music_tracker)
    {
        add_song(snd_pink_stretch_2_fixed, other.fixed_song);
        pause_song(snd_pink_stretch_2_fixed);
    }
}
/// END

/// REPLACE
    snd_volume(snd_pink_stretch_2_fixed, 0, 90);
/// CODE
    snd_volume(fixed_song, 0, 90);
/// END