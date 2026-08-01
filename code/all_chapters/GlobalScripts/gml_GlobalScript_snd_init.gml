/// IMPORT
function snd_init(arg0)
{
    if (global.AP_randomize_music > 0)
    {
        if (!variable_global_exists("unrandomized_current_song"))
            global.unrandomized_current_song = "nosong.ogg";
        if (!variable_global_exists("randomized_current_song"))
            global.randomized_current_song = "nosong.ogg";
        
        if (global.unrandomized_current_song != arg0)
        {
            var _ignored_songs = ["ch3_karaoke_no_guitar.ogg" || "ch3_karaoke_full.ogg" || "ch3-practice_song_noguit.ogg" || "ch3-practice_song_combined.ogg" || "tenna_battle.ogg" || "tenna_battle_guitar.ogg" || "ch3_tvtime.ogg" || "ch3_tvtime_guitar.ogg" || "board4_rhythm.ogg" || "rhythm_knockdown_no_guit.ogg" || "rhythm_knockdown_combined.ogg" || "4rd_sanctuary.ogg" || "4rd_sanctuary_noguit.ogg"];

            if (!array_contains(_ignored_songs, arg0));
                var _song = AP_get_random_song();
            else
                var _song = arg0;
            
            global.unrandomized_current_song = arg0;
            global.randomized_current_song = _song;
        }
        else
        {
            var _song = global.randomized_current_song;
        }
    }
    else
    {
        var _song = arg0;
    }

    if (!is_string(_song))
    {
        global.randomized_embedded_song = audio_play_sound(_song, 50, 1);

        if (_song == snd_songpreview_4rd)
        {
            snd_pitch(global.randomized_embedded_song, 0.5);
        }

        return "nosong.ogg";
    }

    if (variable_global_exists("randomized_embedded_song"))
            snd_stop(global.randomized_embedded_song);
    
    if (_song == "mus_undynescary.ogg")
        var dir = "chapter4_windows/";
    else
        var dir = "mus/";
    
    if (global.launcher)
    {
        if (_song == "mus_undynescary.ogg")
            dir = working_directory + "../chapter4_windows/";
        else
            dir = working_directory + "../mus/";
    }
    
    initsongvar = dir + _song;
    _mystream = audio_create_stream(initsongvar);
    _astream = instance_create(0, 0, obj_astream);
    _astream.mystream = _mystream;
#if CHAPTER_1
    _astream.songname = _song;
#endif
    return _mystream;
}
