/// IMPORT
var _songs_to_kill = variable_struct_get_names(songs);
alarm[0] = -1;
alarm[1] = -1;

for (i = array_length(_songs_to_kill) - 1; i >= 0; i--)
{
    stop_song(_songs_to_kill[i]);
}

for (i = array_length(timers) - 1; i >= 0; i--)
{
    killed_timer_index = i;
    killed_timer_asset = audio_sound_get_asset(timers[i]);
    stop_timer();
}

instance_create_depth(0, 0, -15000, obj_archipelago_music_tracker);
