/// IMPORT
for (i = array_length(timers) - 1; i >= 0; i--)
{
    if (!snd_is_playing(timers[i]))
    {
        killed_timer_index = i;
        killed_timer_asset = audio_sound_get_asset(timers[i]);
        fade_out_timer();
    }
}
