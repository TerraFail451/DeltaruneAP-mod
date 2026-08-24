/// IMPORT
function snd_init(arg0, arg1 = 0)
{
    var _string = "";
    var _song = "";
    var _undertale = ["mus_story.ogg", "mus_menu0.ogg", "mus_menu1.ogg", "mus_menu2.ogg", "mus_menu3.ogg", "mus_menu4.ogg", "mus_menu5.ogg", "mus_menu6.ogg", "mus_flowey.ogg", "mus_toriel.ogg", "mus_ruins.ogg", "mus_options_fall.ogg", "mus_prebattle1.ogg", "mus_tension.ogg", "mus_battle1.ogg", "mus_ghostbattle.ogg", "mus_gameover.ogg", "mus_house1.ogg", "mus_house2.ogg", "mus_boss1.ogg", "mus_papyrus.ogg", "mus_snowy.ogg", "mus_options_winter.ogg", "mus_dogsong.ogg", "mus_town.ogg", "mus_shop.ogg", "mus_papyrusboss.ogg", "mus_date.ogg", "mus_mysteriousroom2.ogg", "mus_undynetheme.ogg", "mus_waterfall.ogg", "mus_undynefast.ogg", "mus_waterquiet.ogg", "mus_musicbox.ogg", "mus_birdsong.ogg", "mus_dummybattle.ogg", "mus_napstahouse.ogg", "mus_temvillage.ogg", "mus_temshop.ogg", "mus_undynetruetheme.ogg", "mus_undyneboss.ogg", "mus_lab.ogg", "mus_mtgameshow.ogg", "mus_mettatonbattle.ogg", "mus_anothermedium.ogg", "mus_options_summer.ogg", "mus_battle2.ogg", "mus_hotel.ogg", "mus_hotel_battle.ogg", "mus_news.ogg", "mus_news_battle.ogg", "mus_spider.ogg", "mus_wrongworld.ogg", "mus_operatile.ogg", "mus_sansdate.ogg", "mus_core.ogg", "mus_mettaton_ex", "mus_mettsad.ogg", "mus_endarea_parta.ogg", "mus_endarea_partb.ogg", "mus_chokedup.ogg", "mus_bergentruckung.ogg", "mus_vsasgore.ogg", "mus_z_ending.ogg", "mus_undynepiano.ogg", "mus_hereweare.ogg", "mus_amalgam.ogg", "mus_fallendown2.ogg", "mus_dontgiveup.ogg", "mus_xpart.ogg", "mus_a2.ogg", "mus_xpart_2.ogg", "mus_xpart_a.ogg", "mus_xpart_b.ogg", "mus_reunited.ogg", "mus_leave.ogg", "mus_express_myself.ogg", "mus_x_undyne.ogg", "mus_mettaton_neo.ogg", "mus_zz_megalovania.ogg", "mus_piano.ogg", "mus_dance_of_dog.ogg", "mus_sigh_of_dog.ogg", "mus_kingdescription.ogg", "mus_star.ogg", "mus_ruinspiano.ogg", "mus_dogmeander.ogg", "mus_mystery.ogg", "mus_spoopy.ogg", "mus_spoopy_wave.ogg", "mus_spoopy_holiday.ogg", "mus_napstachords.ogg", "mus_oogloop.ogg", "mus_mettmusical1.ogg", "mus_mettmusical2.ogg", "mus_mettmusical3.ogg", "mus_mettmusical4.ogg", "mus_coretransition.ogg", "mus_mettafly.ogg", "mus_mettaton_pretransform.ogg", "mus_elevator_last.ogg", "mus_smallshock.ogg", "mus_barrier.ogg", "mus_yourbestfriend_3.ogg", "mus_f_intro.ogg", "mus_f_part1.ogg", "mus_f_part2.ogg", "mus_f_6s_1.ogg", "mus_f_6s_2.ogg", "mus_f_6s_3.ogg", "mus_f_6s_4.ogg", "mus_f_6s_5.ogg", "mus_f_6s_6.ogg", "mus_repeat_1.ogg", "mus_repeat_2.ogg", "mus_f_finale_1_l.ogg", "mus_f_finale_2.ogg", "mus_f_finale_3.ogg", "mus_xpart_back.ogg", "mus_cast_1.ogg", "mus_cast_2.ogg", "mus_cast_3.ogg", "mus_cast_4.ogg", "mus_cast_5.ogg", "mus_cast_6.ogg", "mus_cast_7.ogg", "mus_x_undyne_pre.ogg", "mus_snoresymphony.ogg", "mus_predummy.ogg", "mus_f_saved.ogg", "mus_woofenstein_loop.ogg", "mus_toomuch.ogg", "mus_st_him.ogg", "mus_f_alarm.ogg", "mus_zzz_c.ogg", "mus_zzz_c2.ogg", "mus_st_happytown.ogg", "mus_st_meatfactory.ogg", "mus_st_troubledingle.ogg", "mus_f_part3.ogg", "mus_f_finale_1.ogg", "abc_123_a.ogg", "mus_smile.ogg", "mus_wrongnumbersong.ogg"];

    if (typeof(arg0) == "string")
    {
        _string = arg0;
    }
    else
    {
        _string = audio_get_name(arg0);
    }

    var _string_parts = string_split(_string, ".");
        
    if (_string_parts[1] == "ogg")
    {
        _string = _string_parts[0] + "_ogg"
    }
    
#if CHAPTER_1
    if (!arg1 && variable_struct_exists(global.AP_randomized_music_struct, _string))
#elsif CHAPTER_2
    if (!arg1 && variable_struct_exists(global.AP_randomized_music_struct, _string) && !i_ex(obj_sweet_enemy))
#elsif CHAPTER_3
    if (!arg1 && variable_struct_exists(global.AP_randomized_music_struct, _string) && !i_ex(obj_rhythmgame) && !i_ex(obj_tenna_enemy))
#elsif CHAPTER_4
    if (!arg1 && variable_struct_exists(global.AP_randomized_music_struct, _string) && !i_ex(obj_rhythmgame) && !i_ex(obj_sound_of_justice_enemy))
#else
    if (!arg1 && variable_struct_exists(global.AP_randomized_music_struct, _string) && !i_ex(obj_rhythmgame))
#endif
    {
        _song = AP_get_random_song(_string);
    }
    else
    {
        _song = _string;
    }

    var _song_parts = string_split(_song, "_");
        
    if (_song_parts[array_length(_song_parts) - 1] == "ogg")
    {
        var _reconstruct = "";

        for (i = 0; i < array_length(_song_parts) - 1; i++)
        {
            _reconstruct += _song_parts[i];
        }

        _song = _reconstruct + ".ogg";

        if (file_exists("../Undertale/" + _song))
            var dir = "../Undertale/";
        else if (file_exists("mus/" + _song))
            var dir = "mus/";
        else
            var dir = "custom_mus/";
        
        if (variable_global_exists("launcher"))
        {
            if (global.launcher)
            {
                if (file_exists(working_directory + "../../Undertale/" + _song))
                    dir = working_directory + "../../Undertale/";
                else if (file_exists(working_directory + "../mus/" + _song))
                    dir = working_directory + "../mus/";
                else
                    var dir = working_directory + "../custom_mus/";
            }
        }

        initsongvar = dir + string(_song);
        _mystream = audio_create_stream(initsongvar);
        _astream = instance_create(0, 0, obj_astream);
        _astream.mystream = _mystream;
#if !CHAPTER_1
        _astream.songname = _song;
#endif
        return _mystream;
    }
    else
    {
        if (_song == _string)
        {
            return -1;
        }
        else
        {
            _song = asset_get_index(_song);
            return _song;
        }
    }
}

function sound_init(arg0)
{
    snd_init(arg0);
}

function AP_get_random_song(arg0)
{
    var _song = arg0;

    if (global.AP_randomize_music == 3)
    {
        randomise();
        var _index = irandom_range(0, (array_length(global.AP_included_music_array) - 1));
        _song = global.AP_included_music_array[_index];
    }
    else
    {
        _song = variable_struct_get(global.AP_randomized_music_struct, arg0);
    }

    return _song;
}

function scr_array_contains(array, value)
{
    for (var i = 0; i < array_length(array); i++)
    {
        if (array[i] == value)
            return true;
    }
    return false;
}
