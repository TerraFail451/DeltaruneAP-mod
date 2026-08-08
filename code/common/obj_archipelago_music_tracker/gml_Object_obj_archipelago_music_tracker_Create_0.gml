/// IMPORT
persistent = 1;
songs = {};
timers = [];
timer_struct = {};
killed_song = -4;
killed_timer_index = -4;
killed_timer_asset = -4;

add_song = function()
{
    var _songs = [];
    
    for (var i = 1; i < argument_count; i++)
        array_push(_songs, argument[i]);

    variable_struct_set(songs, argument[0], _songs);
}

add_timer = function()
{
    var _timed_songs = [];

    for (var i = 1; i < argument_count; i++)
        array_push(_timed_songs, argument[i]);

    array_push(timers, snd_play(argument[0], 0))
    variable_struct_set(timer_struct, argument[0], _timed_songs);
}

fade_out_song = function(arg0)
{
    alarm[0] = 14;
    killed_song = argument[0];
    var _songs = variable_struct_get(songs, killed_song);

    for (var i = 0; i < array_length(_songs); i++)
        mus_volume(_songs[i], 0, alarm[0]);
}

fade_out_timer = function()
{
    alarm[1] = 14;
    var _timed_songs = variable_struct_get(timer_struct, killed_timer_asset);

    for (var i = 0; i < array_length(_timed_songs); i++)
        mus_volume(_timed_songs[i], 0, alarm[1]);
}

stop_song = function(arg0 = -4)
{
    if (arg0 != -4)
    {
        killed_song = arg0;
    }

    var _songs = variable_struct_get(songs, killed_song);

    for (i = array_length(_songs) - 1; i >= 0; i--)
        audio_stop_sound(_songs[i]);
    
    variable_struct_remove(songs, killed_song);
    killed_song = -4;
}

stop_timer = function()
{
    var _timed_songs = variable_struct_get(timer_struct, killed_timer_asset);

    for (i = array_length(_timed_songs) - 1; i >= 0; i--)
        audio_stop_sound(_timed_songs[i]);

    array_delete(timers, killed_timer_index, 1);
    variable_struct_remove(timer_struct, killed_timer_asset);
    killed_timer_index = -4;
    killed_timer_asset = -4;
}

pause_song = function(arg0)
{
    var _songs = variable_struct_get(songs, arg0);

    for (i = array_length(_songs) - 1; i >= 0; i--)
        audio_pause_sound(_songs[i]);
}

pause_timer = function(arg0)
{
    var _songs = variable_struct_get(timer_struct, arg0);
    var _timer_index = scr_array_get_index(timers, arg0);
    audio_pause_sound(timers[_timer_index]);

    for (i = array_length(_songs) - 1; i >= 0; i--)
        audio_pause_sound(_songs[i]);
}

resume_song = function(arg0)
{
    var _songs = variable_struct_get(songs, arg0);

    for (i = array_length(_songs) - 1; i >= 0; i--)
        audio_resume_sound(_songs[i]);
}

resume_timer = function(arg0)
{
    var _songs = variable_struct_get(timer_struct, arg0);
    var _timer_index = scr_array_get_index(timers, arg0);
    audio_resume_sound(timers[_timer_index]);

    for (i = array_length(_songs) - 1; i >= 0; i--)
        audio_resume_sound(_songs[i]);
}
