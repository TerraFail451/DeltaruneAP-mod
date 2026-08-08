/// IMPORT
function snd_free(arg0)
{
    if (instance_exists(obj_astream))
    {
        _xstream = arg0;
        obj_astream.bstream = _xstream;
        
        with (obj_astream)
        {
            if (bstream == mystream)
                instance_destroy();
        }
    }

    if (instance_exists(obj_archipelago_music_tracker))
    {
        _xsong = arg0;

        with (obj_archipelago_music_tracker)
        {
            for (i = array_length(timers) - 1; i >= 0; i--)
            {
                if (snd_is_playing(timers[i]))
                {
                    if (audio_sound_get_asset(timers[i]) == other._xsong)
                    {
                        if (alarm_get(1) > 0)
                            alarm_set(1, -1);

                        killed_timer_index = i;
                        killed_timer_asset = other._xsong;
                        audio_stop_sound(timers[killed_timer_index]);
                        stop_timer();
                    }
                }
            }

            if (variable_struct_exists(songs, other._xsong))
            {
                if (alarm_get(0) > 0)
                    alarm_set(0, -1);
                
                stop_song(other._xsong);
            }
        }
    }
}

function sound_free(arg0)
{
    snd_free(arg0);
}
