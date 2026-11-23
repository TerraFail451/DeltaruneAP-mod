/// PATCH

/// REPLACE
piano_song[0] = snd_init("kris_piano_lower.ogg");
piano_song[1] = audio_play_sound(piano_song[0], 90, 0);
/// CODE
fadeout = 0;
piano_song[0] = snd_init("kris_piano_lower.ogg", false);
piano_song[1] = audio_play_sound(piano_song[0], 90, 0);

if (global.AP_ost_shuffle)
{
    snd_volume(piano_song[1], 0, 0);
    piano_song[2] = snd_init("kris_piano_lower.ogg");
    piano_song[3] = audio_play_sound(piano_song[2], 90, 1);
}
/// END