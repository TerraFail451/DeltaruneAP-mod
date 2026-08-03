/// IMPORT
function snd_init(arg0)
{
    var _ignored = ["ch3_karaoke_no_guitar.ogg" || "ch3_karaoke_full.ogg" || "ch3-practice_song_noguit.ogg" || "ch3-practice_song_combined.ogg" || "tenna_battle.ogg" || "tenna_battle_guitar.ogg" || "ch3_tvtime.ogg" || "ch3_tvtime_guitar.ogg" || "board4_rhythm.ogg" || "rhythm_knockdown_no_guit.ogg" || "rhythm_knockdown_combined.ogg" || "statue_level1.ogg" || "statue_chord_basic.ogg" || "statue_level2.ogg" || "statue_level3.ogg" || "statue_level4.ogg" || "sound_battle_bg.ogg" || "statue2_level1.ogg" || "statue2_level2.ogg" || "statue2_level3.ogg" || "statue2_level4.ogg" || "statue2_level5.ogg" || "4rd_sanctuary.ogg" || "4rd_sanctuary_noguit.ogg"];
    var _undertale = [];

    if (global.AP_randomize_music > 0)
    {
        if (!variable_global_exists("unrandomized_current_song"))
            global.unrandomized_current_song = "nosong.ogg";
        if (!variable_global_exists("randomized_current_song"))
            global.randomized_current_song = "nosong.ogg";
        
        if (global.unrandomized_current_song != arg0)
        {
            if ((!array_contains(_ignored, arg0)) && (array_contains(global.AP_randomized_music_list, arg0)));
                var _song = AP_get_random_song(arg0);
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
        return "nosong.ogg";
    }

    if (variable_global_exists("randomized_embedded_song"))
        snd_stop(global.randomized_embedded_song);
    
    if (array_contains(_undertale, _song))
        var dir = "../Undertale/";
    else
        var dir = "mus/";
    
    if (global.launcher)
    {
        if (array_contains(_undertale, _song))
            dir = working_directory + "../../Undertale/";
        else
            dir = working_directory + "../mus/";
    }
    
    initsongvar = dir + _song;
    _mystream = audio_create_stream(initsongvar);
    _astream = instance_create(0, 0, obj_astream);
    _astream.mystream = _mystream;
#if !CHAPTER_1
    _astream.songname = _song;
#endif
    return _mystream;
}
