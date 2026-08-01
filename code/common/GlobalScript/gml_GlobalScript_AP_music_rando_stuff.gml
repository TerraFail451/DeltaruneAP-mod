/// FUNCTIONS
function AP_get_random_song()
{
    var _random = irandom_range(0, (array_length(global.AP_randomized_music_list) - 1));
    var _song = global.AP_randomized_music_list[_random];
    return _song;
}

function AP_get_randomized_music_list()
{
    var _song_array = [];
    var _included_chapters = [0, 0, 0, 0, 0];

    if (global.AP_randomize_music == 2)
    {
        _included_chapters = [1, 1, 1, 1, 1];
    }
    else if (global.AP_randomize_music) == 1
    {
        for (var i = 0; i < global.AP_max_chapter; i++)
        {
            if (global.AP_include_chapters[i] == 1)
                _included_chapters[i] = 1;
        }
    }
    
    // not finished sorting these into their arrays
    if (global.AP_include_chapters[0] == 1)
    {
        array_push(_song_array, "AUDIO_DRONE.ogg", "AUDIO_ANOTHERHIM.ogg", "mus_introcar.ogg", "mus_school.ogg", "s_neo.ogg", "creepydoor.ogg", "creepylandscape.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, , , );

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (global.AP_include_chapters[1] == 1)
    {
        array_push(_song_array, cyber_battle_backing_solo);

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, , , );

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (global.AP_include_chapters[2] == 1)
    {
        array_push(_song_array, "AUDIO_DRONE.ogg", , );

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, , , );

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (global.AP_include_chapters[3] == 1)
    {
        array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, "mus_undynescary.ogg", , );

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, "afterrain_inside.ogg", , );

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }
    if (global.AP_include_chapters[4] == 1)
    {
        array_push(_song_array, "4rd_sanctuary.ogg", "4rd_sanctuary_noguit.ogg");

        if (global.AP_include_unused_music == 1)
            array_push(_song_array, , , );

        if (global.AP_include_odd_music >= 1)
            array_push(_song_array, snd_pink_stretch_2_troubled, snd_pink_stretch_2_fixed, );

        if (global.AP_include_odd_music == 2)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
            array_push(_song_array, , , );

        if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
            array_push(_song_array, , , );
    }

    if (global.AP_include_unused_music == 1)
        array_push(_song_array, , , );

    if (global.AP_include_odd_music >= 1)
        array_push(_song_array, , , );
        
    if (global.AP_include_odd_music == 2)
        array_push(_song_array, , , );

    if (global.AP_include_unused_music == 1 && global.AP_include_odd_music >= 1)
        array_push(_song_array, , , );

    if (global.AP_include_unused_music == 1 && global.AP_include_odd_music == 2)
        array_push(_song_array, , , );

    var _songs = array_unique(_song_array);

    return _songs;
}
